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

// Atomic typealias for 'Int'
public typealias AInt = Atomic<Int>

public func +(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AInt, rhs: AInt) -> AInt {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int, rhs: AInt) -> AInt {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AInt, rhs: Int) -> AInt {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AInt, rhs: AInt) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int, rhs: AInt) {
    lhs += rhs.value
}

public func +=(lhs: inout AInt, rhs: Int) {
    lhs.value += rhs
}

public func -=(lhs: inout AInt, rhs: AInt) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int, rhs: AInt) {
    lhs -= rhs.value
}

public func -=(lhs: inout AInt, rhs: Int) {
    lhs.value -= rhs
}

public func *=(lhs: inout AInt, rhs: AInt) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int, rhs: AInt) {
    lhs *= rhs.value
}

public func *=(lhs: inout AInt, rhs: Int) {
    lhs.value *= rhs
}

public func /=(lhs: inout AInt, rhs: AInt) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int, rhs: AInt) {
    lhs /= rhs.value
}

public func /=(lhs: inout AInt, rhs: Int) {
    lhs.value /= rhs
}

public func %=(lhs: inout AInt, rhs: AInt) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int, rhs: AInt) {
    lhs %= rhs.value
}

public func %=(lhs: inout AInt, rhs: Int) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AInt, rhs: AInt) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int, rhs: AInt) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AInt, rhs: Int) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AInt, rhs: AInt) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int, rhs: AInt) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AInt, rhs: Int) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AInt, rhs: AInt) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int, rhs: AInt) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AInt, rhs: Int) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AInt, rhs: AInt) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int, rhs: AInt) {
    lhs |= rhs.value
}

public func |=(lhs: inout AInt, rhs: Int) {
    lhs.value |= rhs
}

public func &=(lhs: inout AInt, rhs: AInt) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int, rhs: AInt) {
    lhs &= rhs.value
}

public func &=(lhs: inout AInt, rhs: Int) {
    lhs.value &= rhs
}

public prefix func +(x: AInt) -> AInt {
    return Atomic(+x.value)
}

public prefix func -(x: AInt) -> AInt {
    return Atomic(-x.value)
}

public prefix func ~(x: AInt) -> AInt {
    return Atomic(~x.value)
}

// Atomic typealias for 'Int8'
public typealias AInt8 = Atomic<Int8>

public func +(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AInt8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int8, rhs: AInt8) -> AInt8 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AInt8, rhs: Int8) -> AInt8 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int8, rhs: AInt8) {
    lhs += rhs.value
}

public func +=(lhs: inout AInt8, rhs: Int8) {
    lhs.value += rhs
}

public func -=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int8, rhs: AInt8) {
    lhs -= rhs.value
}

public func -=(lhs: inout AInt8, rhs: Int8) {
    lhs.value -= rhs
}

public func *=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int8, rhs: AInt8) {
    lhs *= rhs.value
}

public func *=(lhs: inout AInt8, rhs: Int8) {
    lhs.value *= rhs
}

public func /=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int8, rhs: AInt8) {
    lhs /= rhs.value
}

public func /=(lhs: inout AInt8, rhs: Int8) {
    lhs.value /= rhs
}

public func %=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int8, rhs: AInt8) {
    lhs %= rhs.value
}

public func %=(lhs: inout AInt8, rhs: Int8) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int8, rhs: AInt8) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AInt8, rhs: Int8) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int8, rhs: AInt8) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AInt8, rhs: Int8) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int8, rhs: AInt8) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AInt8, rhs: Int8) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int8, rhs: AInt8) {
    lhs |= rhs.value
}

public func |=(lhs: inout AInt8, rhs: Int8) {
    lhs.value |= rhs
}

public func &=(lhs: inout AInt8, rhs: AInt8) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int8, rhs: AInt8) {
    lhs &= rhs.value
}

public func &=(lhs: inout AInt8, rhs: Int8) {
    lhs.value &= rhs
}

public prefix func +(x: AInt8) -> AInt8 {
    return Atomic(+x.value)
}

public prefix func -(x: AInt8) -> AInt8 {
    return Atomic(-x.value)
}

public prefix func ~(x: AInt8) -> AInt8 {
    return Atomic(~x.value)
}

// Atomic typealias for 'Int16'
public typealias AInt16 = Atomic<Int16>

public func +(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AInt16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int16, rhs: AInt16) -> AInt16 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AInt16, rhs: Int16) -> AInt16 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int16, rhs: AInt16) {
    lhs += rhs.value
}

