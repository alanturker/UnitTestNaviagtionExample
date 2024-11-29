//
//  SpyNavigationController.swift
//  unitTestNavigationExampleTests
//
//  Created by Turker Alan on 11.11.2024.
//

import UIKit

class SpyNavigationController: UINavigationController {
    
    var pushedViewController: UIViewController!
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        
        pushedViewController = viewController
    }
    
}
