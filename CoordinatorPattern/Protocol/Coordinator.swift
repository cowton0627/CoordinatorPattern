//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Chun-Li Cheng on 2021/11/30.
//

import Foundation
import UIKit

// 頁面跳轉控制協定
protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    var children: [Coordinator]? { get set }
    
    func eventOccured(with type: Event)
    func start()
}

// 方便讓VC遵循協定, 設定一個coodinator的屬性
protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
