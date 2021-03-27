//
//  FoundCell.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 27/03/2021.
//

import UIKit

class FoundCell: UICollectionViewCell {
    
    static let reuseID              = "FoundCell"
    private let foundLogoImageView  = UIImageView(image: Icons.foundLogo)
    private let foundNameLabel      = BrandLabel()
    private let foundLocationLabel  = BrandLabel(textColor: Colors.brandGray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        foundLogoImageView.layer.cornerRadius = 4
        self.backgroundColor = .white
        self.layer.cornerRadius = 10
        foundNameLabel.text = "Инсан"
        foundNameLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        foundLocationLabel.text = "Ингушетия"
        foundLocationLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        addSubviews(foundLogoImageView, foundNameLabel, foundLocationLabel)
        
        foundLogoImageView.snp.makeConstraints {
            $0.height.width.equalTo(44)
            $0.leading.equalToSuperview().offset(16)
            $0.centerY.equalToSuperview()
        }
        
        foundNameLabel.snp.makeConstraints {
            $0.top.equalTo(foundLogoImageView)
            $0.leading.equalTo(foundLogoImageView.snp.trailing).offset(12)
        }
        
        foundLocationLabel.snp.makeConstraints {
            $0.bottom.equalTo(foundLogoImageView)
            $0.leading.equalTo(foundLogoImageView.snp.trailing).offset(12)
        }
    }
}
