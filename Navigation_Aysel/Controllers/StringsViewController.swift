//
//  StringsViewController.swift
//  Navigation_Aysel
//
//  Created by Aysel on 11.02.2024.
//

import UIKit

enum Strings: String {
    case weatherKey
    
    var localized: String {
        return NSLocalizedString(rawValue, comment: "")
    }
}

class StringsViewController: UIViewController {
    
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        label.text = Strings.weatherKey.localized
    }
}

