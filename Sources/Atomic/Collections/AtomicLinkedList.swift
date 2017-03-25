/*
    AtomicLinkedList.swift

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

public final class AtomicLinkedList<T: Equatable>: AtomicLinkedListType {
    public let mutex: Mutex
    public typealias NodeType = Node<T>
    private var _linkedList = LinkedList<T>()

    public init() throws {
        try self.mutex = Mutex(type: .Recursive)
    }

    public convenience init<S: Sequence>(_ elements: S) throws where S.Iterator.Element == T {
        try self.init()

        self._linkedList = LinkedList(elements)
    }

    public convenience init(_ linkedList: LinkedList<T>) throws {
        try self.init()

        self._linkedList = linkedList
    }

    public var count: Int {
        return wrapper(do: {
                           try self.mutex.lock {
                               return self._linkedList.count
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public func append(value: T) throws {
        try mutex.lock {
            self._linkedList.append(value: value)
        }
    }

    public func nodeAt(index: Int) throws -> NodeType {
        return try mutex.lock {
            return try self._linkedList.nodeAt(index: index)
        }
    }

    public func valueAt(index: Int) throws -> T {
        return try mutex.lock {
            return try self._linkedList.valueAt(index: index)
        }
    }

    public func remove(node: NodeType) throws {
        try mutex.lock {
            try self._linkedList.remove(node: node)
        }
    }

    public func remove(atIndex index: Int) throws {
        try mutex.lock {
            try self._linkedList.remove(atIndex: index)
        }
    }

    public func copy() throws -> AtomicLinkedList<T> {
        return try mutex.lock {
            return try AtomicLinkedList(self._linkedList.copy())
        }
    }
}
