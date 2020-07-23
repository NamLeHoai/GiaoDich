//
//  TransferTableViewCell.swift
//  GiaoDich
//
//  Created by Nam on 7/20/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit

class TransferTableViewCell: UITableViewCell {
    
    let containerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let descriptLabel: UILabel = {
        let label = UILabel()
        label.text = "descript"
        label.textColor = .lightGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let detailLabel: UILabel = {
        let label = UILabel()
        label.text = "detail"
        label.font = .boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
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
        self.addSubview(containerView)
        [descriptLabel, detailLabel].forEach{ containerView.addSubview($0) }
    }
    
    func setupLayout() {
        [containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
         containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
         containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
         containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            ].map { (anchor) in anchor.isActive = true}
        
        [descriptLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
         descriptLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
         descriptLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
         descriptLabel.heightAnchor.constraint(equalToConstant: 14),
            ].map { (anchor) in anchor.isActive = true}
        
        [detailLabel.topAnchor.constraint(equalTo: descriptLabel.bottomAnchor, constant: 8),
         detailLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
         detailLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
         detailLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -8),
            ].map { (anchor) in anchor.isActive = true}
    }
    
}
