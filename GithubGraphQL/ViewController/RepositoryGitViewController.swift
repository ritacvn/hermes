//
//  RepositoryGitViewController.swift
//  GithubGraphQL
//
//  Created by Rita Vasconcelos on 24/03/22.
//  Copyright © 2022 test. All rights reserved.
//

import UIKit

class RepositoryGitViewController: UIViewController {
    
    let tableView = UITableView()
    private var fetching: Bool = false
    private var endCursorKey: Bool = false
    private var repos: [Repository] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchRepositories(queryType: .initial)
        setupTableView()
        setUpNavigation()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(RepositoryTableViewCell.self, forCellReuseIdentifier: RepositoryTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo:view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo:view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo:view.bottomAnchor).isActive = true
    }
    
    func setUpNavigation() {
        navigationItem.title = "Repos"
        self.navigationController?.navigationBar.barTintColor = .white
    }
    
    private func fetchRepositories(queryType: GithubQueryType) {
        
        
    }
}

extension RepositoryGitViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return repos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RepositoryTableViewCell.identifier, for: indexPath) as? RepositoryTableViewCell else { return UITableViewCell() }
        cell.set(repo: repos[indexPath.row] )
        return cell
    }
    
    
}

