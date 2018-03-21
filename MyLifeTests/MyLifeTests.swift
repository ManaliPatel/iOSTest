//
//  MyLifeTests.swift
//  MyLifeTests
//
//  Created by patelman on 3/5/18.
//  Copyright © 2018 Apple Inc. All rights reserved.
//

import FBSnapshotTestCase
@testable import MyLife

class MyLifeTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        recordMode = true
    }
    
    func testExample() {
        let welcomeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyLife") as! PeopleTableViewController
        
        FBSnapshotVerifyView(welcomeVC.view)
        FBSnapshotVerifyLayer(welcomeVC.view.layer)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
