//
//  BrandTextField.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 25/03/2021.
//

import UIKit

class BrandTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(placeholderText: String) {
        self.init(frame: .zero)
        self.placeholder = placeholderText
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius          = 8
        layer.borderWidth           = 2
        layer.borderColor           = Colours.brandColor.cgColor
        
        textColor                   = Colours.brandBlack
        textAlignment               = .left
        leftView                    = UIView(frame: CGRect(x: 0, y: 0, width: 24, height: 10))
        leftViewMode                = .always
        font                        = UIFont.preferredFont(forTextStyle: .title2)
        
        backgroundColor             = .systemBackground
        returnKeyType               = .go
        autocorrectionType          = .no
        clearButtonMode             = .whileEditing
    }
}
