//
//  UIViewController+Alert.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

extension UIViewController {
    func presentErrorAlert(_ message: String) {
        self.present(AlertFactory.makeErrorAlert(message), animated: true, completion: nil)
    }
}
