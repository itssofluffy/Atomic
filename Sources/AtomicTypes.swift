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
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AInt, rhs: AInt) -> AInt {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: Int, rhs: AInt) -> AInt {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AInt, rhs: Int) -> AInt {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AInt, rhs: AInt) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout Int, rhs: AInt) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AInt, rhs: Int) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

public prefix func +(x: AInt) -> AInt {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: AInt) -> AInt {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

public prefix func ~(x: AInt) -> AInt {
    lock(x)
    let result = ~x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'Int8'
public typealias AInt8 = Atomic<Int8>

public func +(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AInt8, rhs: AInt8) -> AInt8 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: Int8, rhs: AInt8) -> AInt8 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AInt8, rhs: Int8) -> AInt8 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AInt8, rhs: AInt8) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout Int8, rhs: AInt8) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AInt8, rhs: Int8) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

public prefix func +(x: AInt8) -> AInt8 {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: AInt8) -> AInt8 {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

public prefix func ~(x: AInt8) -> AInt8 {
    lock(x)
    let result = ~x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'Int16'
public typealias AInt16 = Atomic<Int16>

public func +(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AInt16, rhs: AInt16) -> AInt16 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: Int16, rhs: AInt16) -> AInt16 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AInt16, rhs: Int16) -> AInt16 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AInt16, rhs: AInt16) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout Int16, rhs: AInt16) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AInt16, rhs: Int16) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

public prefix func +(x: AInt16) -> AInt16 {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: AInt16) -> AInt16 {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

public prefix func ~(x: AInt16) -> AInt16 {
    lock(x)
    let result = ~x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'Int32'
public typealias AInt32 = Atomic<Int32>

public func +(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AInt32, rhs: AInt32) -> AInt32 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: Int32, rhs: AInt32) -> AInt32 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AInt32, rhs: Int32) -> AInt32 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AInt32, rhs: AInt32) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout Int32, rhs: AInt32) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AInt32, rhs: Int32) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

public prefix func +(x: AInt32) -> AInt32 {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: AInt32) -> AInt32 {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

public prefix func ~(x: AInt32) -> AInt32 {
    lock(x)
    let result = ~x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'Int64'
public typealias AInt64 = Atomic<Int64>

public func +(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AInt64, rhs: AInt64) -> AInt64 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: Int64, rhs: AInt64) -> AInt64 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AInt64, rhs: Int64) -> AInt64 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AInt64, rhs: AInt64) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout Int64, rhs: AInt64) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AInt64, rhs: Int64) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

public prefix func +(x: AInt64) -> AInt64 {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: AInt64) -> AInt64 {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

public prefix func ~(x: AInt64) -> AInt64 {
    lock(x)
    let result = ~x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'UInt'
public typealias AUInt = Atomic<UInt>

public func +(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AUInt, rhs: AUInt) -> AUInt {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: UInt, rhs: AUInt) -> AUInt {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AUInt, rhs: UInt) -> AUInt {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AUInt, rhs: AUInt) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout UInt, rhs: AUInt) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AUInt, rhs: UInt) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

// Atomic typealias for 'UInt8'
public typealias AUInt8 = Atomic<UInt8>

public func +(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AUInt8, rhs: AUInt8) -> AUInt8 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: UInt8, rhs: AUInt8) -> AUInt8 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AUInt8, rhs: UInt8) -> AUInt8 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AUInt8, rhs: AUInt8) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout UInt8, rhs: AUInt8) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AUInt8, rhs: UInt8) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

// Atomic typealias for 'UInt16'
public typealias AUInt16 = Atomic<UInt16>

public func +(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AUInt16, rhs: AUInt16) -> AUInt16 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: UInt16, rhs: AUInt16) -> AUInt16 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AUInt16, rhs: UInt16) -> AUInt16 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AUInt16, rhs: AUInt16) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout UInt16, rhs: AUInt16) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AUInt16, rhs: UInt16) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

// Atomic typealias for 'UInt32'
public typealias AUInt32 = Atomic<UInt32>

public func +(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AUInt32, rhs: AUInt32) -> AUInt32 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: UInt32, rhs: AUInt32) -> AUInt32 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AUInt32, rhs: UInt32) -> AUInt32 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AUInt32, rhs: AUInt32) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout UInt32, rhs: AUInt32) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AUInt32, rhs: UInt32) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

// Atomic typealias for 'UInt64'
public typealias AUInt64 = Atomic<UInt64>

