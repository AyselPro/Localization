//
//  ViewController.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

final class FeedViewController: UIViewController {
    
    weak var coordinator: FeedCoordinator?
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = AppConstants.feedViewControllerTitle
        view.backgroundColor = .systemGreen

        let stackView = PostWrapperView()
        stackView.toAutoLayout()
        view.addSubview(stackView)

        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        stackView.onButtonTap = { index in
            self.coordinator?.showPost(number: index)
        }
    }
}
