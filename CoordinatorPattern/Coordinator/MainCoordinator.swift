//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var children: [Coordinator]?
    
    func eventOccured(with type: Event) {
        switch type {
        case .buttonTapped:
            let vc = SecondViewController()
            vc.coordinator = self
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func start() {
//        var vc: UIViewController & Coordinating = ViewController()
        let vc = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
