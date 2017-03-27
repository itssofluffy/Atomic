/*
    AtomicStack.swift

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

/*
    Last-in first-out atomic stack (LIFO)

    push() and pop() are O(1) operations.
*/

import ISFLibrary
import Collections
import Mutex

public class AtomicStack<T>: AtomicSequentialCollection {
    public let mutex: Mutex
    private var _stack = Stack<T>()

    public required init() throws {
        try self.mutex = Mutex(type: .Recursive)
    }

    public var count: Int {
        return wrapper(do: {
                           try self.mutex.lock {
                               return self._stack.count
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public func push(_ element: T) throws {
        try mutex.lock {
            self._stack.push(element)
        }
    }

    public func pop() throws -> T? {
        return try mutex.lock {
            return self._stack.pop()
        }
    }

    public func peek() throws -> T? {
        return try mutex.lock {
            return self._stack.peek()
        }
    }

    public func removeAll(keepingCapacity keep: Bool = false) throws {
        try mutex.lock {
            self._stack.removeAll(keepingCapacity:keep)
        }
    }
}
