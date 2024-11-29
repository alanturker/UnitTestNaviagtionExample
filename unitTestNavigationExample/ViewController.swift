//
//  ViewController.swift
//  unitTestNavigationExample
//
//  Created by Turker Alan on 8.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nextView: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
    }

    @IBAction func didTapNextView(_ sender: UIButton) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

