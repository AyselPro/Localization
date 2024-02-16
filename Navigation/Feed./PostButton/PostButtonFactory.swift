//
//  PostButtonFactory.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import UIKit

class PostButtonFactory {
    static func makeButton(forPostWithIndex index: Int) -> PostButton {
        
        let button = PostButton(type: .system)

        button.setTitle("Show post \(index + 1)", for: .normal)
        button.sizeToFit()

        button.index = index

        return button
    }
}
