//
//  GitHubService.swift
//  GithubGraphQL
//
//  Created by Rita Vasconcelos on 24/03/22.
//  Copyright © 2022 test. All rights reserved.
//

import Foundation

typealias DownloadComplete = (_ : Bool, _ : [Repository]?, _ : String?) -> ()

final class GitHubService {
    //Perform a GraphQL search via the queryType parameter, passed from the calling function.
    static func fetchRepositories(queryType: GithubQueryType, completed: @escaping DownloadComplete) {
         let client: GraphQLClient
        //Perform the GraphQL Query
        client.searchRepositories(mentioning: "GraphQL", filter: nil, cachePolicy: .default, contextIdentifier: nil, queue: .main) { (result) in
            switch result {
            
            case .success(let data): break
            // vector with the repos
            case .failure(_): break
            // alert error
               
            }
        }
        
    }
}
