//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        title = "SecondVC"
        
    }
    

}
