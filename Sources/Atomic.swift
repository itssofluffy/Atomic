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
    internal var mutex: Mutex
    internal var value: T

    /// Returns an atomic object.
    public init(_ value: T) {
        self.mutex = wrapper(do: {
                                 try Mutex()
                             },
                             catch: { failure in
                                 atomicLogger(failure)
                             })!
        self.value = value
    }
}

extension Atomic {
    /// Loads the value atomically.
    public func load() throws -> T {
        return try mutex.lock {
            return self.value
        }!
    }

    /// Stores a value atomically.
    public func store(value: T) throws {
        try mutex.lock {
            self.value = value
        }
    }

    /// Swaps values atomically.
    public func swap(atomic: Atomic<T>) throws {
        try atomic.mutex.lock {
            try self.mutex.lock {
                let temp = self.value

                self.value = atomic.value
                atomic.value = temp
            }
        }
    }
}

extension Atomic: CustomStringConvertible {
    public var description: String {
        return wrapper(do: {
                           return try self.mutex.lock {
                               return "\(self.value)"
                           }
                       },
                       catch: { failure in
                           atomicLogger(failure)
                       })!
    }
}

extension Atomic {
    public static func &&(lhs: Atomic<Bool>, rhs: Atomic<Bool>) -> Bool {
        lock(lhs, rhs)
        let result = (lhs.value && rhs.value)
        unlock(lhs, rhs)

        return result
    }

    public static func ||(lhs: Atomic<Bool>, rhs: Atomic<Bool>) -> Bool {
        lock(lhs, rhs)
        let result = (lhs.value || rhs.value)
        unlock(lhs, rhs)

        return result
    }
}
