/*
    AtomicTreeNode.swift

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
import Collections

public class AtomicTreeNode<T: Equatable> {
    public let mutex: Mutex
    private var _node: TreeNode<T>

    public init(value: T) throws {
        try self.mutex = Mutex(type: .Recursive)

        self._node = TreeNode(value: value)
    }

    public var value: T {
        return wrapper(do: {
                           return try self.mutex.lock {
                               return self._node.value
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public var parent: TreeNode<T>? {
        return wrapper(do: {
                           return try self.mutex.lock {
                               return self._node.parent
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public var children: Array<TreeNode<T>> {
        return wrapper(do: {
                           return try self.mutex.lock {
                               return self._node.children
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public var isRoot: Bool {
        return wrapper(do: {
                           return try self.mutex.lock {
                               return self._node.isRoot
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public var isLeaf: Bool {
        return wrapper(do: {
                           return try self.mutex.lock {
                               return self._node.isLeaf
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public var isNode: Bool {
        return wrapper(do: {
                           return try self.mutex.lock {
                               return self._node.isNode
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }

    public func addChild(node: TreeNode<T>) throws {
        try mutex.lock {
            self._node.addChild(node: node)
        }
    }

    public func search(for value: T) throws -> TreeNode<T>? {
        return try mutex.lock {
            return self._node.search(for: value)
        }
    }
}

extension AtomicTreeNode: CustomStringConvertible {
    public var description: String {
        return wrapper(do: {
                           return try self.mutex.lock {
                               var description = "\(self.value)"

                               if (!self.isLeaf) {
                                   description += ": (" + self.children.map { $0.description }.joined(separator: ", ") + ")"
                               }

                               return description
                           }
                       },
                       catch: { failure in
                           atomicErrorLogger(failure)
                       })!
    }
}
