//
//  StatusTextField.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

class StatusTextField: UITextField {

    private let padding = UIEdgeInsets(top: 9, left: 7, bottom: 10, right: 7)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
