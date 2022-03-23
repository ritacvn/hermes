//
//  GitHubQueryType.swift
//  GithubGraphQL
//
//  Created by Rita Vasconcelos on 23/03/22.
//  Copyright © 2022 test. All rights reserved.
//

import Foundation

enum GithubQueryType: Equatable {
    case initial
    case additional(queryKey: String)
    
    var queryDetails: SearchRepositoriesQuery {
        switch self {
        case .initial:
            return SearchRepositoriesQuery(query: "GraphQL", first: 20)
        case .additional(let queryKey):
            return SearchRepositoriesQuery(query: "GraphQL", first: 20, after: queryKey)
        }
    }
    
    static func ==(lhs: GithubQueryType, rhs: GithubQueryType) -> Bool {
        switch (lhs, rhs) {
        case (.initial, .initial):
            return .initial == .initial
        case (.initial, .additional):
            return false
        default:
            return false
        }
    }
}
