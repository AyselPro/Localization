//
//  InputTextField.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

class InputTextField: UITextField {

    private let padding = UIEdgeInsets(top: 18, left: 12, bottom: 15, right: 18)

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