public func +=(lhs: inout AInt16, rhs: Int16) {
    lhs.value += rhs
}

public func -=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int16, rhs: AInt16) {
    lhs -= rhs.value
}

public func -=(lhs: inout AInt16, rhs: Int16) {
    lhs.value -= rhs
}

public func *=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int16, rhs: AInt16) {
    lhs *= rhs.value
}

public func *=(lhs: inout AInt16, rhs: Int16) {
    lhs.value *= rhs
}

public func /=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int16, rhs: AInt16) {
    lhs /= rhs.value
}

public func /=(lhs: inout AInt16, rhs: Int16) {
    lhs.value /= rhs
}

public func %=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int16, rhs: AInt16) {
    lhs %= rhs.value
}

public func %=(lhs: inout AInt16, rhs: Int16) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int16, rhs: AInt16) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AInt16, rhs: Int16) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int16, rhs: AInt16) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AInt16, rhs: Int16) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int16, rhs: AInt16) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AInt16, rhs: Int16) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int16, rhs: AInt16) {
    lhs |= rhs.value
}

public func |=(lhs: inout AInt16, rhs: Int16) {
    lhs.value |= rhs
}

public func &=(lhs: inout AInt16, rhs: AInt16) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int16, rhs: AInt16) {
    lhs &= rhs.value
}

public func &=(lhs: inout AInt16, rhs: Int16) {
    lhs.value &= rhs
}

public prefix func +(x: AInt16) -> AInt16 {
    return Atomic(+x.value)
}

public prefix func -(x: AInt16) -> AInt16 {
    return Atomic(-x.value)
}

public prefix func ~(x: AInt16) -> AInt16 {
    return Atomic(~x.value)
}

// Atomic typealias for 'Int32'
public typealias AInt32 = Atomic<Int32>

public func +(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AInt32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int32, rhs: AInt32) -> AInt32 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AInt32, rhs: Int32) -> AInt32 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int32, rhs: AInt32) {
    lhs += rhs.value
}

public func +=(lhs: inout AInt32, rhs: Int32) {
    lhs.value += rhs
}

public func -=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int32, rhs: AInt32) {
    lhs -= rhs.value
}

public func -=(lhs: inout AInt32, rhs: Int32) {
    lhs.value -= rhs
}

public func *=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int32, rhs: AInt32) {
    lhs *= rhs.value
}

public func *=(lhs: inout AInt32, rhs: Int32) {
    lhs.value *= rhs
}

public func /=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int32, rhs: AInt32) {
    lhs /= rhs.value
}

public func /=(lhs: inout AInt32, rhs: Int32) {
    lhs.value /= rhs
}

public func %=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int32, rhs: AInt32) {
    lhs %= rhs.value
}

public func %=(lhs: inout AInt32, rhs: Int32) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int32, rhs: AInt32) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AInt32, rhs: Int32) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int32, rhs: AInt32) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AInt32, rhs: Int32) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int32, rhs: AInt32) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AInt32, rhs: Int32) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int32, rhs: AInt32) {
    lhs |= rhs.value
}

public func |=(lhs: inout AInt32, rhs: Int32) {
    lhs.value |= rhs
}

public func &=(lhs: inout AInt32, rhs: AInt32) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int32, rhs: AInt32) {
    lhs &= rhs.value
}

public func &=(lhs: inout AInt32, rhs: Int32) {
    lhs.value &= rhs
}

public prefix func +(x: AInt32) -> AInt32 {
    return Atomic(+x.value)
}

public prefix func -(x: AInt32) -> AInt32 {
    return Atomic(-x.value)
}

public prefix func ~(x: AInt32) -> AInt32 {
    return Atomic(~x.value)
}

// Atomic typealias for 'Int64'
public typealias AInt64 = Atomic<Int64>

public func +(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AInt64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: Int64, rhs: AInt64) -> AInt64 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AInt64, rhs: Int64) -> AInt64 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Int64, rhs: AInt64) {
    lhs += rhs.value
}

public func +=(lhs: inout AInt64, rhs: Int64) {
    lhs.value += rhs
}

public func -=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Int64, rhs: AInt64) {
    lhs -= rhs.value
}

public func -=(lhs: inout AInt64, rhs: Int64) {
    lhs.value -= rhs
}

public func *=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Int64, rhs: AInt64) {
    lhs *= rhs.value
}

public func *=(lhs: inout AInt64, rhs: Int64) {
    lhs.value *= rhs
}

