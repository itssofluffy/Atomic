/*
    AtomicSequentialCollection.swift

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

public protocol AtomicSequentialCollection: Sequence {
    associatedtype T

    var mutex: Mutex { get }
    var isEmpty: Bool { get }
    var count: Int { get }

    init() throws

    func push(_ element: T) throws
    func pop() throws -> T?
    func peek() throws -> T?
    func removeAll(keepingCapacity keep: Bool) throws
}

extension AtomicSequentialCollection {
    public var isEmpty: Bool {
        return (count == 0)
    }
}

// implementation of Sequence
extension AtomicSequentialCollection {
    public func makeIterator() -> AnyIterator<T> {
        let current = self

        return AnyIterator {
            return wrapper(do: {
                               try current.pop()
                           },
                           catch: { failure in
                               atomicErrorLogger(failure)
                           })!
        }
    }
}
