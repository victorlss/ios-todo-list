//
//  Utils.swift
//  TodoListUITests
//
//  Created by Victor Souza da Silva on 12/10/21.
//

import XCTest
import Foundation

class Utils {
    static func removeItems(table: XCUIElementQuery) {
        while table.cells.count > 0 {
            let cell = table.cells.element(boundBy: 0)
            cell.swipeLeft()
            cell.buttons["Delete"].tap()
        }
    }
}
