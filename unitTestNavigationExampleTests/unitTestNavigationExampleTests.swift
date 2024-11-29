//
//  unitTestNavigationExampleTests.swift
//  unitTestNavigationExampleTests
//
//  Created by Turker Alan on 8.11.2024.
//

import XCTest
@testable import unitTestNavigationExample

final class unitTestNavigationExampleTests: XCTestCase {

    var sut: ViewController!
    var navigationController: UINavigationController!
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyBoard.instantiateViewController(identifier: "ViewController") as? ViewController
        sut.loadViewIfNeeded()
        navigationController = sut.navigationController
    }

    override func tearDownWithError() throws {
        sut = nil
        navigationController = nil
    }
    
//    func testNextViewButton_WhenTapped_SecondViewControllerPushed() {
//        //Arrenge
//        let myPredicate = NSPredicate { input, _ in
//            return (input as? UINavigationController)?.topViewController is SecondViewController
//        }
//        
//        expectation(for: myPredicate, evaluatedWith: navigationController)
//        //Act
//        sut.nextView.sendActions(for: .touchUpInside)
//        
//        waitForExpectations(timeout: 5)
//        //Assert
//
//    }
    
//    func testNextViewButton_WhenTapped_SecondViewControllerPushed_V2() {
//        //Arrenge
//        
//        //Act
//        sut.nextView.sendActions(for: .touchUpInside)
//        
////        RunLoop.current.run(until: Date())
//        //Assert
//        guard let _ = navigationController.topViewController as? SecondViewController else {
//            XCTFail()
//            return
//        }
//    }

    func testNextViewButton_WhenTapped_SecondViewControllerPushed_3() {
        let spyNavigationController = SpyNavigationController(rootViewController: sut)
        
        sut.nextView.sendActions(for: .touchUpInside)
        
        guard let _ = spyNavigationController.pushedViewController as? SecondViewController else {
            XCTFail()
            return
        }
       
    }
}
