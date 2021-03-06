/*
    XCTestManifests.swift

    Copyright (c) 2017, 2018 Stephen Whittle  All rights reserved.

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

import XCTest

@testable import Atomic

#if os(Linux)
public let allTests = [
    testCase(IntTests.allTests),
    testCase(Int8Tests.allTests),
    testCase(Int16Tests.allTests),
    testCase(Int32Tests.allTests),
    testCase(Int64Tests.allTests),
    testCase(UIntTests.allTests),
    testCase(UInt8Tests.allTests),
    testCase(UInt16Tests.allTests),
    testCase(UInt32Tests.allTests),
    testCase(UInt64Tests.allTests),
    testCase(DoubleTests.allTests),
    testCase(FloatTests.allTests),
    testCase(Float80Tests.allTests),
    testCase(StringTests.allTests),
    testCase(BoolTests.allTests),
    testCase(AtomicTypeTests.allTests)
]
#endif