public func /=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Int64, rhs: AInt64) {
    lhs /= rhs.value
}

public func /=(lhs: inout AInt64, rhs: Int64) {
    lhs.value /= rhs
}

public func %=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout Int64, rhs: AInt64) {
    lhs %= rhs.value
}

public func %=(lhs: inout AInt64, rhs: Int64) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout Int64, rhs: AInt64) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AInt64, rhs: Int64) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout Int64, rhs: AInt64) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AInt64, rhs: Int64) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout Int64, rhs: AInt64) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AInt64, rhs: Int64) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout Int64, rhs: AInt64) {
    lhs |= rhs.value
}

public func |=(lhs: inout AInt64, rhs: Int64) {
    lhs.value |= rhs
}

public func &=(lhs: inout AInt64, rhs: AInt64) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout Int64, rhs: AInt64) {
    lhs &= rhs.value
}

public func &=(lhs: inout AInt64, rhs: Int64) {
    lhs.value &= rhs
}

public prefix func +(x: AInt64) -> AInt64 {
    return Atomic(+x.value)
}

public prefix func -(x: AInt64) -> AInt64 {
    return Atomic(-x.value)
}

public prefix func ~(x: AInt64) -> AInt64 {
    return Atomic(~x.value)
}

// Atomic typealias for 'UInt'
public typealias AUInt = Atomic<UInt>

public func +(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AUInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt, rhs: AUInt) -> AUInt {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AUInt, rhs: UInt) -> AUInt {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt, rhs: AUInt) {
    lhs += rhs.value
}

public func +=(lhs: inout AUInt, rhs: UInt) {
    lhs.value += rhs
}

public func -=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt, rhs: AUInt) {
    lhs -= rhs.value
}

public func -=(lhs: inout AUInt, rhs: UInt) {
    lhs.value -= rhs
}

public func *=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt, rhs: AUInt) {
    lhs *= rhs.value
}

public func *=(lhs: inout AUInt, rhs: UInt) {
    lhs.value *= rhs
}

public func /=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt, rhs: AUInt) {
    lhs /= rhs.value
}

public func /=(lhs: inout AUInt, rhs: UInt) {
    lhs.value /= rhs
}

public func %=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt, rhs: AUInt) {
    lhs %= rhs.value
}

public func %=(lhs: inout AUInt, rhs: UInt) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt, rhs: AUInt) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AUInt, rhs: UInt) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt, rhs: AUInt) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AUInt, rhs: UInt) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt, rhs: AUInt) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AUInt, rhs: UInt) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt, rhs: AUInt) {
    lhs |= rhs.value
}

public func |=(lhs: inout AUInt, rhs: UInt) {
    lhs.value |= rhs
}

public func &=(lhs: inout AUInt, rhs: AUInt) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt, rhs: AUInt) {
    lhs &= rhs.value
}

public func &=(lhs: inout AUInt, rhs: UInt) {
    lhs.value &= rhs
}

// Atomic typealias for 'UInt8'
public typealias AUInt8 = Atomic<UInt8>

public func +(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt8, rhs: AUInt8) {
    lhs += rhs.value
}

public func +=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value += rhs
}

public func -=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt8, rhs: AUInt8) {
    lhs -= rhs.value
}

public func -=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value -= rhs
}

public func *=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt8, rhs: AUInt8) {
    lhs *= rhs.value
}

public func *=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value *= rhs
}

public func /=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt8, rhs: AUInt8) {
    lhs /= rhs.value
}

public func /=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value /= rhs
}

public func %=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt8, rhs: AUInt8) {
    lhs %= rhs.value
}

public func %=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt8, rhs: AUInt8) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt8, rhs: AUInt8) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt8, rhs: AUInt8) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt8, rhs: AUInt8) {
    lhs |= rhs.value
}

public func |=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value |= rhs
}

public func &=(lhs: inout AUInt8, rhs: AUInt8) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt8, rhs: AUInt8) {
    lhs &= rhs.value
}

public func &=(lhs: inout AUInt8, rhs: UInt8) {
    lhs.value &= rhs
}

// Atomic typealias for 'UInt16'
public typealias AUInt16 = Atomic<UInt16>

public func +(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt16, rhs: AUInt16) {
    lhs += rhs.value
}

public func +=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value += rhs
}

public func -=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt16, rhs: AUInt16) {
    lhs -= rhs.value
}

public func -=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value -= rhs
}

public func *=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt16, rhs: AUInt16) {
    lhs *= rhs.value
}

