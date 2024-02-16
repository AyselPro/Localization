//
//  FeedModel.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

import Foundation

struct FeedModel {
    
    static let shared: FeedModel = {
        let instance = FeedModel()
        return instance
    }()
    
    let posts: [PostDummy]

    private init() {
        var posts = [PostDummy]()
        for index in 0...Int.random(in: 1...9) {
            posts.append(PostDummy(title: "Пост \(index + 1)"))
        }
        self.posts = posts
    }
}
