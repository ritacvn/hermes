//
//  UIImageExtension.swift
//  GithubGraphQL
//
//  Created by Rita Vasconcelos on 23/03/22.
//  Copyright © 2022 test. All rights reserved.
//

import UIKit

extension UIImageView {
    public func setImageFromURL(url: String) {
        self.image = UIImage(named: "github")
        URLSession.shared.dataTask(with: NSURL(string: url)! as URL, completionHandler: { (data, response, error) -> Void in
            guard error == nil else { return }
            
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
    }
}
