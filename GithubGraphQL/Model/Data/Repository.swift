//
//  Repository.swift
//  GithubGraphQL
//
//  Created by Rita Vasconcelos on 22/03/22.
//  Copyright © 2022 test. All rights reserved.
//

import Foundation

struct Repository: Codable {
    var name: String
    var path: String
    var owner: String
    var avatar: String
    var stars: Int
    
    init(name: String, path: String, owner: String, avatar: String, stars: Int) {
        self.name = name
        self.path = path
        self.owner = owner
        self.avatar = avatar
        self.stars = stars
    }
}
