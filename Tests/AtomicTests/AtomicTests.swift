import XCTest
@testable import Atomic

class AtomicTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(Atomic().text, "Hello, World!")
    }


    static var allTests : [(String, (AtomicTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
