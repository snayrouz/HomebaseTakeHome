//
//  ShiftTest.swift
//  HomebaseTakeHome
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import XCTest
@testable import HomebaseTakeHome

final class ShiftTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testShiftModelInstanceCreated() {
        let shiftInstance = Shift(
            role: "Waiter",
            name: "Anna",
            startDate: "2018-04-20 9:00:00 -08:00",
            endDate: "2018-4-20 12:00:00 -08:00",
            color: "red")
        
        XCTAssertNotNil(shiftInstance)
    }

}
