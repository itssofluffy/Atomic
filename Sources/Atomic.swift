/*
    Atomic.swift

    Copyright (c) 2017 Stephen Whittle  All rights reserved.

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"),
    to deal in the Software without restriction, including without limitation
    the rights to use, copy, modify, merge, publish, distribute, sublicense,
    and/or sell copies of the Software, and to permit persons to whom
    the Software is furnished to do so, subject to the following conditions:
    The above copyright notice and this permission notice shall be included
    in all copies or substantial portions of the Software.
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
    THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
    FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
    IN THE SOFTWARE.
*/

import ISFLibrary
import Mutex

public class Atomic<T> {
    fileprivate var _mutex: Mutex
    fileprivate var _value: T

    /// Returns an atomic object.
    public init(_ value: T) {
        self._mutex = wrapper(do: {
                                  try Mutex(type: .Recursive)
                              },
                              catch: { failure in
                                  atomicErrorLogger(failure)
                              })!
        self._value = value
    }
}

extension Atomic {
    public var value: T {
        get {
            return wrapper(do: {
                               return try self._mutex.lock {
                                   return self._value
                               }
                           },
                           catch: { failure in
                               mutexErrorLogger(failure)
                           })!
        }
        set {
            wrapper(do: {
                        try self._mutex.lock {
                            self._value = newValue
                        }
                    },
                    catch: { failure in
                        mutexErrorLogger(failure)
                    })
        }
    }

    /// Sets a value atomically using a closure.
    @discardableResult
    public func mutate(_ closure: @escaping (inout T) throws -> Void) throws -> T {
        try _mutex.lock {
            try closure(&self._value)
        }

        return _value
    }

    /// Swaps values atomically.
    @discardableResult
    public func swap(_ atomic: inout Atomic<T>) throws -> T {
        ISFLibrary.swap(&self.value, &atomic.value)

        return _value
    }
}

extension Atomic: CustomStringConvertible {
    public var description: String {
        return wrapper(do: {
                           return "\(self.value)"
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }
}
