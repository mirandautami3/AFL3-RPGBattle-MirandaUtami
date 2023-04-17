//
//  AFL3_RPGBattle_MirandaUtami_0706012110056UITestsLaunchTests.swift
//  AFL3-RPGBattle-MirandaUtami-0706012110056UITests
//
//  Created by miranda on 17/04/23.
//

import XCTest

final class AFL3_RPGBattle_MirandaUtami_0706012110056UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
