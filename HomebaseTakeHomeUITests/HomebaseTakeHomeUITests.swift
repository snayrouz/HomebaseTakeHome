//
//  HomebaseTakeHomeUITests.swift
//  HomebaseTakeHomeUITests
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import XCTest

final class HomebaseTakeHomeUITests: XCTestCase {
    private var app: XCUIApplication!

    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launchArguments = ["-ui-testing"]
        app.launchEnvironment = ["-shift-networking-success": "1"]
        app.launch()
    }

    override func tearDown() {
        app = nil
    }

    func testAddShiftButtonTapped() {
        // UI tests must launch the application that they test.
        let createBtn = app.buttons["addShiftBtn"]
        XCTAssertTrue(createBtn.waitForExistence(timeout: 5), "The Add Shift button should be visible on the screen")

        createBtn.tap()
        
        XCTAssertTrue(app.navigationBars["Create Shift"].waitForExistence(timeout: 5))
    }
}
