//
//  Post.swift
//  Navigation
//
//  Created by Aysel on 13.02.2024.
//

struct Post {
    
    let author: String
    let description: String
    let image: String
    var likes: Int
    var views: Int
    
    static let samplePosts: [Post] = [
        Post(
            author: "HistoryPorn",
            description: "Дверь в древний заброшенный храм в округе Пурулия индийского штата Западная Бенгалия.",
            image: "NBZ1p-Gj3pk",
            likes: 305,
            views: 4872
        ),
        Post(
            author: "Авторевю",
            description: "Компания Mini представила проект электрического однообъемника с трансформируемым салоном.",
            image: "lwtUQJBAaso",
            likes: 4,
            views: 17
        ),
        Post(
            author: "HistoryPorn",
            description: "David (Michelangelo)",
            image: "lu_gbWHdZxM",
            likes: 468,
            views: 7527
        ),
        Post(
            author: "Концептуальный вандализм",
            description: "Рязань",
            image: "dVTYC6mdeW0",
            likes: 2737,
            views: 17982
        )
    ]
}
