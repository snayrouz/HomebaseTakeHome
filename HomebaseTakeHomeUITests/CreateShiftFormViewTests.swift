//
//  CreateShiftFormViewTests.swift
//  HomebaseTakeHomeUITests
//
//  Created by Nayrouz, Samuel on 10/3/22.
//

import XCTest

final class CreateShiftFormViewTests: XCTestCase {
    private var app: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        app = XCUIApplication()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
//    func testCreateShiftFormFields() {
//        let roleTxtField = app.pickers["rolePicker"]
//        let nameTxtField = app.pickers["employeePicker"]
//        let startDateField = app.datePickers["datePicker"]
//        let endDateField = app.datePickers["datePicker"]
//        let colorField = app.pickers["shiftColorPicker"]
//
//        let display = roleTxtField.pickers("Waiter")
//        nameTxtField.pickers("Anna")
//        startDateField.datePickers("2018-04-21 7:00:00 -08:00")
//        endDateField.datePickers("2018-4-21 12:00:00 -08:00")
//        colorField.pickers("red")
//
//        XCTAssert(<#T##expression: Bool##Bool#>)
//    }

    func testLabels() {
        let roleTxtField = app.staticTexts["rolePicker"]
        let nameTxtField = app.staticTexts["employeePicker"]
        let startDateField = app.staticTexts["datePicker"]
        let endDateField = app.staticTexts["datePicker"]
        let colorField = app.staticTexts["shiftColorPicker"]
        
        let roleTxt = roleTxtField.label
        let nameTxt = nameTxtField.label
        let startDate = startDateField.label
        let endDate = endDateField.label
        let color = colorField.label
        
        XCTAssert(roleTxt == "")
        XCTAssert(nameTxt == "")
        XCTAssert(startDate == "")
        XCTAssert(endDate == "")
        XCTAssert(color == "")
    }
    
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
