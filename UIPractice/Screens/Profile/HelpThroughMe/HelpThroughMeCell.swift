//
//  HelpThroughMeCell.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 29/03/2021.
//

import UIKit
import SnapKit

class HelpThroughMeCell: UICollectionViewCell {

    static let reuseID              = "HelpThroughMeCell"
    private let donationImageView   = UIImageView(image: Icons.feedLogo)
    private let donationTitleLabel  = BrandLabel()
    private let foundNameLabel      = BrandLabel(textColor: Colors.brandGray)
    private let youDrawn            = BrandLabel(textColor: Colors.brandOrange)
    private let moneyLabel          = BrandLabel(textColor: Colors.brandOrange)
    private let timeLabel           = BrandLabel(textColor: Colors.brandGray)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 10
        
        donationImageView.layer.cornerRadius = 8
        donationImageView.clipsToBounds = true
        
        donationTitleLabel.text = "Накорми 100 человек на ифтар"
        donationTitleLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        
        foundNameLabel.text = "Территория милосердия"
        foundNameLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        youDrawn.text = "Вы привлекли"
        youDrawn.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
        
        moneyLabel.text = "3000 ₽"
        moneyLabel.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        
        timeLabel.text = "30 апр"
        timeLabel.font = UIFont.systemFont(ofSize: 13, weight: .regular)
        
        addSubviews(donationImageView, donationTitleLabel, foundNameLabel, youDrawn, moneyLabel, timeLabel)
        
        donationImageView.snp.makeConstraints {
            $0.height.width.equalTo(60)
            $0.trailing.equalToSuperview().offset(-16)
            $0.top.equalToSuperview().offset(16)
        }
        
        donationTitleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(16)
            $0.leading.equalToSuperview().offset(16)
            $0.trailing.equalTo(donationImageView.snp.leading).offset(-20)
        }
        
        foundNameLabel.snp.makeConstraints {
            $0.bottom.equalTo(youDrawn.snp.top).offset(-16)
            $0.leading.trailing.equalTo(donationTitleLabel)
        }
        
        youDrawn.snp.makeConstraints {
            $0.bottom.equalTo(moneyLabel.snp.top).offset(-2)
            $0.leading.equalToSuperview().offset(16)
        }
        
        moneyLabel.snp.makeConstraints {
            $0.bottom.equalToSuperview().offset(-16)
            $0.leading.equalToSuperview().offset(16)
        }
        
        timeLabel.snp.makeConstraints {
            $0.centerX.equalTo(donationImageView)
            $0.top.equalTo(donationImageView.snp.bottom).offset(12)
        }
    }
}
