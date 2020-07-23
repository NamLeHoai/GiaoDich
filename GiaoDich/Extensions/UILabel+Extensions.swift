//
//  UILabel+Extensions.swift
//  GiaoDich
//
//  Created by Nam on 7/20/20.
//  Copyright © 2020 Nam. All rights reserved.
//

import UIKit

extension UILabel {
    func setupDescriptLabel() {
        self.font = .systemFont(ofSize: 14)
        self.textColor = .lightGray
    }
    
    func setupDetailLabel() {
        self.font = .boldSystemFont(ofSize: 14)
        self.textColor = .lightGray
    }
}
