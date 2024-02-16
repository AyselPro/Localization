//
//  ProfileCoordinator.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

final class ProfileCoordinator: Coordinator {
    var childCoordinators: [Coordinator]
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        childCoordinators = []
        self.navigationController = navigationController
    }
        
    func start() {
        let profileTabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "Profile"), selectedImage: nil)
        navigationController.tabBarItem = profileTabBarItem
    }
    
    func login() {
        let profileViewController = ProfileViewController()
        profileViewController.coordinator = self
        navigationController.pushViewController(profileViewController, animated: true)
    }
    
    func showPhotos() {
        navigationController.pushViewController(PhotosViewController(), animated: true)
    }
}