public func *=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value *= rhs
}

public func /=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt16, rhs: AUInt16) {
    lhs /= rhs.value
}

public func /=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value /= rhs
}

public func %=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt16, rhs: AUInt16) {
    lhs %= rhs.value
}

public func %=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt16, rhs: AUInt16) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt16, rhs: AUInt16) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt16, rhs: AUInt16) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt16, rhs: AUInt16) {
    lhs |= rhs.value
}

public func |=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value |= rhs
}

public func &=(lhs: inout AUInt16, rhs: AUInt16) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt16, rhs: AUInt16) {
    lhs &= rhs.value
}

public func &=(lhs: inout AUInt16, rhs: UInt16) {
    lhs.value &= rhs
}

// Atomic typealias for 'UInt32'
public typealias AUInt32 = Atomic<UInt32>

public func +(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt32, rhs: AUInt32) {
    lhs += rhs.value
}

public func +=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value += rhs
}

public func -=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt32, rhs: AUInt32) {
    lhs -= rhs.value
}

public func -=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value -= rhs
}

public func *=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt32, rhs: AUInt32) {
    lhs *= rhs.value
}

public func *=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value *= rhs
}

public func /=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt32, rhs: AUInt32) {
    lhs /= rhs.value
}

public func /=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value /= rhs
}

public func %=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt32, rhs: AUInt32) {
    lhs %= rhs.value
}

public func %=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt32, rhs: AUInt32) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt32, rhs: AUInt32) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt32, rhs: AUInt32) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt32, rhs: AUInt32) {
    lhs |= rhs.value
}

public func |=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value |= rhs
}

public func &=(lhs: inout AUInt32, rhs: AUInt32) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt32, rhs: AUInt32) {
    lhs &= rhs.value
}

public func &=(lhs: inout AUInt32, rhs: UInt32) {
    lhs.value &= rhs
}

// Atomic typealias for 'UInt64'
public typealias AUInt64 = Atomic<UInt64>

public func +(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value / rhs)
}

public func %(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value % rhs.value)
}

public func %(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs % rhs.value)
}

public func %(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value % rhs)
}

public func <<(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value << rhs.value)
}

public func <<(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs << rhs.value)
}

public func <<(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value << rhs)
}

public func >>(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value >> rhs.value)
}

public func >>(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs >> rhs.value)
}

public func >>(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value >> rhs)
}

public func ^(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value ^ rhs.value)
}

public func ^(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs ^ rhs.value)
}

public func ^(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value ^ rhs)
}

public func |(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value | rhs.value)
}

public func |(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs | rhs.value)
}

public func |(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value | rhs)
}

public func &(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value & rhs.value)
}

public func &(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs & rhs.value)
}

public func &(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value & rhs)
}

public func &+(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value &+ rhs.value)
}

public func &+(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs &+ rhs.value)
}

public func &+(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value &+ rhs)
}

public func &-(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value &- rhs.value)
}

public func &-(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs &- rhs.value)
}

public func &-(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value &- rhs)
}

public func &*(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs.value &* rhs.value)
}

public func &*(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    return Atomic(lhs &* rhs.value)
}

public func &*(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    return Atomic(lhs.value &* rhs)
}

public func +=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value += rhs.value
}

public func +=(lhs: inout UInt64, rhs: AUInt64) {
    lhs += rhs.value
}

public func +=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value += rhs
}

public func -=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout UInt64, rhs: AUInt64) {
    lhs -= rhs.value
}

public func -=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value -= rhs
}

public func *=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout UInt64, rhs: AUInt64) {
    lhs *= rhs.value
}

public func *=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value *= rhs
}

public func /=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout UInt64, rhs: AUInt64) {
    lhs /= rhs.value
}

public func /=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value /= rhs
}

public func %=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value %= rhs.value
}

public func %=(lhs: inout UInt64, rhs: AUInt64) {
    lhs %= rhs.value
}

public func %=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value %= rhs
}

public func <<=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value <<= rhs.value
}

public func <<=(lhs: inout UInt64, rhs: AUInt64) {
    lhs <<= rhs.value
}

public func <<=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value <<= rhs
}

public func >>=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value >>= rhs.value
}

public func >>=(lhs: inout UInt64, rhs: AUInt64) {
    lhs >>= rhs.value
}

public func >>=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value >>= rhs
}

public func ^=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value ^= rhs.value
}

public func ^=(lhs: inout UInt64, rhs: AUInt64) {
    lhs ^= rhs.value
}

