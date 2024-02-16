//
//  Coordinator.swift
//  Navigation
//
//  //  Created by Aysel on 13.02.2024.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
