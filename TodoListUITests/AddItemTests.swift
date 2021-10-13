//
//  ListViewTests.swift
//  TodoListUITests
//
//  Created by Victor Souza da Silva on 12/10/21.
//

import XCTest
import SwiftUI

class ListViewTests: XCTestCase {
    let app = XCUIApplication()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testNavigationBar() throws {
        app.buttons["addItemNavigationLink"].tap()
        
        let navBar = app.navigationBars.element
        XCTAssert(navBar.exists)
    }
    
    func testAddItem() throws {
        Utils.removeItems(table: app.tables)
        
        app.buttons["addItemNavigationLink"].tap()
        
        app.textFields.element.tap()
        app.textFields.element.typeText("My item")
        app.buttons["addItemButton"].tap()

        XCTAssert(app.tables.cells.staticTexts["My item"].exists)
    }

}
