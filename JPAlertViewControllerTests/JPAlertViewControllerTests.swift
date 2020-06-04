//
//  JPAlertViewControllerTests.swift
//  JPAlertViewControllerTests
//
//  Created by Prithiviraj Tamilarasan on 03/06/20.
//  Copyright © 2020 Prithiviraj Tamilarasan. All rights reserved.
//

import XCTest
@testable import JPAlertViewController

class JPAlertViewControllerTests: XCTestCase {

    var jpAlertViewController: JPAlertViewController!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        jpAlertViewController = JPAlertViewController()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAdd() {
        XCTAssertEqual(jpAlertViewController.add(a: 1, b: 1), 2)
    }
    
    func testSub() {
        XCTAssertEqual(jpAlertViewController.sub(a: 2, b: 1), 1)
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
