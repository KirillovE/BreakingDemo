//
//  BreakingDemoTests.swift
//  BreakingDemoTests
//
//  Created by Eugene KIRILLOV on 01/08/2023.
//

import XCTest
@testable import BreakingDemo

final class BreakingDemoTests: XCTestCase {

    func test_next() {
        var model = Model()
        let objective = "Égalité"
        XCTAssertEqual(model.nextLine(), objective)
    }

    func test_afterNext() {
        var model = Model()
        let objective = "Égalité"
        _ = model.nextLine()
        XCTAssertEqual(model.nextLine(), objective)
    }

}
