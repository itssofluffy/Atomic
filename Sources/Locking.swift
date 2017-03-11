/*
    Locking.swift

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

// 'lock' atomic types.

@inline(__always)
internal func lock<T>(_ lhs: Atomic<T>, _ rhs: Atomic<T>) {
    wrapper(do: {
                try lhs.mutex.lock()

                if (lhs !== rhs) {
                    try rhs.mutex.lock()
                }
            },
            catch: { failure in
                atomicLogger(failure)
            })
}

@inline(__always)
internal func lock<T>(_ lhs: Atomic<T>) {
    wrapper(do: {
                try lhs.mutex.lock()
            },
            catch: { failure in
                atomicLogger(failure)
            })
}

// 'unlock' atomic types.

@inline(__always)
internal func unlock<T>(_ lhs: Atomic<T>, _ rhs: Atomic<T>) {
    wrapper(do: {
                try lhs.mutex.unlock()

                if (lhs !== rhs) {
                    try rhs.mutex.unlock()
                }
            },
            catch: { failure in
                atomicLogger(failure)
            })
}

@inline(__always)
internal func unlock<T>(_ lhs: Atomic<T>) {
    wrapper(do: {
                try lhs.mutex.unlock()
            },
            catch: { failure in
                atomicLogger(failure)
            })
}