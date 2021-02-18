//
//  XiblessViewControllerTests.swift
//  ViewPlusTests
//
//  Created by Matthew Massicotte on 2021-02-18.
//

import XCTest
@testable import ViewPlus

class MyView: NSView {
}

class XiblessViewControllerTests: XCTestCase {
    func testCreation() {
        let controller = XiblessViewController<MyView>()

        XCTAssertTrue(controller.view is MyView)


        XCTAssertEqual(controller.contentView.frame, .zero)
    }
}
