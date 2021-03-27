//
//  BrandLabel.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 25/03/2021.
//

import UIKit

class BrandLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(textColor: UIColor = .black, textAlignment: NSTextAlignment = .left, fontSize: CGFloat = 15) {
        self.init(frame: .zero)
        self.textColor      = textColor
        self.textAlignment  = textAlignment
        self.font           = UIFont.systemFont(ofSize: fontSize, weight: .bold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
