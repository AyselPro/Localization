//
//  MainCoordinator.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

final class MainCoordinator {
    var childCoordinators: [Coordinator] = []
    private var rootWindow: UIWindow?
    private var tabBarController: UITabBarController
    private var credentialsVerificator: CredentialsVerificator?

    init(rootWindow: UIWindow?) {
        self.rootWindow = rootWindow
        tabBarController = UITabBarController()
    }
    
    func start() {
        setupFeedCoordinator()
        setupProfileCoordinator()
        setupTabBarController()
        rootWindow?.rootViewController = self.tabBarController
        rootWindow?.makeKeyAndVisible()
    }
    
    private func setupFeedCoordinator() {
        let feedViewController = FeedViewController()
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        let feedCoordinator = FeedCoordinator(navigationController: feedNavigationController)
        feedViewController.coordinator = feedCoordinator
        childCoordinators.append(feedCoordinator)
    }
    
    private func setupProfileCoordinator() {
        credentialsVerificator = CredentialsVerificator()
        let loginViewController = LogInViewController()
        let profileNavigationController = UINavigationController(rootViewController: loginViewController)
        let profileCoordinator = ProfileCoordinator(navigationController: profileNavigationController)
        loginViewController.coordinator = profileCoordinator
        loginViewController.delegate = credentialsVerificator
        childCoordinators.append(profileCoordinator)
    }
    
    private func setupTabBarController() {
        var tabBarViewControllers: [UIViewController] = []
        childCoordinators.forEach {
            $0.start()
            tabBarViewControllers.append($0.navigationController)
        }
        
        tabBarController.viewControllers = tabBarViewControllers
    }
    
}