//
//  AppDelegate.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator: MainCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        coordinator = MainCoordinator(rootWindow: window)
        coordinator?.start()
        
        return true
    }

}

