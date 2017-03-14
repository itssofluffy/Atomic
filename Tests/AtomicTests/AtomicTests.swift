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
    func testAtomicInt() {
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with +")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AInt Int with +")
            XCTAssert(type == atomic, "Int AInt with +")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with -")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AInt Int with -")
            XCTAssert(type == atomic, "Int AInt with -")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with *")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AInt Int with *")
            XCTAssert(type == atomic, "Int AInt with *")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with /")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AInt Int with /")
            XCTAssert(type == atomic, "Int AInt with /")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with %")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AInt Int with %")
            XCTAssert(type == atomic, "Int AInt with %")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with <<")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AInt Int with <<")
            XCTAssert(type == atomic, "Int AInt with <<")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with >>")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AInt Int with >>")
            XCTAssert(type == atomic, "Int AInt with >>")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with ^")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AInt Int with ^")
            XCTAssert(type == atomic, "Int AInt with ^")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with |")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AInt Int with |")
            XCTAssert(type == atomic, "Int AInt with |")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with &")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AInt Int with &")
            XCTAssert(type == atomic, "Int AInt with &")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with &+")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AInt Int with &+")
            XCTAssert(type == atomic, "Int AInt with &+")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with &-")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AInt Int with &-")
            XCTAssert(type == atomic, "Int AInt with &-")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with &*")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AInt Int with &*")
            XCTAssert(type == atomic, "Int AInt with &*")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with +=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AInt Int with +=")
            XCTAssert(type == atomic, "Int AInt with +=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with -=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AInt Int with -=")
            XCTAssert(type == atomic, "Int AInt with -=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with *=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AInt Int with *=")
            XCTAssert(type == atomic, "Int AInt with *=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with /=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AInt Int with /=")
            XCTAssert(type == atomic, "Int AInt with /=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with %=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AInt Int with %=")
            XCTAssert(type == atomic, "Int AInt with %=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with <<=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AInt Int with <<=")
            XCTAssert(type == atomic, "Int AInt with <<=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with >>=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AInt Int with >>=")
            XCTAssert(type == atomic, "Int AInt with >>=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with ^=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AInt Int with ^=")
            XCTAssert(type == atomic, "Int AInt with ^=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with |=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AInt Int with |=")
            XCTAssert(type == atomic, "Int AInt with |=")
        }
        do {
            let (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AInt AInt with &=")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AInt Int with &=")
            XCTAssert(type == atomic, "Int AInt with &=")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AInt AInt with +")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AInt Int with +")
            XCTAssert(type == atomic, "Int AInt with +")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AInt AInt with -")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AInt Int with -")
            XCTAssert(type == atomic, "Int AInt with -")
        }
        do {
            var (atomic1, atomic2) = (AInt(42), AInt(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AInt AInt with ~")
        }
        do {
            var (atomic, type) = (AInt(42), Int(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AInt Int with ~")
            XCTAssert(type == atomic, "Int AInt with ~")
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
    func testAtomicInt8() {
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with +")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AInt8 Int8 with +")
            XCTAssert(type == atomic, "Int8 AInt8 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with -")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AInt8 Int8 with -")
            XCTAssert(type == atomic, "Int8 AInt8 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with *")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AInt8 Int8 with *")
            XCTAssert(type == atomic, "Int8 AInt8 with *")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with /")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AInt8 Int8 with /")
            XCTAssert(type == atomic, "Int8 AInt8 with /")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with %")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AInt8 Int8 with %")
            XCTAssert(type == atomic, "Int8 AInt8 with %")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with <<")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AInt8 Int8 with <<")
            XCTAssert(type == atomic, "Int8 AInt8 with <<")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with >>")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AInt8 Int8 with >>")
            XCTAssert(type == atomic, "Int8 AInt8 with >>")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with ^")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AInt8 Int8 with ^")
            XCTAssert(type == atomic, "Int8 AInt8 with ^")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with |")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AInt8 Int8 with |")
            XCTAssert(type == atomic, "Int8 AInt8 with |")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with &")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AInt8 Int8 with &")
            XCTAssert(type == atomic, "Int8 AInt8 with &")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with &+")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AInt8 Int8 with &+")
            XCTAssert(type == atomic, "Int8 AInt8 with &+")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with &-")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AInt8 Int8 with &-")
            XCTAssert(type == atomic, "Int8 AInt8 with &-")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with &*")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AInt8 Int8 with &*")
            XCTAssert(type == atomic, "Int8 AInt8 with &*")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with +=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AInt8 Int8 with +=")
            XCTAssert(type == atomic, "Int8 AInt8 with +=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with -=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AInt8 Int8 with -=")
            XCTAssert(type == atomic, "Int8 AInt8 with -=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with *=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AInt8 Int8 with *=")
            XCTAssert(type == atomic, "Int8 AInt8 with *=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with /=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AInt8 Int8 with /=")
            XCTAssert(type == atomic, "Int8 AInt8 with /=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with %=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AInt8 Int8 with %=")
            XCTAssert(type == atomic, "Int8 AInt8 with %=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with <<=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AInt8 Int8 with <<=")
            XCTAssert(type == atomic, "Int8 AInt8 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with >>=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AInt8 Int8 with >>=")
            XCTAssert(type == atomic, "Int8 AInt8 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with ^=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AInt8 Int8 with ^=")
            XCTAssert(type == atomic, "Int8 AInt8 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with |=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AInt8 Int8 with |=")
            XCTAssert(type == atomic, "Int8 AInt8 with |=")
        }
        do {
            let (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with &=")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AInt8 Int8 with &=")
            XCTAssert(type == atomic, "Int8 AInt8 with &=")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with +")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AInt8 Int8 with +")
            XCTAssert(type == atomic, "Int8 AInt8 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with -")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AInt8 Int8 with -")
            XCTAssert(type == atomic, "Int8 AInt8 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt8(42), AInt8(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AInt8 AInt8 with ~")
        }
        do {
            var (atomic, type) = (AInt8(42), Int8(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AInt8 Int8 with ~")
            XCTAssert(type == atomic, "Int8 AInt8 with ~")
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
    func testAtomicInt16() {
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with +")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AInt16 Int16 with +")
            XCTAssert(type == atomic, "Int16 AInt16 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with -")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AInt16 Int16 with -")
            XCTAssert(type == atomic, "Int16 AInt16 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with *")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AInt16 Int16 with *")
            XCTAssert(type == atomic, "Int16 AInt16 with *")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with /")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AInt16 Int16 with /")
            XCTAssert(type == atomic, "Int16 AInt16 with /")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with %")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AInt16 Int16 with %")
            XCTAssert(type == atomic, "Int16 AInt16 with %")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with <<")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AInt16 Int16 with <<")
            XCTAssert(type == atomic, "Int16 AInt16 with <<")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with >>")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AInt16 Int16 with >>")
            XCTAssert(type == atomic, "Int16 AInt16 with >>")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with ^")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AInt16 Int16 with ^")
            XCTAssert(type == atomic, "Int16 AInt16 with ^")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with |")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AInt16 Int16 with |")
            XCTAssert(type == atomic, "Int16 AInt16 with |")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with &")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AInt16 Int16 with &")
            XCTAssert(type == atomic, "Int16 AInt16 with &")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with &+")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AInt16 Int16 with &+")
            XCTAssert(type == atomic, "Int16 AInt16 with &+")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with &-")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AInt16 Int16 with &-")
            XCTAssert(type == atomic, "Int16 AInt16 with &-")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with &*")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AInt16 Int16 with &*")
            XCTAssert(type == atomic, "Int16 AInt16 with &*")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with +=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AInt16 Int16 with +=")
            XCTAssert(type == atomic, "Int16 AInt16 with +=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with -=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AInt16 Int16 with -=")
            XCTAssert(type == atomic, "Int16 AInt16 with -=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with *=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AInt16 Int16 with *=")
            XCTAssert(type == atomic, "Int16 AInt16 with *=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with /=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AInt16 Int16 with /=")
            XCTAssert(type == atomic, "Int16 AInt16 with /=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with %=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AInt16 Int16 with %=")
            XCTAssert(type == atomic, "Int16 AInt16 with %=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with <<=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AInt16 Int16 with <<=")
            XCTAssert(type == atomic, "Int16 AInt16 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with >>=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AInt16 Int16 with >>=")
            XCTAssert(type == atomic, "Int16 AInt16 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with ^=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AInt16 Int16 with ^=")
            XCTAssert(type == atomic, "Int16 AInt16 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with |=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AInt16 Int16 with |=")
            XCTAssert(type == atomic, "Int16 AInt16 with |=")
        }
        do {
            let (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with &=")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AInt16 Int16 with &=")
            XCTAssert(type == atomic, "Int16 AInt16 with &=")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with +")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AInt16 Int16 with +")
            XCTAssert(type == atomic, "Int16 AInt16 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with -")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AInt16 Int16 with -")
            XCTAssert(type == atomic, "Int16 AInt16 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt16(42), AInt16(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AInt16 AInt16 with ~")
        }
        do {
            var (atomic, type) = (AInt16(42), Int16(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AInt16 Int16 with ~")
            XCTAssert(type == atomic, "Int16 AInt16 with ~")
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
    func testAtomicInt32() {
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with +")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AInt32 Int32 with +")
            XCTAssert(type == atomic, "Int32 AInt32 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with -")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AInt32 Int32 with -")
            XCTAssert(type == atomic, "Int32 AInt32 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with *")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AInt32 Int32 with *")
            XCTAssert(type == atomic, "Int32 AInt32 with *")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with /")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AInt32 Int32 with /")
            XCTAssert(type == atomic, "Int32 AInt32 with /")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with %")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AInt32 Int32 with %")
            XCTAssert(type == atomic, "Int32 AInt32 with %")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with <<")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AInt32 Int32 with <<")
            XCTAssert(type == atomic, "Int32 AInt32 with <<")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with >>")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AInt32 Int32 with >>")
            XCTAssert(type == atomic, "Int32 AInt32 with >>")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with ^")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AInt32 Int32 with ^")
            XCTAssert(type == atomic, "Int32 AInt32 with ^")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with |")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AInt32 Int32 with |")
            XCTAssert(type == atomic, "Int32 AInt32 with |")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with &")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AInt32 Int32 with &")
            XCTAssert(type == atomic, "Int32 AInt32 with &")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with &+")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AInt32 Int32 with &+")
            XCTAssert(type == atomic, "Int32 AInt32 with &+")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with &-")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AInt32 Int32 with &-")
            XCTAssert(type == atomic, "Int32 AInt32 with &-")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with &*")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AInt32 Int32 with &*")
            XCTAssert(type == atomic, "Int32 AInt32 with &*")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with +=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AInt32 Int32 with +=")
            XCTAssert(type == atomic, "Int32 AInt32 with +=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with -=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AInt32 Int32 with -=")
            XCTAssert(type == atomic, "Int32 AInt32 with -=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with *=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AInt32 Int32 with *=")
            XCTAssert(type == atomic, "Int32 AInt32 with *=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with /=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AInt32 Int32 with /=")
            XCTAssert(type == atomic, "Int32 AInt32 with /=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with %=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AInt32 Int32 with %=")
            XCTAssert(type == atomic, "Int32 AInt32 with %=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with <<=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AInt32 Int32 with <<=")
            XCTAssert(type == atomic, "Int32 AInt32 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with >>=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AInt32 Int32 with >>=")
            XCTAssert(type == atomic, "Int32 AInt32 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with ^=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AInt32 Int32 with ^=")
            XCTAssert(type == atomic, "Int32 AInt32 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with |=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AInt32 Int32 with |=")
            XCTAssert(type == atomic, "Int32 AInt32 with |=")
        }
        do {
            let (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with &=")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AInt32 Int32 with &=")
            XCTAssert(type == atomic, "Int32 AInt32 with &=")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with +")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AInt32 Int32 with +")
            XCTAssert(type == atomic, "Int32 AInt32 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with -")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AInt32 Int32 with -")
            XCTAssert(type == atomic, "Int32 AInt32 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt32(42), AInt32(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AInt32 AInt32 with ~")
        }
        do {
            var (atomic, type) = (AInt32(42), Int32(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AInt32 Int32 with ~")
            XCTAssert(type == atomic, "Int32 AInt32 with ~")
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
    func testAtomicInt64() {
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with +")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AInt64 Int64 with +")
            XCTAssert(type == atomic, "Int64 AInt64 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with -")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AInt64 Int64 with -")
            XCTAssert(type == atomic, "Int64 AInt64 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with *")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AInt64 Int64 with *")
            XCTAssert(type == atomic, "Int64 AInt64 with *")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with /")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AInt64 Int64 with /")
            XCTAssert(type == atomic, "Int64 AInt64 with /")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with %")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AInt64 Int64 with %")
            XCTAssert(type == atomic, "Int64 AInt64 with %")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with <<")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AInt64 Int64 with <<")
            XCTAssert(type == atomic, "Int64 AInt64 with <<")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with >>")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AInt64 Int64 with >>")
            XCTAssert(type == atomic, "Int64 AInt64 with >>")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with ^")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AInt64 Int64 with ^")
            XCTAssert(type == atomic, "Int64 AInt64 with ^")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with |")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AInt64 Int64 with |")
            XCTAssert(type == atomic, "Int64 AInt64 with |")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with &")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AInt64 Int64 with &")
            XCTAssert(type == atomic, "Int64 AInt64 with &")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with &+")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AInt64 Int64 with &+")
            XCTAssert(type == atomic, "Int64 AInt64 with &+")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with &-")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AInt64 Int64 with &-")
            XCTAssert(type == atomic, "Int64 AInt64 with &-")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with &*")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AInt64 Int64 with &*")
            XCTAssert(type == atomic, "Int64 AInt64 with &*")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with +=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AInt64 Int64 with +=")
            XCTAssert(type == atomic, "Int64 AInt64 with +=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with -=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AInt64 Int64 with -=")
            XCTAssert(type == atomic, "Int64 AInt64 with -=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with *=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AInt64 Int64 with *=")
            XCTAssert(type == atomic, "Int64 AInt64 with *=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with /=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AInt64 Int64 with /=")
            XCTAssert(type == atomic, "Int64 AInt64 with /=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with %=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AInt64 Int64 with %=")
            XCTAssert(type == atomic, "Int64 AInt64 with %=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with <<=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AInt64 Int64 with <<=")
            XCTAssert(type == atomic, "Int64 AInt64 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with >>=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AInt64 Int64 with >>=")
            XCTAssert(type == atomic, "Int64 AInt64 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with ^=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AInt64 Int64 with ^=")
            XCTAssert(type == atomic, "Int64 AInt64 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with |=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AInt64 Int64 with |=")
            XCTAssert(type == atomic, "Int64 AInt64 with |=")
        }
        do {
            let (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with &=")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AInt64 Int64 with &=")
            XCTAssert(type == atomic, "Int64 AInt64 with &=")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with +")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AInt64 Int64 with +")
            XCTAssert(type == atomic, "Int64 AInt64 with +")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with -")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AInt64 Int64 with -")
            XCTAssert(type == atomic, "Int64 AInt64 with -")
        }
        do {
            var (atomic1, atomic2) = (AInt64(42), AInt64(42))

            atomic1 = ~atomic1
            atomic2 = ~atomic2

            XCTAssert(atomic1 == atomic2, "AInt64 AInt64 with ~")
        }
        do {
            var (atomic, type) = (AInt64(42), Int64(42))

            atomic = ~atomic
            type = ~type

            XCTAssert(atomic == type, "AInt64 Int64 with ~")
            XCTAssert(type == atomic, "Int64 AInt64 with ~")
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
    func testAtomicUInt() {
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with +")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AUInt UInt with +")
            XCTAssert(type == atomic, "UInt AUInt with +")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with -")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AUInt UInt with -")
            XCTAssert(type == atomic, "UInt AUInt with -")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with *")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AUInt UInt with *")
            XCTAssert(type == atomic, "UInt AUInt with *")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with /")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AUInt UInt with /")
            XCTAssert(type == atomic, "UInt AUInt with /")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with %")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AUInt UInt with %")
            XCTAssert(type == atomic, "UInt AUInt with %")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with <<")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AUInt UInt with <<")
            XCTAssert(type == atomic, "UInt AUInt with <<")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with >>")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AUInt UInt with >>")
            XCTAssert(type == atomic, "UInt AUInt with >>")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with ^")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AUInt UInt with ^")
            XCTAssert(type == atomic, "UInt AUInt with ^")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with |")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AUInt UInt with |")
            XCTAssert(type == atomic, "UInt AUInt with |")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with &")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AUInt UInt with &")
            XCTAssert(type == atomic, "UInt AUInt with &")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with &+")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AUInt UInt with &+")
            XCTAssert(type == atomic, "UInt AUInt with &+")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with &-")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AUInt UInt with &-")
            XCTAssert(type == atomic, "UInt AUInt with &-")
        }
        do {
            var (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with &*")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AUInt UInt with &*")
            XCTAssert(type == atomic, "UInt AUInt with &*")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with +=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AUInt UInt with +=")
            XCTAssert(type == atomic, "UInt AUInt with +=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with -=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AUInt UInt with -=")
            XCTAssert(type == atomic, "UInt AUInt with -=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with *=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AUInt UInt with *=")
            XCTAssert(type == atomic, "UInt AUInt with *=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with /=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AUInt UInt with /=")
            XCTAssert(type == atomic, "UInt AUInt with /=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with %=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AUInt UInt with %=")
            XCTAssert(type == atomic, "UInt AUInt with %=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with <<=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AUInt UInt with <<=")
            XCTAssert(type == atomic, "UInt AUInt with <<=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with >>=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AUInt UInt with >>=")
            XCTAssert(type == atomic, "UInt AUInt with >>=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with ^=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AUInt UInt with ^=")
            XCTAssert(type == atomic, "UInt AUInt with ^=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with |=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AUInt UInt with |=")
            XCTAssert(type == atomic, "UInt AUInt with |=")
        }
        do {
            let (atomic1, atomic2) = (AUInt(42), AUInt(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AUInt AUInt with &=")
        }
        do {
            var (atomic, type) = (AUInt(42), UInt(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AUInt UInt with &=")
            XCTAssert(type == atomic, "UInt AUInt with &=")
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
    func testAtomicUInt8() {
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with +")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with +")
            XCTAssert(type == atomic, "UInt8 AUInt8 with +")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with -")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with -")
            XCTAssert(type == atomic, "UInt8 AUInt8 with -")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with *")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with *")
            XCTAssert(type == atomic, "UInt8 AUInt8 with *")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with /")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with /")
            XCTAssert(type == atomic, "UInt8 AUInt8 with /")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with %")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with %")
            XCTAssert(type == atomic, "UInt8 AUInt8 with %")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with <<")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with <<")
            XCTAssert(type == atomic, "UInt8 AUInt8 with <<")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with >>")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with >>")
            XCTAssert(type == atomic, "UInt8 AUInt8 with >>")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with ^")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with ^")
            XCTAssert(type == atomic, "UInt8 AUInt8 with ^")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with |")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with |")
            XCTAssert(type == atomic, "UInt8 AUInt8 with |")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with &")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with &")
            XCTAssert(type == atomic, "UInt8 AUInt8 with &")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with &+")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with &+")
            XCTAssert(type == atomic, "UInt8 AUInt8 with &+")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with &-")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with &-")
            XCTAssert(type == atomic, "UInt8 AUInt8 with &-")
        }
        do {
            var (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with &*")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with &*")
            XCTAssert(type == atomic, "UInt8 AUInt8 with &*")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with +=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with +=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with +=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with -=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with -=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with -=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with *=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with *=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with *=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with /=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with /=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with /=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with %=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with %=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with %=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with <<=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with <<=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with >>=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with >>=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with ^=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with ^=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with |=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with |=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with |=")
        }
        do {
            let (atomic1, atomic2) = (AUInt8(42), AUInt8(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AUInt8 AUInt8 with &=")
        }
        do {
            var (atomic, type) = (AUInt8(42), UInt8(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AUInt8 UInt8 with &=")
            XCTAssert(type == atomic, "UInt8 AUInt8 with &=")
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
    func testAtomicUInt16() {
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with +")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with +")
            XCTAssert(type == atomic, "UInt16 AUInt16 with +")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with -")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with -")
            XCTAssert(type == atomic, "UInt16 AUInt16 with -")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with *")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with *")
            XCTAssert(type == atomic, "UInt16 AUInt16 with *")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with /")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with /")
            XCTAssert(type == atomic, "UInt16 AUInt16 with /")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with %")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with %")
            XCTAssert(type == atomic, "UInt16 AUInt16 with %")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with <<")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with <<")
            XCTAssert(type == atomic, "UInt16 AUInt16 with <<")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with >>")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with >>")
            XCTAssert(type == atomic, "UInt16 AUInt16 with >>")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with ^")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with ^")
            XCTAssert(type == atomic, "UInt16 AUInt16 with ^")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with |")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with |")
            XCTAssert(type == atomic, "UInt16 AUInt16 with |")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with &")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with &")
            XCTAssert(type == atomic, "UInt16 AUInt16 with &")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with &+")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with &+")
            XCTAssert(type == atomic, "UInt16 AUInt16 with &+")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with &-")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with &-")
            XCTAssert(type == atomic, "UInt16 AUInt16 with &-")
        }
        do {
            var (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with &*")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with &*")
            XCTAssert(type == atomic, "UInt16 AUInt16 with &*")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with +=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with +=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with +=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with -=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with -=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with -=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with *=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with *=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with *=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with /=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with /=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with /=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with %=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with %=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with %=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with <<=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with <<=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with >>=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with >>=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with ^=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with ^=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with |=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with |=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with |=")
        }
        do {
            let (atomic1, atomic2) = (AUInt16(42), AUInt16(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AUInt16 AUInt16 with &=")
        }
        do {
            var (atomic, type) = (AUInt16(42), UInt16(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AUInt16 UInt16 with &=")
            XCTAssert(type == atomic, "UInt16 AUInt16 with &=")
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
    func testAtomicUInt32() {
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with +")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with +")
            XCTAssert(type == atomic, "UInt32 AUInt32 with +")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with -")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with -")
            XCTAssert(type == atomic, "UInt32 AUInt32 with -")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with *")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with *")
            XCTAssert(type == atomic, "UInt32 AUInt32 with *")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with /")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with /")
            XCTAssert(type == atomic, "UInt32 AUInt32 with /")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with %")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with %")
            XCTAssert(type == atomic, "UInt32 AUInt32 with %")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with <<")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with <<")
            XCTAssert(type == atomic, "UInt32 AUInt32 with <<")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with >>")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with >>")
            XCTAssert(type == atomic, "UInt32 AUInt32 with >>")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with ^")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with ^")
            XCTAssert(type == atomic, "UInt32 AUInt32 with ^")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with |")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with |")
            XCTAssert(type == atomic, "UInt32 AUInt32 with |")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with &")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with &")
            XCTAssert(type == atomic, "UInt32 AUInt32 with &")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with &+")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with &+")
            XCTAssert(type == atomic, "UInt32 AUInt32 with &+")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with &-")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with &-")
            XCTAssert(type == atomic, "UInt32 AUInt32 with &-")
        }
        do {
            var (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with &*")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with &*")
            XCTAssert(type == atomic, "UInt32 AUInt32 with &*")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with +=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with +=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with +=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with -=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with -=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with -=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with *=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with *=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with *=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with /=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with /=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with /=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with %=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with %=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with %=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with <<=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with <<=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with >>=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with >>=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with ^=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with ^=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with |=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with |=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with |=")
        }
        do {
            let (atomic1, atomic2) = (AUInt32(42), AUInt32(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AUInt32 AUInt32 with &=")
        }
        do {
            var (atomic, type) = (AUInt32(42), UInt32(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AUInt32 UInt32 with &=")
            XCTAssert(type == atomic, "UInt32 AUInt32 with &=")
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
    func testAtomicUInt64() {
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with +")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with +")
            XCTAssert(type == atomic, "UInt64 AUInt64 with +")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with -")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with -")
            XCTAssert(type == atomic, "UInt64 AUInt64 with -")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with *")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with *")
            XCTAssert(type == atomic, "UInt64 AUInt64 with *")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with /")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with /")
            XCTAssert(type == atomic, "UInt64 AUInt64 with /")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 % 2
            atomic2 = atomic2 % 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with %")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic % 2
            type = type % 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with %")
            XCTAssert(type == atomic, "UInt64 AUInt64 with %")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 << 2
            atomic2 = atomic2 << 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with <<")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic << 2
            type = type << 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with <<")
            XCTAssert(type == atomic, "UInt64 AUInt64 with <<")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 >> 2
            atomic2 = atomic2 >> 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with >>")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic >> 2
            type = type >> 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with >>")
            XCTAssert(type == atomic, "UInt64 AUInt64 with >>")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 ^ 2
            atomic2 = atomic2 ^ 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with ^")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic ^ 2
            type = type ^ 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with ^")
            XCTAssert(type == atomic, "UInt64 AUInt64 with ^")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 | 2
            atomic2 = atomic2 | 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with |")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic | 2
            type = type | 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with |")
            XCTAssert(type == atomic, "UInt64 AUInt64 with |")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 & 2
            atomic2 = atomic2 & 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with &")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic & 2
            type = type & 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with &")
            XCTAssert(type == atomic, "UInt64 AUInt64 with &")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 &+ 2
            atomic2 = atomic2 &+ 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with &+")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic &+ 2
            type = type &+ 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with &+")
            XCTAssert(type == atomic, "UInt64 AUInt64 with &+")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 &- 2
            atomic2 = atomic2 &- 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with &-")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic &- 2
            type = type &- 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with &-")
            XCTAssert(type == atomic, "UInt64 AUInt64 with &-")
        }
        do {
            var (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 = atomic1 &* 2
            atomic2 = atomic2 &* 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with &*")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic = atomic &* 2
            type = type &* 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with &*")
            XCTAssert(type == atomic, "UInt64 AUInt64 with &*")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with +=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with +=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with +=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with -=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with -=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with -=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with *=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with *=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with *=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with /=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with /=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with /=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 %= 2
            atomic2 %= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with %=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic %= 2
            type %= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with %=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with %=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 <<= 2
            atomic2 <<= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with <<=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic <<= 2
            type <<= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with <<=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with <<=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 >>= 2
            atomic2 >>= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with >>=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic >>= 2
            type >>= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with >>=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with >>=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 ^= 2
            atomic2 ^= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with ^=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic ^= 2
            type ^= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with ^=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with ^=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 |= 2
            atomic2 |= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with |=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic |= 2
            type |= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with |=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with |=")
        }
        do {
            let (atomic1, atomic2) = (AUInt64(42), AUInt64(42))

            atomic1 &= 2
            atomic2 &= 2

            XCTAssert(atomic1 == atomic2, "AUInt64 AUInt64 with &=")
        }
        do {
            var (atomic, type) = (AUInt64(42), UInt64(42))

            atomic &= 2
            type &= 2

            XCTAssert(atomic == type, "AUInt64 UInt64 with &=")
            XCTAssert(type == atomic, "UInt64 AUInt64 with &=")
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
    func testAtomicDouble() {
        do {
            var (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with +")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "ADouble Double with +")
            XCTAssert(type == atomic, "Double ADouble with +")
        }
        do {
            var (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with -")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "ADouble Double with -")
            XCTAssert(type == atomic, "Double ADouble with -")
        }
        do {
            var (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with *")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "ADouble Double with *")
            XCTAssert(type == atomic, "Double ADouble with *")
        }
        do {
            var (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with /")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "ADouble Double with /")
            XCTAssert(type == atomic, "Double ADouble with /")
        }
        do {
            let (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with +=")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "ADouble Double with +=")
            XCTAssert(type == atomic, "Double ADouble with +=")
        }
        do {
            let (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with -=")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "ADouble Double with -=")
            XCTAssert(type == atomic, "Double ADouble with -=")
        }
        do {
            let (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with *=")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "ADouble Double with *=")
            XCTAssert(type == atomic, "Double ADouble with *=")
        }
        do {
            let (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with /=")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "ADouble Double with /=")
            XCTAssert(type == atomic, "Double ADouble with /=")
        }
        do {
            var (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with +")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "ADouble Double with +")
            XCTAssert(type == atomic, "Double ADouble with +")
        }
        do {
            var (atomic1, atomic2) = (ADouble(42), ADouble(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "ADouble ADouble with -")
        }
        do {
            var (atomic, type) = (ADouble(42), Double(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "ADouble Double with -")
            XCTAssert(type == atomic, "Double ADouble with -")
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
    func testAtomicFloat() {
        do {
            var (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with +")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AFloat Float with +")
            XCTAssert(type == atomic, "Float AFloat with +")
        }
        do {
            var (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with -")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AFloat Float with -")
            XCTAssert(type == atomic, "Float AFloat with -")
        }
        do {
            var (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with *")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AFloat Float with *")
            XCTAssert(type == atomic, "Float AFloat with *")
        }
        do {
            var (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with /")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AFloat Float with /")
            XCTAssert(type == atomic, "Float AFloat with /")
        }
        do {
            let (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with +=")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AFloat Float with +=")
            XCTAssert(type == atomic, "Float AFloat with +=")
        }
        do {
            let (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with -=")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AFloat Float with -=")
            XCTAssert(type == atomic, "Float AFloat with -=")
        }
        do {
            let (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with *=")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AFloat Float with *=")
            XCTAssert(type == atomic, "Float AFloat with *=")
        }
        do {
            let (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with /=")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AFloat Float with /=")
            XCTAssert(type == atomic, "Float AFloat with /=")
        }
        do {
            var (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with +")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AFloat Float with +")
            XCTAssert(type == atomic, "Float AFloat with +")
        }
        do {
            var (atomic1, atomic2) = (AFloat(42), AFloat(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AFloat AFloat with -")
        }
        do {
            var (atomic, type) = (AFloat(42), Float(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AFloat Float with -")
            XCTAssert(type == atomic, "Float AFloat with -")
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
    func testAtomicFloat80() {
        do {
            var (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 = atomic1 + 2
            atomic2 = atomic2 + 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with +")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic = atomic + 2
            type = type + 2

            XCTAssert(atomic == type, "AFloat80 Float80 with +")
            XCTAssert(type == atomic, "Float80 AFloat80 with +")
        }
        do {
            var (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 = atomic1 - 2
            atomic2 = atomic2 - 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with -")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic = atomic - 2
            type = type - 2

            XCTAssert(atomic == type, "AFloat80 Float80 with -")
            XCTAssert(type == atomic, "Float80 AFloat80 with -")
        }
        do {
            var (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 = atomic1 * 2
            atomic2 = atomic2 * 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with *")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic = atomic * 2
            type = type * 2

            XCTAssert(atomic == type, "AFloat80 Float80 with *")
            XCTAssert(type == atomic, "Float80 AFloat80 with *")
        }
        do {
            var (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 = atomic1 / 2
            atomic2 = atomic2 / 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with /")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic = atomic / 2
            type = type / 2

            XCTAssert(atomic == type, "AFloat80 Float80 with /")
            XCTAssert(type == atomic, "Float80 AFloat80 with /")
        }
        do {
            let (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 += 2
            atomic2 += 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with +=")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic += 2
            type += 2

            XCTAssert(atomic == type, "AFloat80 Float80 with +=")
            XCTAssert(type == atomic, "Float80 AFloat80 with +=")
        }
        do {
            let (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 -= 2
            atomic2 -= 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with -=")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic -= 2
            type -= 2

            XCTAssert(atomic == type, "AFloat80 Float80 with -=")
            XCTAssert(type == atomic, "Float80 AFloat80 with -=")
        }
        do {
            let (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 *= 2
            atomic2 *= 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with *=")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic *= 2
            type *= 2

            XCTAssert(atomic == type, "AFloat80 Float80 with *=")
            XCTAssert(type == atomic, "Float80 AFloat80 with *=")
        }
        do {
            let (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 /= 2
            atomic2 /= 2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with /=")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic /= 2
            type /= 2

            XCTAssert(atomic == type, "AFloat80 Float80 with /=")
            XCTAssert(type == atomic, "Float80 AFloat80 with /=")
        }
        do {
            var (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 = +atomic1
            atomic2 = +atomic2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with +")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic = +atomic
            type = +type

            XCTAssert(atomic == type, "AFloat80 Float80 with +")
            XCTAssert(type == atomic, "Float80 AFloat80 with +")
        }
        do {
            var (atomic1, atomic2) = (AFloat80(42), AFloat80(42))

            atomic1 = -atomic1
            atomic2 = -atomic2

            XCTAssert(atomic1 == atomic2, "AFloat80 AFloat80 with -")
        }
        do {
            var (atomic, type) = (AFloat80(42), Float80(42))

            atomic = -atomic
            type = -type

            XCTAssert(atomic == type, "AFloat80 Float80 with -")
            XCTAssert(type == atomic, "Float80 AFloat80 with -")
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
    func testAtomicString() {
        do {
            var (atomic1, atomic2) = (AString("42"), AString("42"))

            atomic1 = atomic1 + "2"
            atomic2 = atomic2 + "2"

            XCTAssert(atomic1 == atomic2, "AString AString with +")
        }
        do {
            var (atomic, type) = (AString("42"), String("42")!)

            atomic = atomic + "2"
            type = type + "2"

            XCTAssert(atomic == type, "AString String with +")
            XCTAssert(type == atomic, "String AString with +")
        }
        do {
            let (atomic1, atomic2) = (AString("42"), AString("42"))

            atomic1 += "2"
            atomic2 += "2"

            XCTAssert(atomic1 == atomic2, "AString AString with +=")
        }
        do {
            var (atomic, type) = (AString("42"), String("42")!)

            atomic += "2"
            type += "2"

            XCTAssert(atomic == type, "AString String with +=")
            XCTAssert(type == atomic, "String AString with +=")
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
    func testAtomicBool() {
        do {
            var (atomic1, atomic2) = (ABool(false), ABool(false))

            atomic1 = !atomic1
            atomic2 = !atomic2

            XCTAssert(atomic1 == atomic2, "ABool ABool with !")
        }
        do {
            var (atomic, type) = (ABool(false), Bool(false))

            atomic = !atomic
            type = !type

            XCTAssert(atomic == type, "ABool Bool with !")
            XCTAssert(type == atomic, "Bool ABool with !")
        }
        do {
            let (atomic1, atomic2) = (ABool(true), ABool(true))

            XCTAssertTrue(atomic1 && atomic2, "ABool ABool with &&")
        }
        do {
            let (atomic1, atomic2) = (ABool(true), ABool(false))

            XCTAssertTrue(atomic1 || atomic2, "ABool ABool with ||")
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
    func testAtomicType() {
        let (atomic1, atomic2) = (AInt(1), AInt(2))

        var completed = false

        do {
            try XCTAssert(atomic1.get() == 1 && atomic2.get() == 2, "values not initialised correctly")

            try atomic1.swap(atomic2)

            try XCTAssert(atomic1.get() == 2 && atomic2.get() == 1, "atomic.swap value not swapped")

            try atomic1.set(1)
            try atomic2.set(2)

            try XCTAssert(atomic1.get() == 1 && atomic2.get() == 2, "atomic.set value not swapped")

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
            try XCTAssert(atomic.get().value1 == 1 && atomic.get().value2 == 2, "not initialised correctly")

            try atomic.set(testStruct)

            try XCTAssert(atomic.get().value1 == 1 && atomic.get().value2 == 2, "set() not initialised correctly")

            try atomic.set { object in
                var tempObject = object

                let temp = tempObject.value1
                tempObject.value1 = tempObject.value2
                tempObject.value2 = temp

                return tempObject
            }

            let tempStruct = try atomic.get { object in
                XCTAssert(object.value1 == 2 && object.value2 == 1, "values not swapped")
            }

            try XCTAssert(tempStruct.value1 == atomic.get().value1 && tempStruct.value2 == atomic.get().value2, "tempStruct not the same as atomic")

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
