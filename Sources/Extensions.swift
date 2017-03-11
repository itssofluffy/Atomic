/*
    Extensions.swift

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

// Extension for '<type 'type'>'
public extension Int {
    public init(_ atomic: AInt) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Int(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Int(atomic.load())
    }
}

// Extension for 'Float80'
public extension Int8 {
    public init(_ atomic: AInt) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Int8(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Int8(atomic.load())
    }
}

// Extension for 'Float80'
public extension Int16 {
    public init(_ atomic: AInt) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Int16(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Int16(atomic.load())
    }
}

// Extension for 'Float80'
public extension Int32 {
    public init(_ atomic: AInt) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Int32(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Int32(atomic.load())
    }
}

// Extension for 'Float80'
public extension Int64 {
    public init(_ atomic: AInt) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Int64(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Int64(atomic.load())
    }
}

// Extension for 'Float80'
public extension UInt {
    public init(_ atomic: AInt) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try UInt(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try UInt(atomic.load())
    }
}

// Extension for 'Float80'
public extension UInt8 {
    public init(_ atomic: AInt) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try UInt8(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try UInt8(atomic.load())
    }
}

// Extension for 'Float80'
public extension UInt16 {
    public init(_ atomic: AInt) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try UInt16(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try UInt16(atomic.load())
    }
}

// Extension for 'Float80'
public extension UInt32 {
    public init(_ atomic: AInt) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try UInt32(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try UInt32(atomic.load())
    }
}

// Extension for 'Float80'
public extension UInt64 {
    public init(_ atomic: AInt) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try UInt64(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try UInt64(atomic.load())
    }
}

// Extension for 'Float80'
public extension Double {
    public init(_ atomic: AInt) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Double(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Double(atomic.load())
    }
}

// Extension for 'Float80'
public extension Float {
    public init(_ atomic: AInt) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Float(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Float(atomic.load())
    }
}

// Extension for 'Float80'
public extension Float80 {
    public init(_ atomic: AInt) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AInt8) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AInt16) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AInt32) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AInt64) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AUInt) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AUInt8) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AUInt16) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AUInt32) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AUInt64) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: ADouble) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AFloat) throws {
        self = try Float80(atomic.load())
    }

    public init(_ atomic: AFloat80) throws {
        self = try Float80(atomic.load())
    }
}

// Extension for 'String'
public extension String {
    public init(_ atomic: AString) throws {
        self = try String(atomic.load())
    }
}

// Extension for 'Bool'
public extension Bool {
    public init(_ atomic: ABool) throws {
        self = try Bool(atomic.load())
    }
}

// Extension for 'Bool'
public extension Bool {
    public static func &&(lhs: Bool, rhs: Atomic<Bool>) -> Bool {
        lock(rhs)
        let result = (lhs && rhs.value)
        unlock(rhs)

        return result
    }

    public static func &&(lhs: Atomic<Bool>, rhs: Bool) -> Bool {
        lock(lhs)
        let result = (lhs.value && rhs)
        unlock(lhs)

        return result
    }

    public static func ||(lhs: Bool, rhs: Atomic<Bool>) -> Bool {
        lock(rhs)
        let result = (lhs || rhs.value)
        unlock(rhs)

        return result
    }

    public static func ||(lhs: Atomic<Bool>, rhs: Bool) -> Bool {
        lock(lhs)
        let result = (lhs.value || rhs)
        unlock(lhs)

        return result
    }
}

// Extension for 'Character'
public extension Character {
    public init(_ atomic: AString) throws {
        self = try Character(atomic.load())
    }

    public init(_ atomic: AUnicodeScalar) throws {
        self = try Character(atomic.load())
    }
}

// Extension for 'UnicodeScalar'
public extension UnicodeScalar {
    public init(_ atomic: AUInt8) throws {
        self = try UnicodeScalar(atomic.load())
    }

    public init(_ atomic: AUnicodeScalar) throws {
        self = try UnicodeScalar(atomic.load())
    }

    public init?(_ atomic: AInt) throws {
        self = try UnicodeScalar(atomic.load())!
    }

    public init?(_ atomic: AString) throws {
        self = try UnicodeScalar(atomic.load())!
    }

    public init?(_ atomic: AUInt16) throws {
        self = try UnicodeScalar(atomic.load())!
    }

    public init?(_ atomic: AUInt32) throws {
        self = try UnicodeScalar(atomic.load())!
    }
}