public func ^=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value ^= rhs
}

public func |=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value |= rhs.value
}

public func |=(lhs: inout UInt64, rhs: AUInt64) {
    lhs |= rhs.value
}

public func |=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value |= rhs
}

public func &=(lhs: inout AUInt64, rhs: AUInt64) {
    lhs.value &= rhs.value
}

public func &=(lhs: inout UInt64, rhs: AUInt64) {
    lhs &= rhs.value
}

public func &=(lhs: inout AUInt64, rhs: UInt64) {
    lhs.value &= rhs
}

// Atomic typealias for 'Double'
public typealias ADouble = Atomic<Double>

public func +(lhs: ADouble, rhs: ADouble) -> ADouble {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Double, rhs: ADouble) -> ADouble {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: ADouble, rhs: Double) -> ADouble {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: ADouble, rhs: ADouble) -> ADouble {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Double, rhs: ADouble) -> ADouble {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: ADouble, rhs: Double) -> ADouble {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: ADouble, rhs: ADouble) -> ADouble {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Double, rhs: ADouble) -> ADouble {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: ADouble, rhs: Double) -> ADouble {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: ADouble, rhs: ADouble) -> ADouble {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Double, rhs: ADouble) -> ADouble {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: ADouble, rhs: Double) -> ADouble {
    return Atomic(lhs.value / rhs)
}

public func +=(lhs: inout ADouble, rhs: ADouble) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Double, rhs: ADouble) {
    lhs += rhs.value
}

public func +=(lhs: inout ADouble, rhs: Double) {
    lhs.value += rhs
}

public func -=(lhs: inout ADouble, rhs: ADouble) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Double, rhs: ADouble) {
    lhs -= rhs.value
}

public func -=(lhs: inout ADouble, rhs: Double) {
    lhs.value -= rhs
}

public func *=(lhs: inout ADouble, rhs: ADouble) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Double, rhs: ADouble) {
    lhs *= rhs.value
}

public func *=(lhs: inout ADouble, rhs: Double) {
    lhs.value *= rhs
}

public func /=(lhs: inout ADouble, rhs: ADouble) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Double, rhs: ADouble) {
    lhs /= rhs.value
}

public func /=(lhs: inout ADouble, rhs: Double) {
    lhs.value /= rhs
}

public prefix func +(x: ADouble) -> ADouble {
    return Atomic(+x.value)
}

public prefix func -(x: ADouble) -> ADouble {
    return Atomic(-x.value)
}

// Atomic typealias for 'Float'
public typealias AFloat = Atomic<Float>

public func +(lhs: AFloat, rhs: AFloat) -> AFloat {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Float, rhs: AFloat) -> AFloat {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AFloat, rhs: Float) -> AFloat {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AFloat, rhs: AFloat) -> AFloat {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Float, rhs: AFloat) -> AFloat {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AFloat, rhs: Float) -> AFloat {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AFloat, rhs: AFloat) -> AFloat {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Float, rhs: AFloat) -> AFloat {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AFloat, rhs: Float) -> AFloat {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AFloat, rhs: AFloat) -> AFloat {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Float, rhs: AFloat) -> AFloat {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AFloat, rhs: Float) -> AFloat {
    return Atomic(lhs.value / rhs)
}

public func +=(lhs: inout AFloat, rhs: AFloat) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Float, rhs: AFloat) {
    lhs += rhs.value
}

public func +=(lhs: inout AFloat, rhs: Float) {
    lhs.value += rhs
}

public func -=(lhs: inout AFloat, rhs: AFloat) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Float, rhs: AFloat) {
    lhs -= rhs.value
}

public func -=(lhs: inout AFloat, rhs: Float) {
    lhs.value -= rhs
}

public func *=(lhs: inout AFloat, rhs: AFloat) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Float, rhs: AFloat) {
    lhs *= rhs.value
}

public func *=(lhs: inout AFloat, rhs: Float) {
    lhs.value *= rhs
}

public func /=(lhs: inout AFloat, rhs: AFloat) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Float, rhs: AFloat) {
    lhs /= rhs.value
}

public func /=(lhs: inout AFloat, rhs: Float) {
    lhs.value /= rhs
}

public prefix func +(x: AFloat) -> AFloat {
    return Atomic(+x.value)
}

public prefix func -(x: AFloat) -> AFloat {
    return Atomic(-x.value)
}

// Atomic typealias for 'Float80'
public typealias AFloat80 = Atomic<Float80>

