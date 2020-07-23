//
//  CurrencyTableViewCell.swift
//  GiaoDich
//
//  Created by Nam on 7/20/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit

class CurrencyTableViewCell: UITableViewCell {
    let containerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
        let keyLabel: UILabel = {
            let label = UILabel()
            label.text = "key"
            label.textColor = .lightGray
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
    
        let valueLabel: UILabel = {
            let label = UILabel()
            label.text = "5000VND"
            label.textAlignment = .right
            label.textColor = .red
            label.font = .boldSystemFont(ofSize: 14)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        addComponent()
        setupLayout()
    }
    
    func addComponent() {
        self.addSubview(containerView)
        containerView.addSubview(keyLabel)
        containerView.addSubview(valueLabel)
    }
    
    func setupLayout() {
        [containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
         containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
         containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
         containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            ].map { (anchor) in anchor.isActive = true}
        
        [keyLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
        keyLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 8),
        keyLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 1/3),
        keyLabel.heightAnchor.constraint(equalToConstant: 14),
           ].map { (anchor) in anchor.isActive = true}
        
        [valueLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 8),
         valueLabel.widthAnchor.constraint(equalTo: containerView.widthAnchor, multiplier: 2/3),
        valueLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -8),
        valueLabel.heightAnchor.constraint(equalToConstant: 14)
           ].map { (anchor) in anchor.isActive = true}
    }

}