public func +(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func %(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value % rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func %(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs % rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func %(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value % rhs
    unlock(lhs)

    return Atomic(result)
}

public func <<(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value << rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func <<(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs << rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func <<(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value << rhs
    unlock(lhs)

    return Atomic(result)
}

public func >>(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value >> rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func >>(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs >> rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func >>(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value >> rhs
    unlock(lhs)

    return Atomic(result)
}

public func ^(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value ^ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func ^(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs ^ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func ^(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value ^ rhs
    unlock(lhs)

    return Atomic(result)
}

public func |(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value | rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func |(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs | rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func |(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value | rhs
    unlock(lhs)

    return Atomic(result)
}

public func &(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value & rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs & rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value & rhs
    unlock(lhs)

    return Atomic(result)
}

public func &+(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value &+ rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &+(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs &+ rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &+(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value &+ rhs
    unlock(lhs)

    return Atomic(result)
}

public func &-(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value &- rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &-(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs &- rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &-(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value &- rhs
    unlock(lhs)

    return Atomic(result)
}

public func &*(lhs: AUInt64, rhs: AUInt64) -> AUInt64 {
    lock(lhs, rhs)
    let result = lhs.value &* rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func &*(lhs: UInt64, rhs: AUInt64) -> AUInt64 {
    lock(rhs)
    let result = lhs &* rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func &*(lhs: AUInt64, rhs: UInt64) -> AUInt64 {
    lock(lhs)
    let result = lhs.value &* rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public func %=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value %= rhs.value
    unlock(lhs, rhs)
}

public func %=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs %= rhs.value
    unlock(rhs)
}

public func %=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value %= rhs
    unlock(lhs)
}

public func <<=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value <<= rhs.value
    unlock(lhs, rhs)
}

public func <<=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs <<= rhs.value
    unlock(rhs)
}

public func <<=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value <<= rhs
    unlock(lhs)
}

public func >>=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value >>= rhs.value
    unlock(lhs, rhs)
}

public func >>=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs >>= rhs.value
    unlock(rhs)
}

public func >>=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value >>= rhs
    unlock(lhs)
}

public func ^=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value ^= rhs.value
    unlock(lhs, rhs)
}

public func ^=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs ^= rhs.value
    unlock(rhs)
}

public func ^=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value ^= rhs
    unlock(lhs)
}

public func |=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value |= rhs.value
    unlock(lhs, rhs)
}

public func |=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs |= rhs.value
    unlock(rhs)
}

public func |=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value |= rhs
    unlock(lhs)
}

public func &=(lhs: AUInt64, rhs: AUInt64) {
    lock(lhs, rhs)
    lhs.value &= rhs.value
    unlock(lhs, rhs)
}

public func &=(lhs: inout UInt64, rhs: AUInt64) {
    lock(rhs)
    lhs &= rhs.value
    unlock(rhs)
}

public func &=(lhs: AUInt64, rhs: UInt64) {
    lock(lhs)
    lhs.value &= rhs
    unlock(lhs)
}

// Atomic typealias for 'Double'
public typealias ADouble = Atomic<Double>

public func +(lhs: ADouble, rhs: ADouble) -> ADouble {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Double, rhs: ADouble) -> ADouble {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: ADouble, rhs: Double) -> ADouble {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: ADouble, rhs: ADouble) -> ADouble {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Double, rhs: ADouble) -> ADouble {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: ADouble, rhs: Double) -> ADouble {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: ADouble, rhs: ADouble) -> ADouble {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Double, rhs: ADouble) -> ADouble {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: ADouble, rhs: Double) -> ADouble {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: ADouble, rhs: ADouble) -> ADouble {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Double, rhs: ADouble) -> ADouble {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: ADouble, rhs: Double) -> ADouble {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: ADouble, rhs: ADouble) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Double, rhs: ADouble) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: ADouble, rhs: Double) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: ADouble, rhs: ADouble) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Double, rhs: ADouble) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: ADouble, rhs: Double) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: ADouble, rhs: ADouble) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Double, rhs: ADouble) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: ADouble, rhs: Double) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: ADouble, rhs: ADouble) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Double, rhs: ADouble) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: ADouble, rhs: Double) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public prefix func +(x: ADouble) -> ADouble {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: ADouble) -> ADouble {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'Float'
public typealias AFloat = Atomic<Float>

public func +(lhs: AFloat, rhs: AFloat) -> AFloat {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Float, rhs: AFloat) -> AFloat {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AFloat, rhs: Float) -> AFloat {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AFloat, rhs: AFloat) -> AFloat {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Float, rhs: AFloat) -> AFloat {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AFloat, rhs: Float) -> AFloat {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AFloat, rhs: AFloat) -> AFloat {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Float, rhs: AFloat) -> AFloat {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AFloat, rhs: Float) -> AFloat {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AFloat, rhs: AFloat) -> AFloat {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Float, rhs: AFloat) -> AFloat {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AFloat, rhs: Float) -> AFloat {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AFloat, rhs: AFloat) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Float, rhs: AFloat) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AFloat, rhs: Float) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AFloat, rhs: AFloat) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Float, rhs: AFloat) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AFloat, rhs: Float) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AFloat, rhs: AFloat) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Float, rhs: AFloat) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AFloat, rhs: Float) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AFloat, rhs: AFloat) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Float, rhs: AFloat) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AFloat, rhs: Float) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public prefix func +(x: AFloat) -> AFloat {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: AFloat) -> AFloat {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'Float80'
public typealias AFloat80 = Atomic<Float80>

public func +(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func -(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    lock(lhs, rhs)
    let result = lhs.value - rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func -(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    lock(rhs)
    let result = lhs - rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func -(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    lock(lhs)
    let result = lhs.value - rhs
    unlock(lhs)

    return Atomic(result)
}

public func *(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    lock(lhs, rhs)
    let result = lhs.value * rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func *(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    lock(rhs)
    let result = lhs * rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func *(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    lock(lhs)
    let result = lhs.value * rhs
    unlock(lhs)

    return Atomic(result)
}

public func /(lhs: AFloat80, rhs: AFloat80) -> AFloat80 {
    lock(lhs, rhs)
    let result = lhs.value / rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func /(lhs: Float80, rhs: AFloat80) -> AFloat80 {
    lock(rhs)
    let result = lhs / rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func /(lhs: AFloat80, rhs: Float80) -> AFloat80 {
    lock(lhs)
    let result = lhs.value / rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AFloat80, rhs: AFloat80) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout Float80, rhs: AFloat80) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AFloat80, rhs: Float80) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

public func -=(lhs: AFloat80, rhs: AFloat80) {
    lock(lhs, rhs)
    lhs.value -= rhs.value
    unlock(lhs, rhs)
}

public func -=(lhs: inout Float80, rhs: AFloat80) {
    lock(rhs)
    lhs -= rhs.value
    unlock(rhs)
}

public func -=(lhs: AFloat80, rhs: Float80) {
    lock(lhs)
    lhs.value -= rhs
    unlock(lhs)
}

public func *=(lhs: AFloat80, rhs: AFloat80) {
    lock(lhs, rhs)
    lhs.value *= rhs.value
    unlock(lhs, rhs)
}

public func *=(lhs: inout Float80, rhs: AFloat80) {
    lock(rhs)
    lhs *= rhs.value
    unlock(rhs)
}

public func *=(lhs: AFloat80, rhs: Float80) {
    lock(lhs)
    lhs.value *= rhs
    unlock(lhs)
}

public func /=(lhs: AFloat80, rhs: AFloat80) {
    lock(lhs, rhs)
    lhs.value /= rhs.value
    unlock(lhs, rhs)
}

public func /=(lhs: inout Float80, rhs: AFloat80) {
    lock(rhs)
    lhs /= rhs.value
    unlock(rhs)
}

public func /=(lhs: AFloat80, rhs: Float80) {
    lock(lhs)
    lhs.value /= rhs
    unlock(lhs)
}

public prefix func +(x: AFloat80) -> AFloat80 {
    lock(x)
    let result = +x.value
    unlock(x)

    return Atomic(result)
}

public prefix func -(x: AFloat80) -> AFloat80 {
    lock(x)
    let result = -x.value
    unlock(x)

    return Atomic(result)
}

// Atomic typealias for 'String'
public typealias AString = Atomic<String>

public func +(lhs: AString, rhs: AString) -> AString {
    lock(lhs, rhs)
    let result = lhs.value + rhs.value
    unlock(lhs, rhs)

    return Atomic(result)
}

public func +(lhs: String, rhs: AString) -> AString {
    lock(rhs)
    let result = lhs + rhs.value
    unlock(rhs)

    return Atomic(result)
}

public func +(lhs: AString, rhs: String) -> AString {
    lock(lhs)
    let result = lhs.value + rhs
    unlock(lhs)

    return Atomic(result)
}

public func +=(lhs: AString, rhs: AString) {
    lock(lhs, rhs)
    lhs.value += rhs.value
    unlock(lhs, rhs)
}

public func +=(lhs: inout String, rhs: AString) {
    lock(rhs)
    lhs += rhs.value
    unlock(rhs)
}

public func +=(lhs: AString, rhs: String) {
    lock(lhs)
    lhs.value += rhs
    unlock(lhs)
}

// Atomic typealias for 'Bool'
public typealias ABool = Atomic<Bool>

public func &&(lhs: Atomic<Bool>, rhs: Atomic<Bool>) -> Bool {
    lock(lhs, rhs)
    let result = (lhs.value && rhs.value)
    unlock(lhs, rhs)

    return result
}

public func ||(lhs: Atomic<Bool>, rhs: Atomic<Bool>) -> Bool {
    lock(lhs, rhs)
    let result = (lhs.value || rhs.value)
    unlock(lhs, rhs)

    return result
}

public prefix func !(x: Atomic<Bool>) -> Atomic<Bool> {
    lock(x)
    let result = !x.value
    unlock(x)

    return Atomic(result)
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
