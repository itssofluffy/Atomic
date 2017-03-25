/*
    AtomicTypes.swift

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

// typealias for atomic 'Int'
public typealias AtomicInt = Atomic<Int>

public func +(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicInt, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int, rhs: AtomicInt) -> AtomicInt {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicInt, rhs: Int) -> AtomicInt {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int, rhs: AtomicInt) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int, rhs: AtomicInt) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int, rhs: AtomicInt) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int, rhs: AtomicInt) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int, rhs: AtomicInt) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int, rhs: AtomicInt) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int, rhs: AtomicInt) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int, rhs: AtomicInt) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int, rhs: AtomicInt) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicInt, rhs: AtomicInt) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int, rhs: AtomicInt) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicInt, rhs: Int) {
    lhs.value &= rhs
}

public prefix func +(x: AtomicInt) -> AtomicInt {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicInt) -> AtomicInt {
    return Atomic(-x.value)
}

public prefix func ~(x: AtomicInt) -> AtomicInt {
    return Atomic(~x.value)
}

// typealias for atomic 'Int8'
public typealias AtomicInt8 = Atomic<Int8>

public func +(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicInt8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int8, rhs: AtomicInt8) -> AtomicInt8 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicInt8, rhs: Int8) -> AtomicInt8 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicInt8, rhs: AtomicInt8) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int8, rhs: AtomicInt8) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicInt8, rhs: Int8) {
    lhs.value &= rhs
}

public prefix func +(x: AtomicInt8) -> AtomicInt8 {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicInt8) -> AtomicInt8 {
    return Atomic(-x.value)
}

public prefix func ~(x: AtomicInt8) -> AtomicInt8 {
    return Atomic(~x.value)
}

// typealias for atomic 'Int16'
public typealias AtomicInt16 = Atomic<Int16>

public func +(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicInt16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int16, rhs: AtomicInt16) -> AtomicInt16 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicInt16, rhs: Int16) -> AtomicInt16 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicInt16, rhs: AtomicInt16) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int16, rhs: AtomicInt16) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicInt16, rhs: Int16) {
    lhs.value &= rhs
}

public prefix func +(x: AtomicInt16) -> AtomicInt16 {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicInt16) -> AtomicInt16 {
    return Atomic(-x.value)
}

public prefix func ~(x: AtomicInt16) -> AtomicInt16 {
    return Atomic(~x.value)
}

// typealias for atomic 'Int32'
public typealias AtomicInt32 = Atomic<Int32>

public func +(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicInt32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int32, rhs: AtomicInt32) -> AtomicInt32 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicInt32, rhs: Int32) -> AtomicInt32 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicInt32, rhs: AtomicInt32) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int32, rhs: AtomicInt32) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicInt32, rhs: Int32) {
    lhs.value &= rhs
}

public prefix func +(x: AtomicInt32) -> AtomicInt32 {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicInt32) -> AtomicInt32 {
    return Atomic(-x.value)
}

public prefix func ~(x: AtomicInt32) -> AtomicInt32 {
    return Atomic(~x.value)
}

// typealias for atomic 'Int64'
public typealias AtomicInt64 = Atomic<Int64>

public func +(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicInt64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int64, rhs: AtomicInt64) -> AtomicInt64 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicInt64, rhs: Int64) -> AtomicInt64 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicInt64, rhs: AtomicInt64) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int64, rhs: AtomicInt64) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicInt64, rhs: Int64) {
    lhs.value &= rhs
}

public prefix func +(x: AtomicInt64) -> AtomicInt64 {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicInt64) -> AtomicInt64 {
    return Atomic(-x.value)
}

public prefix func ~(x: AtomicInt64) -> AtomicInt64 {
    return Atomic(~x.value)
}

// typealias for atomic 'UInt'
public typealias AtomicUInt = Atomic<UInt>

public func +(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicUInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt, rhs: AtomicUInt) -> AtomicUInt {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicUInt, rhs: UInt) -> AtomicUInt {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicUInt, rhs: AtomicUInt) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt, rhs: AtomicUInt) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicUInt, rhs: UInt) {
    lhs.value &= rhs
}

// typealias for atomic 'UInt8'
public typealias AtomicUInt8 = Atomic<UInt8>

public func +(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicUInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt8, rhs: AtomicUInt8) -> AtomicUInt8 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicUInt8, rhs: UInt8) -> AtomicUInt8 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicUInt8, rhs: AtomicUInt8) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt8, rhs: AtomicUInt8) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicUInt8, rhs: UInt8) {
    lhs.value &= rhs
}

// typealias for atomic 'UInt16'
public typealias AtomicUInt16 = Atomic<UInt16>

public func +(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicUInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt16, rhs: AtomicUInt16) -> AtomicUInt16 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicUInt16, rhs: UInt16) -> AtomicUInt16 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicUInt16, rhs: AtomicUInt16) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt16, rhs: AtomicUInt16) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicUInt16, rhs: UInt16) {
    lhs.value &= rhs
}

// typealias for atomic 'UInt32'
public typealias AtomicUInt32 = Atomic<UInt32>

public func +(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicUInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt32, rhs: AtomicUInt32) -> AtomicUInt32 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicUInt32, rhs: UInt32) -> AtomicUInt32 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicUInt32, rhs: AtomicUInt32) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt32, rhs: AtomicUInt32) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicUInt32, rhs: UInt32) {
    lhs.value &= rhs
}

// typealias for atomic 'UInt64'
public typealias AtomicUInt64 = Atomic<UInt64>

public func +(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AtomicUInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt64, rhs: AtomicUInt64) -> AtomicUInt64 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AtomicUInt64, rhs: UInt64) -> AtomicUInt64 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value /= rhs
}

public func %=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs %= rhs.value
}

public func %=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs |= rhs.value
}

public func |=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value |= rhs
}

public func &=(lhs: inout AtomicUInt64, rhs: AtomicUInt64) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt64, rhs: AtomicUInt64) {
    lhs &= rhs.value
}

public func &=(lhs: inout AtomicUInt64, rhs: UInt64) {
    lhs.value &= rhs
}

// typealias for atomic 'Double'
public typealias AtomicDouble = Atomic<Double>

public func +(lhs: AtomicDouble, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Double, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicDouble, rhs: Double) -> AtomicDouble {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicDouble, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Double, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicDouble, rhs: Double) -> AtomicDouble {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicDouble, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Double, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicDouble, rhs: Double) -> AtomicDouble {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicDouble, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Double, rhs: AtomicDouble) -> AtomicDouble {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicDouble, rhs: Double) -> AtomicDouble {
    return Atomic(lhs.value / rhs)
}

public func +=(lhs: inout AtomicDouble, rhs: AtomicDouble) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Double, rhs: AtomicDouble) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicDouble, rhs: Double) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicDouble, rhs: AtomicDouble) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Double, rhs: AtomicDouble) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicDouble, rhs: Double) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicDouble, rhs: AtomicDouble) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Double, rhs: AtomicDouble) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicDouble, rhs: Double) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicDouble, rhs: AtomicDouble) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Double, rhs: AtomicDouble) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicDouble, rhs: Double) {
    lhs.value /= rhs
}

public prefix func +(x: AtomicDouble) -> AtomicDouble {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicDouble) -> AtomicDouble {
    return Atomic(-x.value)
}

// typealias for atomic 'Float'
public typealias AtomicFloat = Atomic<Float>

public func +(lhs: AtomicFloat, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Float, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicFloat, rhs: Float) -> AtomicFloat {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicFloat, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Float, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicFloat, rhs: Float) -> AtomicFloat {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicFloat, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Float, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicFloat, rhs: Float) -> AtomicFloat {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicFloat, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Float, rhs: AtomicFloat) -> AtomicFloat {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicFloat, rhs: Float) -> AtomicFloat {
    return Atomic(lhs.value / rhs)
}

public func +=(lhs: inout AtomicFloat, rhs: AtomicFloat) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Float, rhs: AtomicFloat) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicFloat, rhs: Float) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicFloat, rhs: AtomicFloat) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Float, rhs: AtomicFloat) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicFloat, rhs: Float) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicFloat, rhs: AtomicFloat) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Float, rhs: AtomicFloat) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicFloat, rhs: Float) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicFloat, rhs: AtomicFloat) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Float, rhs: AtomicFloat) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicFloat, rhs: Float) {
    lhs.value /= rhs
}

public prefix func +(x: AtomicFloat) -> AtomicFloat {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicFloat) -> AtomicFloat {
    return Atomic(-x.value)
}

// typealias for atomic 'Float80'
public typealias AtomicFloat80 = Atomic<Float80>

public func +(lhs: AtomicFloat80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Float80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicFloat80, rhs: Float80) -> AtomicFloat80 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AtomicFloat80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Float80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AtomicFloat80, rhs: Float80) -> AtomicFloat80 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AtomicFloat80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Float80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AtomicFloat80, rhs: Float80) -> AtomicFloat80 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AtomicFloat80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Float80, rhs: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AtomicFloat80, rhs: Float80) -> AtomicFloat80 {
    return Atomic(lhs.value / rhs)
}

public func +=(lhs: inout AtomicFloat80, rhs: AtomicFloat80) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Float80, rhs: AtomicFloat80) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicFloat80, rhs: Float80) {
    lhs.value += rhs
}

public func -=(lhs: inout AtomicFloat80, rhs: AtomicFloat80) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Float80, rhs: AtomicFloat80) {
    lhs -= rhs.value
}

public func -=(lhs: inout AtomicFloat80, rhs: Float80) {
    lhs.value -= rhs
}

public func *=(lhs: inout AtomicFloat80, rhs: AtomicFloat80) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Float80, rhs: AtomicFloat80) {
    lhs *= rhs.value
}

public func *=(lhs: inout AtomicFloat80, rhs: Float80) {
    lhs.value *= rhs
}

public func /=(lhs: inout AtomicFloat80, rhs: AtomicFloat80) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Float80, rhs: AtomicFloat80) {
    lhs /= rhs.value
}

public func /=(lhs: inout AtomicFloat80, rhs: Float80) {
    lhs.value /= rhs
}

public prefix func +(x: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(+x.value)
}

public prefix func -(x: AtomicFloat80) -> AtomicFloat80 {
    return Atomic(-x.value)
}

// Atomic typealias for 'String'
public typealias AtomicString = Atomic<String>

public func +(lhs: AtomicString, rhs: AtomicString) -> AtomicString {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: String, rhs: AtomicString) -> AtomicString {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AtomicString, rhs: String) -> AtomicString {
    return Atomic(lhs.value + rhs)
}

public func +=(lhs: inout AtomicString, rhs: AtomicString) {
    lhs.value += rhs.value
}

public func +=(lhs: inout String, rhs: AtomicString) {
    lhs += rhs.value
}

public func +=(lhs: inout AtomicString, rhs: String) {
    lhs.value += rhs
}

// Atomic typealias for 'Bool'
public typealias AtomicBool = Atomic<Bool>

public func &&(lhs: AtomicBool, rhs: AtomicBool) -> Bool {
    return (lhs.value && rhs.value)
}

public func ||(lhs: AtomicBool, rhs: AtomicBool) -> Bool {
    return (lhs.value || rhs.value)
}

public prefix func !(x: AtomicBool) -> AtomicBool {
    return Atomic(!x.value)
}

// Atomic typealias for 'Character'
public typealias AtomicCharacter = Atomic<Character>

// Atomic typealias for 'UnicodeScalar'
public typealias AtomicUnicodeScalar = Atomic<UnicodeScalar>

// Atomic typealias for 'C' types
public typealias AtomicCBool = Atomic<CBool>
public typealias AtomicCChar = Atomic<CChar>
public typealias AtomicCChar16 = Atomic<CChar16>
public typealias AtomicCChar32 = Atomic<CChar32>
public typealias AtomicCDouble = Atomic<CDouble>
public typealias AtomicCFloat = Atomic<CFloat>
public typealias AtomicCInt = Atomic<CInt>
public typealias AtomicCLong = Atomic<CLong>
public typealias AtomicCLongLong = Atomic<CLongLong>
public typealias AtomicCShort = Atomic<CShort>
public typealias AtomicCSignedChar = Atomic<CSignedChar>
public typealias AtomicCUnsignedChar = Atomic<CUnsignedChar>
public typealias AtomicCUnsignedInt = Atomic<CUnsignedInt>
public typealias AtomicCUnsignedLong = Atomic<CUnsignedLong>
public typealias AtomicCUnsignedLongLong = Atomic<CUnsignedLongLong>
public typealias AtomicCUnsignedShort = Atomic<CUnsignedShort>
public typealias AtomicCWideChar = Atomic<CWideChar>