public func +(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    return Atomic(lhs.value + rhs)
}

public func -(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs.value - rhs.value)
}

public func -(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs - rhs.value)
}

public func -(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    return Atomic(lhs.value - rhs)
}

public func *(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs.value * rhs.value)
}

public func *(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs * rhs.value)
}

public func *(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    return Atomic(lhs.value * rhs)
}

public func /(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs.value / rhs.value)
}

public func /(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    return Atomic(lhs / rhs.value)
}

public func /(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    return Atomic(lhs.value / rhs)
}

public func +=(lhs: inout AFloat80, rhs: AFloat80) {
    lhs.value += rhs.value
}

public func +=(lhs: inout Float80, rhs: AFloat80) {
    lhs += rhs.value
}

public func +=(lhs: inout AFloat80, rhs: Float80) {
    lhs.value += rhs
}

public func -=(lhs: inout AFloat80, rhs: AFloat80) {
    lhs.value -= rhs.value
}

public func -=(lhs: inout Float80, rhs: AFloat80) {
    lhs -= rhs.value
}

public func -=(lhs: inout AFloat80, rhs: Float80) {
    lhs.value -= rhs
}

public func *=(lhs: inout AFloat80, rhs: AFloat80) {
    lhs.value *= rhs.value
}

public func *=(lhs: inout Float80, rhs: AFloat80) {
    lhs *= rhs.value
}

public func *=(lhs: inout AFloat80, rhs: Float80) {
    lhs.value *= rhs
}

public func /=(lhs: inout AFloat80, rhs: AFloat80) {
    lhs.value /= rhs.value
}

public func /=(lhs: inout Float80, rhs: AFloat80) {
    lhs /= rhs.value
}

public func /=(lhs: inout AFloat80, rhs: Float80) {
    lhs.value /= rhs
}

public prefix func +(x: AFloat80) -> AFloat80 {
    return Atomic(+x.value)
}

public prefix func -(x: AFloat80) -> AFloat80 {
    return Atomic(-x.value)
}

// Atomic typealias for 'String'
public typealias AString = Atomic<String>

public func +(lhs: AString, rhs: AString) -> AString {
    return Atomic(lhs.value + rhs.value)
}

public func +(lhs: String, rhs: AString) -> AString {
    return Atomic(lhs + rhs.value)
}

public func +(lhs: AString, rhs: String) -> AString {
    return Atomic(lhs.value + rhs)
}

public func +=(lhs: inout AString, rhs: AString) {
    lhs.value += rhs.value
}

public func +=(lhs: inout String, rhs: AString) {
    lhs += rhs.value
}

public func +=(lhs: inout AString, rhs: String) {
    lhs.value += rhs
}

// Atomic typealias for 'Bool'
public typealias ABool = Atomic<Bool>

public func &&(lhs: Atomic<Bool>, rhs: Atomic<Bool>) -> Bool {
    return (lhs.value && rhs.value)
}

public func ||(lhs: Atomic<Bool>, rhs: Atomic<Bool>) -> Bool {
    return (lhs.value || rhs.value)
}

public prefix func !(x: Atomic<Bool>) -> Atomic<Bool> {
    return Atomic(!x.value)
}

// Atomic typealias for 'Character'
public typealias ACharacter = Atomic<Character>

// Atomic typealias for 'UnicodeScalar'
public typealias AUnicodeScalar = Atomic<UnicodeScalar>

// Atomic typealias for 'C' types
public typealias ACBool = Atomic<CBool>
public typealias ACChar = Atomic<CChar>
public typealias ACChar16 = Atomic<CChar16>
public typealias ACChar32 = Atomic<CChar32>
public typealias ACDouble = Atomic<CDouble>
public typealias ACFloat = Atomic<CFloat>
public typealias ACInt = Atomic<CInt>
public typealias ACLong = Atomic<CLong>
public typealias ACLongLong = Atomic<CLongLong>
public typealias ACShort = Atomic<CShort>
public typealias ACSignedChar = Atomic<CSignedChar>
public typealias ACUnsignedChar = Atomic<CUnsignedChar>
public typealias ACUnsignedInt = Atomic<CUnsignedInt>
public typealias ACUnsignedLong = Atomic<CUnsignedLong>
public typealias ACUnsignedLongLong = Atomic<CUnsignedLongLong>
public typealias ACUnsignedShort = Atomic<CUnsignedShort>
public typealias ACWideChar = Atomic<CWideChar>
