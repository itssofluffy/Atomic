/*
    AtomicTests.swift

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

import XCTest

@testable import Atomic

// Atomic tests for 'Int'
class IntTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicInt() {
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with +")
            XCTAssert(atomic1 == type, "AtomicInt Int with +")
            XCTAssert(type == atomic1, "Int AtomicInt with +")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicInt Int with +")
            XCTAssert(type == atomic, "Int AtomicInt with +")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with -")
            XCTAssert(atomic1 == type, "AtomicInt Int with -")
            XCTAssert(type == atomic1, "Int AtomicInt with -")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicInt Int with -")
            XCTAssert(type == atomic, "Int AtomicInt with -")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with *")
            XCTAssert(atomic1 == type, "AtomicInt Int with *")
            XCTAssert(type == atomic1, "Int AtomicInt with *")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicInt Int with *")
            XCTAssert(type == atomic, "Int AtomicInt with *")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with /")
            XCTAssert(atomic1 == type, "AtomicInt Int with /")
            XCTAssert(type == atomic1, "Int AtomicInt with /")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicInt Int with /")
            XCTAssert(type == atomic, "Int AtomicInt with /")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with %")
            XCTAssert(atomic1 == type, "AtomicInt Int with %")
            XCTAssert(type == atomic1, "Int AtomicInt with %")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicInt Int with %")
            XCTAssert(type == atomic, "Int AtomicInt with %")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with <<")
            XCTAssert(atomic1 == type, "AtomicInt Int with <<")
            XCTAssert(type == atomic1, "Int AtomicInt with <<")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicInt Int with <<")
            XCTAssert(type == atomic, "Int AtomicInt with <<")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with >>")
            XCTAssert(atomic1 == type, "AtomicInt Int with >>")
            XCTAssert(type == atomic1, "Int AtomicInt with >>")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicInt Int with >>")
            XCTAssert(type == atomic, "Int AtomicInt with >>")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with ^")
            XCTAssert(atomic1 == type, "AtomicInt Int with ^")
            XCTAssert(type == atomic1, "Int AtomicInt with ^")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicInt Int with ^")
            XCTAssert(type == atomic, "Int AtomicInt with ^")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with |")
            XCTAssert(atomic1 == type, "AtomicInt Int with |")
            XCTAssert(type == atomic1, "Int AtomicInt with |")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicInt Int with |")
            XCTAssert(type == atomic, "Int AtomicInt with |")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicInt Int with &")
            XCTAssert(type == atomic1, "Int AtomicInt with &")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicInt Int with &")
            XCTAssert(type == atomic, "Int AtomicInt with &")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with &+")
            XCTAssert(atomic1 == type, "AtomicInt Int with &+")
            XCTAssert(type == atomic1, "Int AtomicInt with &+")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicInt Int with &+")
            XCTAssert(type == atomic, "Int AtomicInt with &+")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with &-")
            XCTAssert(atomic1 == type, "AtomicInt Int with &-")
            XCTAssert(type == atomic1, "Int AtomicInt with &-")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicInt Int with &-")
            XCTAssert(type == atomic, "Int AtomicInt with &-")
        }
        do {
            var atomic1 = AtomicInt(42)
            let atomic2 = AtomicInt(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicInt AtomicInt with &*")
            XCTAssert(atomic1 == type, "AtomicInt Int with &*")
            XCTAssert(type == atomic1, "Int AtomicInt with &*")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicInt Int with &*")
            XCTAssert(type == atomic, "Int AtomicInt with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with +=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicInt Int with +=")
            XCTAssert(type == atomic, "Int AtomicInt with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with -=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicInt Int with -=")
            XCTAssert(type == atomic, "Int AtomicInt with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with *=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicInt Int with *=")
            XCTAssert(type == atomic, "Int AtomicInt with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with /=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicInt Int with /=")
            XCTAssert(type == atomic, "Int AtomicInt with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with %=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicInt Int with %=")
            XCTAssert(type == atomic, "Int AtomicInt with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with <<=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicInt Int with <<=")
            XCTAssert(type == atomic, "Int AtomicInt with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with >>=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicInt Int with >>=")
            XCTAssert(type == atomic, "Int AtomicInt with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with ^=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicInt Int with ^=")
            XCTAssert(type == atomic, "Int AtomicInt with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with |=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicInt Int with |=")
            XCTAssert(type == atomic, "Int AtomicInt with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with &=")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicInt Int with &=")
            XCTAssert(type == atomic, "Int AtomicInt with &=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with +")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicInt Int with +")
            XCTAssert(type == atomic, "Int AtomicInt with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with -")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicInt Int with -")
            XCTAssert(type == atomic, "Int AtomicInt with -")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt(42), AtomicInt(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt AtomicInt with ~")
        }
        do {
            var (atomic, type) = (AtomicInt(42), Int(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AtomicInt Int with ~")
            XCTAssert(type == atomic, "Int AtomicInt with ~")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicInt", testAtomicInt)
    ]
#endif
}

// Atomic tests for 'Int8'
class Int8Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicInt8() {
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with +")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with +")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with +")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with +")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with +")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with -")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with -")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with -")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with -")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with -")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with *")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with *")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with *")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with *")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with *")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with /")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with /")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with /")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with /")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with /")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with %")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with %")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with %")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with %")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with %")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with <<")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with <<")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with <<")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with <<")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with <<")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with >>")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with >>")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with >>")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with >>")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with >>")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with ^")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with ^")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with ^")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with ^")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with ^")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with |")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with |")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with |")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with |")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with |")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with &")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with &")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with &")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with &")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with &+")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with &+")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with &+")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with &+")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with &+")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with &-")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with &-")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with &-")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with &-")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with &-")
        }
        do {
            var atomic1 = AtomicInt8(42)
            let atomic2 = AtomicInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicInt8 AtomicInt8 with &*")
            XCTAssert(atomic1 == type, "AtomicInt8 Int8 with &*")
            XCTAssert(type == atomic1, "Int8 AtomicInt8 with &*")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with &*")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with +=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with +=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with -=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with -=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with *=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with *=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with /=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with /=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with %=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with %=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with <<=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with <<=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with >>=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with >>=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with ^=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with ^=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with |=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with |=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with &=")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicInt8 Int8 with &=")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with &=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with +")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicInt8 Int8 with +")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with -")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicInt8 Int8 with -")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with -")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt8(42), AtomicInt8(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt8 AtomicInt8 with ~")
        }
        do {
            var (atomic, type) = (AtomicInt8(42), Int8(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AtomicInt8 Int8 with ~")
            XCTAssert(type == atomic, "Int8 AtomicInt8 with ~")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicInt8", testAtomicInt8)
    ]
#endif
}

// Atomic tests for 'Int16'
class Int16Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicInt16() {
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with +")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with +")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with +")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with +")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with +")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with -")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with -")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with -")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with -")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with -")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with *")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with *")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with *")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with *")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with *")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with /")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with /")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with /")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with /")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with /")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with %")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with %")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with %")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with %")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with %")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with <<")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with <<")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with <<")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with <<")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with <<")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with >>")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with >>")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with >>")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with >>")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with >>")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with ^")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with ^")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with ^")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with ^")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with ^")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with |")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with |")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with |")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with |")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with |")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with &")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with &")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with &")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with &")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with &+")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with &+")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with &+")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with &+")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with &+")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with &-")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with &-")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with &-")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with &-")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with &-")
        }
        do {
            var atomic1 = AtomicInt16(42)
            let atomic2 = AtomicInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicInt16 AtomicInt16 with &*")
            XCTAssert(atomic1 == type, "AtomicInt16 Int16 with &*")
            XCTAssert(type == atomic1, "Int16 AtomicInt16 with &*")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with &*")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with +=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with +=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with -=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with -=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with *=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with *=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with /=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with /=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with %=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with %=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with <<=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with <<=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with >>=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with >>=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with ^=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with ^=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with |=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with |=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with &=")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicInt16 Int16 with &=")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with &=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with +")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicInt16 Int16 with +")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with -")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicInt16 Int16 with -")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with -")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt16(42), AtomicInt16(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt16 AtomicInt16 with ~")
        }
        do {
            var (atomic, type) = (AtomicInt16(42), Int16(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AtomicInt16 Int16 with ~")
            XCTAssert(type == atomic, "Int16 AtomicInt16 with ~")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicInt16", testAtomicInt16)
    ]
#endif
}

// Atomic tests for 'Int32'
class Int32Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicInt32() {
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with +")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with +")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with +")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with +")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with +")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with -")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with -")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with -")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with -")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with -")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with *")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with *")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with *")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with *")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with *")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with /")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with /")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with /")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with /")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with /")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with %")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with %")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with %")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with %")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with %")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with <<")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with <<")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with <<")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with <<")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with <<")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with >>")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with >>")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with >>")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with >>")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with >>")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with ^")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with ^")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with ^")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with ^")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with ^")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with |")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with |")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with |")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with |")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with |")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with &")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with &")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with &")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with &")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with &+")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with &+")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with &+")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with &+")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with &+")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with &-")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with &-")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with &-")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with &-")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with &-")
        }
        do {
            var atomic1 = AtomicInt32(42)
            let atomic2 = AtomicInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicInt32 AtomicInt32 with &*")
            XCTAssert(atomic1 == type, "AtomicInt32 Int32 with &*")
            XCTAssert(type == atomic1, "Int32 AtomicInt32 with &*")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with &*")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with +=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with +=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with -=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with -=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with *=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with *=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with /=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with /=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with %=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with %=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with <<=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with <<=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with >>=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with >>=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with ^=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with ^=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with |=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with |=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with &=")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicInt32 Int32 with &=")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with &=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with +")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicInt32 Int32 with +")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with -")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicInt32 Int32 with -")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with -")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt32(42), AtomicInt32(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt32 AtomicInt32 with ~")
        }
        do {
            var (atomic, type) = (AtomicInt32(42), Int32(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AtomicInt32 Int32 with ~")
            XCTAssert(type == atomic, "Int32 AtomicInt32 with ~")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicInt32", testAtomicInt32)
    ]
#endif
}

// Atomic tests for 'Int64'
class Int64Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicInt64() {
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with +")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with +")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with +")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with +")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with +")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with -")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with -")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with -")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with -")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with -")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with *")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with *")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with *")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with *")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with *")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with /")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with /")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with /")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with /")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with /")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with %")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with %")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with %")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with %")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with %")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with <<")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with <<")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with <<")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with <<")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with <<")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with >>")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with >>")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with >>")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with >>")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with >>")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with ^")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with ^")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with ^")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with ^")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with ^")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with |")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with |")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with |")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with |")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with |")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with &")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with &")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with &")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with &")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with &+")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with &+")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with &+")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with &+")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with &+")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with &-")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with &-")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with &-")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with &-")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with &-")
        }
        do {
            var atomic1 = AtomicInt64(42)
            let atomic2 = AtomicInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicInt64 AtomicInt64 with &*")
            XCTAssert(atomic1 == type, "AtomicInt64 Int64 with &*")
            XCTAssert(type == atomic1, "Int64 AtomicInt64 with &*")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with &*")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with +=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with +=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with -=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with -=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with *=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with *=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with /=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with /=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with %=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with %=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with <<=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with <<=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with >>=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with >>=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with ^=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with ^=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with |=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with |=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with &=")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicInt64 Int64 with &=")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with &=")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with +")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicInt64 Int64 with +")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with -")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicInt64 Int64 with -")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with -")
        }
        do {
            var (atomic1, atomic2) = (AtomicInt64(42), AtomicInt64(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AtomicInt64 AtomicInt64 with ~")
        }
        do {
            var (atomic, type) = (AtomicInt64(42), Int64(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AtomicInt64 Int64 with ~")
            XCTAssert(type == atomic, "Int64 AtomicInt64 with ~")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicInt64", testAtomicInt64)
    ]
#endif
}

// Atomic tests for 'UInt'
class UIntTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicUInt() {
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with +")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with +")
            XCTAssert(type == atomic1, "UInt AtomicUInt with +")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicUInt UInt with +")
            XCTAssert(type == atomic, "UInt AtomicUInt with +")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with -")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with -")
            XCTAssert(type == atomic1, "UInt AtomicUInt with -")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicUInt UInt with -")
            XCTAssert(type == atomic, "UInt AtomicUInt with -")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with *")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with *")
            XCTAssert(type == atomic1, "UInt AtomicUInt with *")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicUInt UInt with *")
            XCTAssert(type == atomic, "UInt AtomicUInt with *")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with /")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with /")
            XCTAssert(type == atomic1, "UInt AtomicUInt with /")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicUInt UInt with /")
            XCTAssert(type == atomic, "UInt AtomicUInt with /")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with %")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with %")
            XCTAssert(type == atomic1, "UInt AtomicUInt with %")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicUInt UInt with %")
            XCTAssert(type == atomic, "UInt AtomicUInt with %")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with <<")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with <<")
            XCTAssert(type == atomic1, "UInt AtomicUInt with <<")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicUInt UInt with <<")
            XCTAssert(type == atomic, "UInt AtomicUInt with <<")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with >>")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with >>")
            XCTAssert(type == atomic1, "UInt AtomicUInt with >>")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicUInt UInt with >>")
            XCTAssert(type == atomic, "UInt AtomicUInt with >>")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with ^")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with ^")
            XCTAssert(type == atomic1, "UInt AtomicUInt with ^")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicUInt UInt with ^")
            XCTAssert(type == atomic, "UInt AtomicUInt with ^")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with |")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with |")
            XCTAssert(type == atomic1, "UInt AtomicUInt with |")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicUInt UInt with |")
            XCTAssert(type == atomic, "UInt AtomicUInt with |")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicUInt UInt with &")
            XCTAssert(type == atomic1, "UInt AtomicUInt with &")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicUInt UInt with &")
            XCTAssert(type == atomic, "UInt AtomicUInt with &")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with &+")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with &+")
            XCTAssert(type == atomic1, "UInt AtomicUInt with &+")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicUInt UInt with &+")
            XCTAssert(type == atomic, "UInt AtomicUInt with &+")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with &-")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with &-")
            XCTAssert(type == atomic1, "UInt AtomicUInt with &-")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicUInt UInt with &-")
            XCTAssert(type == atomic, "UInt AtomicUInt with &-")
        }
        do {
            var atomic1 = AtomicUInt(42)
            let atomic2 = AtomicUInt(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt AtomicUInt with &*")
            XCTAssert(atomic1 == type, "AtomicUInt UInt with &*")
            XCTAssert(type == atomic1, "UInt AtomicUInt with &*")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicUInt UInt with &*")
            XCTAssert(type == atomic, "UInt AtomicUInt with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with +=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicUInt UInt with +=")
            XCTAssert(type == atomic, "UInt AtomicUInt with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with -=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with -=")
            XCTAssert(type == atomic, "UInt AtomicUInt with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with *=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with *=")
            XCTAssert(type == atomic, "UInt AtomicUInt with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with /=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with /=")
            XCTAssert(type == atomic, "UInt AtomicUInt with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with %=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with %=")
            XCTAssert(type == atomic, "UInt AtomicUInt with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with <<=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with <<=")
            XCTAssert(type == atomic, "UInt AtomicUInt with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with >>=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with >>=")
            XCTAssert(type == atomic, "UInt AtomicUInt with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with ^=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with ^=")
            XCTAssert(type == atomic, "UInt AtomicUInt with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with |=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with |=")
            XCTAssert(type == atomic, "UInt AtomicUInt with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt(42), AtomicUInt(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt AtomicUInt with &=")
        }
        do {
            var (atomic, type) = (AtomicUInt(42), UInt(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicUInt UInt with &=")
            XCTAssert(type == atomic, "UInt AtomicUInt with &=")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicUInt", testAtomicUInt)
    ]
#endif
}

// Atomic tests for 'UInt8'
class UInt8Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicUInt8() {
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with +")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with +")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with +")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with +")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with +")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with -")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with -")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with -")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with -")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with -")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with *")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with *")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with *")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with *")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with *")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with /")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with /")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with /")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with /")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with /")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with %")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with %")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with %")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with %")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with %")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with <<")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with <<")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with <<")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with <<")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with <<")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with >>")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with >>")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with >>")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with >>")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with >>")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with ^")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with ^")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with ^")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with ^")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with ^")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with |")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with |")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with |")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with |")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with |")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with &")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with &")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with &")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with &")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with &+")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with &+")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with &+")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with &+")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with &+")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with &-")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with &-")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with &-")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with &-")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with &-")
        }
        do {
            var atomic1 = AtomicUInt8(42)
            let atomic2 = AtomicUInt8(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt8 AtomicUInt8 with &*")
            XCTAssert(atomic1 == type, "AtomicUInt8 UInt8 with &*")
            XCTAssert(type == atomic1, "UInt8 AtomicUInt8 with &*")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with &*")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with +=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with +=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with -=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with -=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with *=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with *=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with /=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with /=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with %=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with %=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with <<=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with <<=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with >>=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with >>=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with ^=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with ^=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with |=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with |=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt8(42), AtomicUInt8(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt8 AtomicUInt8 with &=")
        }
        do {
            var (atomic, type) = (AtomicUInt8(42), UInt8(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicUInt8 UInt8 with &=")
            XCTAssert(type == atomic, "UInt8 AtomicUInt8 with &=")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicUInt8", testAtomicUInt8)
    ]
#endif
}

// Atomic tests for 'UInt16'
class UInt16Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicUInt16() {
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with +")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with +")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with +")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with +")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with +")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with -")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with -")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with -")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with -")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with -")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with *")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with *")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with *")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with *")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with *")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with /")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with /")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with /")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with /")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with /")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with %")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with %")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with %")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with %")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with %")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with <<")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with <<")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with <<")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with <<")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with <<")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with >>")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with >>")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with >>")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with >>")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with >>")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with ^")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with ^")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with ^")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with ^")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with ^")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with |")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with |")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with |")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with |")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with |")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with &")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with &")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with &")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with &")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with &+")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with &+")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with &+")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with &+")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with &+")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with &-")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with &-")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with &-")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with &-")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with &-")
        }
        do {
            var atomic1 = AtomicUInt16(42)
            let atomic2 = AtomicUInt16(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt16 AtomicUInt16 with &*")
            XCTAssert(atomic1 == type, "AtomicUInt16 UInt16 with &*")
            XCTAssert(type == atomic1, "UInt16 AtomicUInt16 with &*")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with &*")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with +=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with +=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with -=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with -=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with *=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with *=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with /=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with /=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with %=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with %=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with <<=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with <<=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with >>=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with >>=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with ^=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with ^=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with |=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with |=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt16(42), AtomicUInt16(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt16 AtomicUInt16 with &=")
        }
        do {
            var (atomic, type) = (AtomicUInt16(42), UInt16(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicUInt16 UInt16 with &=")
            XCTAssert(type == atomic, "UInt16 AtomicUInt16 with &=")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicUInt16", testAtomicUInt16)
    ]
#endif
}

// Atomic tests for 'UInt32'
class UInt32Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicUInt32() {
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with +")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with +")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with +")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with +")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with +")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with -")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with -")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with -")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with -")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with -")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with *")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with *")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with *")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with *")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with *")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with /")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with /")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with /")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with /")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with /")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with %")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with %")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with %")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with %")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with %")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with <<")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with <<")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with <<")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with <<")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with <<")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with >>")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with >>")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with >>")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with >>")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with >>")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with ^")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with ^")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with ^")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with ^")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with ^")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with |")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with |")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with |")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with |")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with |")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with &")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with &")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with &")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with &")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with &+")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with &+")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with &+")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with &+")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with &+")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with &-")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with &-")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with &-")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with &-")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with &-")
        }
        do {
            var atomic1 = AtomicUInt32(42)
            let atomic2 = AtomicUInt32(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt32 AtomicUInt32 with &*")
            XCTAssert(atomic1 == type, "AtomicUInt32 UInt32 with &*")
            XCTAssert(type == atomic1, "UInt32 AtomicUInt32 with &*")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with &*")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with +=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with +=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with -=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with -=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with *=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with *=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with /=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with /=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with %=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with %=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with <<=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with <<=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with >>=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with >>=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with ^=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with ^=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with |=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with |=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt32(42), AtomicUInt32(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt32 AtomicUInt32 with &=")
        }
        do {
            var (atomic, type) = (AtomicUInt32(42), UInt32(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicUInt32 UInt32 with &=")
            XCTAssert(type == atomic, "UInt32 AtomicUInt32 with &=")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicUInt32", testAtomicUInt32)
    ]
#endif
}

// Atomic tests for 'UInt64'
class UInt64Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicUInt64() {
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with +")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with +")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with +")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with +")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with +")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with -")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with -")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with -")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with -")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with -")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with *")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with *")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with *")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with *")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with *")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with /")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with /")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with /")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with /")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with /")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 % atomic2
            type = type % 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with %")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with %")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with %")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with %")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with %")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 << atomic2
            type = type << 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with <<")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with <<")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with <<")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with <<")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with <<")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 >> atomic2
            type = type >> 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with >>")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with >>")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with >>")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with >>")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with >>")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 ^ atomic2
            type = type ^ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with ^")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with ^")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with ^")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with ^")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with ^")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 | atomic2
            type = type | 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with |")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with |")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with |")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with |")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with |")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 & atomic2
            type = type & 2

            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with &")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with &")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with &")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with &")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 &+ atomic2
            type = type &+ 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with &+")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with &+")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with &+")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with &+")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with &+")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 &- atomic2
            type = type &- 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with &-")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with &-")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with &-")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with &-")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with &-")
        }
        do {
            var atomic1 = AtomicUInt64(42)
            let atomic2 = AtomicUInt64(2)
            var type = atomic1.value

            atomic1 = atomic1 &* atomic2
            type = type &* 2

            XCTAssert(atomic1 != atomic2, "AtomicUInt64 AtomicUInt64 with &*")
            XCTAssert(atomic1 == type, "AtomicUInt64 UInt64 with &*")
            XCTAssert(type == atomic1, "UInt64 AtomicUInt64 with &*")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with &*")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with &*")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with +=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with +=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with -=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with -=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with *=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with *=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with /=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with /=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with %=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with %=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with %=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with <<=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with <<=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with <<=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with >>=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with >>=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with >>=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with ^=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with ^=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with ^=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with |=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with |=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with |=")
        }
        do {
            var (atomic1, atomic2) = (AtomicUInt64(42), AtomicUInt64(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AtomicUInt64 AtomicUInt64 with &=")
        }
        do {
            var (atomic, type) = (AtomicUInt64(42), UInt64(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AtomicUInt64 UInt64 with &=")
            XCTAssert(type == atomic, "UInt64 AtomicUInt64 with &=")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicUInt64", testAtomicUInt64)
    ]
#endif
}

// Atomic tests for 'Double'
class DoubleTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicDouble() {
        do {
            var atomic1 = AtomicDouble(42)
            let atomic2 = AtomicDouble(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicDouble AtomicDouble with +")
            XCTAssert(atomic1 == type, "AtomicDouble Double with +")
            XCTAssert(type == atomic1, "Double AtomicDouble with +")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicDouble Double with +")
            XCTAssert(type == atomic, "Double AtomicDouble with +")
        }
        do {
            var atomic1 = AtomicDouble(42)
            let atomic2 = AtomicDouble(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicDouble AtomicDouble with -")
            XCTAssert(atomic1 == type, "AtomicDouble Double with -")
            XCTAssert(type == atomic1, "Double AtomicDouble with -")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicDouble Double with -")
            XCTAssert(type == atomic, "Double AtomicDouble with -")
        }
        do {
            var atomic1 = AtomicDouble(42)
            let atomic2 = AtomicDouble(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicDouble AtomicDouble with *")
            XCTAssert(atomic1 == type, "AtomicDouble Double with *")
            XCTAssert(type == atomic1, "Double AtomicDouble with *")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicDouble Double with *")
            XCTAssert(type == atomic, "Double AtomicDouble with *")
        }
        do {
            var atomic1 = AtomicDouble(42)
            let atomic2 = AtomicDouble(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicDouble AtomicDouble with /")
            XCTAssert(atomic1 == type, "AtomicDouble Double with /")
            XCTAssert(type == atomic1, "Double AtomicDouble with /")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicDouble Double with /")
            XCTAssert(type == atomic, "Double AtomicDouble with /")
        }
        do {
            var (atomic1, atomic2) = (AtomicDouble(42), AtomicDouble(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicDouble AtomicDouble with +=")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicDouble Double with +=")
            XCTAssert(type == atomic, "Double AtomicDouble with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicDouble(42), AtomicDouble(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicDouble AtomicDouble with -=")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicDouble Double with -=")
            XCTAssert(type == atomic, "Double AtomicDouble with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicDouble(42), AtomicDouble(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicDouble AtomicDouble with *=")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicDouble Double with *=")
            XCTAssert(type == atomic, "Double AtomicDouble with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicDouble(42), AtomicDouble(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicDouble AtomicDouble with /=")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicDouble Double with /=")
            XCTAssert(type == atomic, "Double AtomicDouble with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicDouble(42), AtomicDouble(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicDouble AtomicDouble with +")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicDouble Double with +")
            XCTAssert(type == atomic, "Double AtomicDouble with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicDouble(42), AtomicDouble(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicDouble AtomicDouble with -")
        }
        do {
            var (atomic, type) = (AtomicDouble(42), Double(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicDouble Double with -")
            XCTAssert(type == atomic, "Double AtomicDouble with -")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicDouble", testAtomicDouble)
    ]
#endif
}

// Atomic tests for 'Float'
class FloatTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicFloat() {
        do {
            var atomic1 = AtomicFloat(42)
            let atomic2 = AtomicFloat(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat AtomicFloat with +")
            XCTAssert(atomic1 == type, "AtomicFloat Float with +")
            XCTAssert(type == atomic1, "Float AtomicFloat with +")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicFloat Float with +")
            XCTAssert(type == atomic, "Float AtomicFloat with +")
        }
        do {
            var atomic1 = AtomicFloat(42)
            let atomic2 = AtomicFloat(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat AtomicFloat with -")
            XCTAssert(atomic1 == type, "AtomicFloat Float with -")
            XCTAssert(type == atomic1, "Float AtomicFloat with -")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicFloat Float with -")
            XCTAssert(type == atomic, "Float AtomicFloat with -")
        }
        do {
            var atomic1 = AtomicFloat(42)
            let atomic2 = AtomicFloat(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat AtomicFloat with *")
            XCTAssert(atomic1 == type, "AtomicFloat Float with *")
            XCTAssert(type == atomic1, "Float AtomicFloat with *")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicFloat Float with *")
            XCTAssert(type == atomic, "Float AtomicFloat with *")
        }
        do {
            var atomic1 = AtomicFloat(42)
            let atomic2 = AtomicFloat(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat AtomicFloat with /")
            XCTAssert(atomic1 == type, "AtomicFloat Float with /")
            XCTAssert(type == atomic1, "Float AtomicFloat with /")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicFloat Float with /")
            XCTAssert(type == atomic, "Float AtomicFloat with /")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat(42), AtomicFloat(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat AtomicFloat with +=")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicFloat Float with +=")
            XCTAssert(type == atomic, "Float AtomicFloat with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat(42), AtomicFloat(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat AtomicFloat with -=")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicFloat Float with -=")
            XCTAssert(type == atomic, "Float AtomicFloat with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat(42), AtomicFloat(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat AtomicFloat with *=")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicFloat Float with *=")
            XCTAssert(type == atomic, "Float AtomicFloat with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat(42), AtomicFloat(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat AtomicFloat with /=")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicFloat Float with /=")
            XCTAssert(type == atomic, "Float AtomicFloat with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat(42), AtomicFloat(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicFloat AtomicFloat with +")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicFloat Float with +")
            XCTAssert(type == atomic, "Float AtomicFloat with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat(42), AtomicFloat(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicFloat AtomicFloat with -")
        }
        do {
            var (atomic, type) = (AtomicFloat(42), Float(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicFloat Float with -")
            XCTAssert(type == atomic, "Float AtomicFloat with -")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicFloat", testAtomicFloat)
    ]
#endif
}

// Atomic tests for 'Float80'
class Float80Tests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicFloat80() {
        do {
            var atomic1 = AtomicFloat80(42)
            let atomic2 = AtomicFloat80(2)
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat80 AtomicFloat80 with +")
            XCTAssert(atomic1 == type, "AtomicFloat80 Float80 with +")
            XCTAssert(type == atomic1, "Float80 AtomicFloat80 with +")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with +")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with +")
        }
        do {
            var atomic1 = AtomicFloat80(42)
            let atomic2 = AtomicFloat80(2)
            var type = atomic1.value

            atomic1 = atomic1 - atomic2
            type = type - 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat80 AtomicFloat80 with -")
            XCTAssert(atomic1 == type, "AtomicFloat80 Float80 with -")
            XCTAssert(type == atomic1, "Float80 AtomicFloat80 with -")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with -")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with -")
        }
        do {
            var atomic1 = AtomicFloat80(42)
            let atomic2 = AtomicFloat80(2)
            var type = atomic1.value

            atomic1 = atomic1 * atomic2
            type = type * 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat80 AtomicFloat80 with *")
            XCTAssert(atomic1 == type, "AtomicFloat80 Float80 with *")
            XCTAssert(type == atomic1, "Float80 AtomicFloat80 with *")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with *")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with *")
        }
        do {
            var atomic1 = AtomicFloat80(42)
            let atomic2 = AtomicFloat80(2)
            var type = atomic1.value

            atomic1 = atomic1 / atomic2
            type = type / 2

            XCTAssert(atomic1 != atomic2, "AtomicFloat80 AtomicFloat80 with /")
            XCTAssert(atomic1 == type, "AtomicFloat80 Float80 with /")
            XCTAssert(type == atomic1, "Float80 AtomicFloat80 with /")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with /")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with /")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat80(42), AtomicFloat80(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat80 AtomicFloat80 with +=")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with +=")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with +=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat80(42), AtomicFloat80(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat80 AtomicFloat80 with -=")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with -=")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with -=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat80(42), AtomicFloat80(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat80 AtomicFloat80 with *=")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with *=")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with *=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat80(42), AtomicFloat80(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AtomicFloat80 AtomicFloat80 with /=")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with /=")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with /=")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat80(42), AtomicFloat80(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AtomicFloat80 AtomicFloat80 with +")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with +")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicFloat80(42), AtomicFloat80(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AtomicFloat80 AtomicFloat80 with -")
        }
        do {
            var (atomic, type) = (AtomicFloat80(42), Float80(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AtomicFloat80 Float80 with -")
            XCTAssert(type == atomic, "Float80 AtomicFloat80 with -")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicFloat80", testAtomicFloat80)
    ]
#endif
}

// Atomic tests for 'String'
class StringTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicString() {
        do {
            var atomic1 = AtomicString("42")
            let atomic2 = AtomicString("2")
            var type = atomic1.value

            atomic1 = atomic1 + atomic2
            type = type + "2"

            XCTAssert(atomic1 == atomic1, "AtomicString AtomicString with +")
            XCTAssert(atomic1 == type, "AtomicString String with +")
            XCTAssert(type == atomic1, "String AtomicString with +")
        }
        do {
            var (atomic, type) = (AtomicString("42"), String("42")!)

            atomic = atomic + "2"
            type = type + "2"

            XCTAssert(atomic == type, "AtomicString String with +")
            XCTAssert(type == atomic, "String AtomicString with +")
        }
        do {
            var (atomic1, atomic2) = (AtomicString("42"), AtomicString("42"))

            atomic1 += "2"
            atomic2 += "2"

            XCTAssert(atomic1 == atomic2, "AtomicString AtomicString with +=")
        }
        do {
            var (atomic, type) = (AtomicString("42"), String("42")!)

            atomic += "2"
            type += "2"

            XCTAssert(atomic == type, "AtomicString String with +=")
            XCTAssert(type == atomic, "String AtomicString with +=")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicString", testAtomicString)
    ]
#endif
}

// Atomic tests for 'Bool'
class BoolTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicBool() {
        do {
            var (atomic1, atomic2) = (AtomicBool(false), AtomicBool(false))

            atomic1 = !atomic1
            atomic2 = !atomic2

            XCTAssert(atomic1 == atomic2, "AtomicBool AtomicBool with !")
        }
        do {
            var (atomic, type) = (AtomicBool(false), Bool(false))

            atomic = !atomic
            type = !type

            XCTAssert(atomic == type, "AtomicBool Bool with !")
            XCTAssert(type == atomic, "Bool AtomicBool with !")
        }
        do {
            let (atomic1, atomic2) = (AtomicBool(true), AtomicBool(true))

            XCTAssertTrue(atomic1 && atomic2, "AtomicBool AtomicBool with &&")
        }
        do {
            let (atomic1, atomic2) = (AtomicBool(true), AtomicBool(false))

            XCTAssertTrue(atomic1 || atomic2, "AtomicBool AtomicBool with ||")
        }
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicBool", testAtomicBool)
    ]
#endif
}

// Atomic tests
class AtomicTypeTests: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAtomicType() {
        var (atomic1, atomic2) = (AtomicInt(1), AtomicInt(2))

        var completed = false

        do {
            XCTAssert(atomic1.value == 1 && atomic2.value == 2, "values not initialised correctly")

            try atomic1.swap(&atomic2)

            XCTAssert(atomic1.value == 2 && atomic2.value == 1, "atomic.swap value not swapped")

            atomic1.value = 1
            atomic2.value = 2

            XCTAssert(atomic1.value == 1 && atomic2.value == 2, "atomic.set value not swapped")

            completed = true
        } catch {
            XCTAssert(false, "\(error)")
        }

        XCTAssert(completed, "test not completed")
    }

    func testAtomicStruct() {
        struct TestStruct {
            var value1: Int
            var value2: Int
        }

        let testStruct = TestStruct(value1: 1, value2: 2)
        let atomic = Atomic<TestStruct>(testStruct)

        var completed = false

        do {
            XCTAssert(atomic.value.value1 == 1 && atomic.value.value2 == 2, "not initialised correctly")

            atomic.value = testStruct

            XCTAssert(atomic.value.value1 == 1 && atomic.value.value2 == 2, "set() not initialised correctly")

            try atomic.mutate { object in
                var tempObject = object

                swap(&tempObject.value1, &tempObject.value2)
            }

            XCTAssert(testStruct.value1 == atomic.value.value1 && testStruct.value2 == atomic.value.value2, "tempStruct not the same as atomic")

            completed = true
        } catch {
            XCTAssert(false, "\(error)")
        }

        XCTAssert(completed, "test not completed")
    }

#if !os(OSX)
    static let allTests = [
        ("testAtomicType", testAtomicType),
        ("testAtomicStruct", testAtomicStruct)
    ]
#endif
}
