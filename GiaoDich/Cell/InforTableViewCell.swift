//
//  InforTableViewCell.swift
//  GiaoDich
//
//  Created by Nam on 7/20/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit

class InforTableViewCell: UITableViewCell {
    
    let iconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "icon")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Tài khoản nguồn"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let seriNumber: UILabel = {
        let label = UILabel()
        label.text = "0120 0000 1081 41"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "0120 0000 1081 41"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addComponent()
        setupLayout()
    }
    
    func addComponent() {
        [iconImage, titleLabel].forEach{ self.addSubview($0)}
    }
    
    func setupLayout() {
        [iconImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
         iconImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
         iconImage.widthAnchor.constraint(equalToConstant: 40),
         iconImage.heightAnchor.constraint(equalToConstant: 40)
            ].map { (anchor) in anchor.isActive = true }
        
        [titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
        titleLabel.leadingAnchor.constraint(equalTo: iconImage.trailingAnchor, constant: 8),
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
        titleLabel.heightAnchor.constraint(equalToConstant: 14)
        ].map { (anchor) in anchor.isActive = true }
        
        
    }
}
