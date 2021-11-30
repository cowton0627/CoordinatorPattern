//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    let button: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 55/2
        button.setTitle("to secondVC", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        view.addSubview(button)
        button.center = view.center
        
        setupNavBar()

    }

    @objc func buttonTapped() {
        coordinator?.eventOccured(with: .buttonTapped)
    }

    func setupNavBar() {
        title = "FirstVC"

        let barAppearance =  UINavigationBarAppearance()
//        barAppearance.configureWithDefaultBackground()
//        UINavigationBar.appearance().scrollEdgeAppearance = barAppearance
        barAppearance.backgroundColor = .systemPink
        navigationController?.navigationBar.scrollEdgeAppearance = barAppearance
        navigationController?.navigationBar.tintColor = .systemYellow
        navigationController?.navigationBar.isTranslucent = false
    }
}

