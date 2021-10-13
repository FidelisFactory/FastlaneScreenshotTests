//
//  TestFastlaneScreenshotsUITests.swift
//  TestFastlaneScreenshotsUITests
//
//  Created by Sandro Meier on 13.10.21.
//

import XCTest

class TestFastlaneScreenshotsUITests: XCTestCase {


    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()

        
        let textfield = app.textFields["field"]
        if !textfield.waitForExistence(timeout: 10) {
            XCTFail("No textfield")
        }
        textfield.tap()
        sleep(2)
        
        snapshot("TestSnapshot")
    }
}
