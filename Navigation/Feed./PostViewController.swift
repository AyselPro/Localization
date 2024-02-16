//
//  PostViewController.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

class PostViewController: UIViewController {
    
    weak var coordinator: FeedCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .systemPink
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped(_:)))
    }
    
    @objc func addButtonTapped(_ sender: Any) {
        coordinator?.showPostInfo()
    }
}
