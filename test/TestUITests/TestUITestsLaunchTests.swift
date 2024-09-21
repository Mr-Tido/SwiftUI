//
//  TestUITestsLaunchTests.swift
//  TestUITests
//
//  Created by user on 20.09.2024.
//

import XCTest

final class TestUITestsLaunchTests: XCTestCase {
    
    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }
        
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
    continueAfterFailure = false
    app.launch()
      }
    
    func testWelcom() throws{
        let welcom = app.staticTexts.element
        XCTAssert(welcom.exists)
        XCTAssertEqual(welcom.label, "Hello, world!")
    }
    
    func  testLoginButton() throws {
        let login = app.buttons["loginButton"]
        XCTAssert(login.exists)
        XCTAssertEqual(login.label, "Login")
    }
    
    
    func testLoginForm() throws {
            app.buttons["Login"].tap()

            let navBar = app.navigationBars.element
            XCTAssert(navBar.exists)

            let username = app.textFields["Username"]
            XCTAssert(username.exists)

            let password = app.secureTextFields["Password"]
            XCTAssert(password.exists)

            let login = app.buttons["loginNow"]
            XCTAssert(login.exists)
            XCTAssertEqual(login.label, "login")

            let dismiss = app.buttons["Dismiss"]
            XCTAssert(dismiss.exists)
        }

}





