//
//  RepositoryTableViewCell.swift
//  GithubGraphQL
//
//  Created by Rita Vasconcelos on 22/03/22.
//  Copyright © 2022 test. All rights reserved.
//

import Foundation
import UIKit

class RepositoryTableViewCell: UITableViewCell {
    static let identifier = "RepositoryTableViewCell"
    var repoTitle = UILabel()
    var repoImage: UIImageView?
    var repoRatingLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        selectionStyle = .none
        backgroundColor = .darkGray
        setupRepoTitle()
        setupRepoRatignLabel()
        self.addSubview(repoTitle)
        self.addSubview(repoRatingLabel)
    }
    
    private func setupRepoTitle() {
        repoTitle.numberOfLines = 0
        contentView.addSubview(repoTitle)
    }
    
    private func setupRepoRatignLabel() {
        repoRatingLabel.numberOfLines = 0
        contentView.addSubview(repoTitle)
    }
    
    func set(repo: Repository) {
        self.repoTitle.text = "\(repo.owner)/\(repo.name)"
        self.repoImage?.setImageFromURL(url: repo.avatar)
        self.repoRatingLabel.text = "\(repo.stars)"
    }
}
