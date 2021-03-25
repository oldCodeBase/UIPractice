//
//  SignInViewController.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 25/03/2021.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {
    
    private let accountLabel = BrandLabel(textAlignment: .center, fontSize: 20)
    private let profileImage = UIImageView(image: Registration.profile)
    private let signInLabel = BrandLabel(textColour: Colours.brandGray, textAlignment: .center, fontSize: 15)
    
    private let googleButton = BrandButton(backgroundImage: Registration.google!)
    private let appleButton = BrandButton(backgroundImage: Registration.apple!)
    private let facebookButton = BrandButton(backgroundImage: Registration.facebook!)
    
    private let emailTextFiled = BrandTextField(placeholderText: "Ваш e-mail")
    private let passwordTextField = BrandTextField(placeholderText: "Ваш пароль")
    private let signInButton = BrandButton(backgroundColor: Colours.brandColor, title: "Sign In")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    func configureUI() {
        view.backgroundColor = Colours.brandBG
        view.addSubviews(accountLabel, signInLabel, profileImage, facebookButton,
                         appleButton, googleButton, emailTextFiled, passwordTextField, signInButton)
        
        accountLabel.text = "Учетная запись"
        signInLabel.text = "Войти через соцсети:"
        signInButton.layer.cornerRadius = 28
        
        accountLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(40)
            $0.centerX.equalToSuperview()
        }
        
        profileImage.snp.makeConstraints {
            $0.top.equalTo(accountLabel.snp.bottom).offset(20)
            $0.centerX.equalToSuperview()
            $0.height.width.equalTo(80)
        }
        
        signInLabel.snp.makeConstraints {
            $0.top.equalTo(profileImage.snp.bottom).offset(30)
            $0.centerX.equalToSuperview()
        }
        
        facebookButton.snp.makeConstraints {
            $0.height.width.equalTo(56)
            $0.centerX.equalToSuperview()
            $0.top.equalTo(signInLabel.snp.bottom).offset(20)
        }
        
        googleButton.snp.makeConstraints {
            $0.height.width.top.equalTo(facebookButton)
            $0.trailing.equalTo(facebookButton.snp.leading).offset(-12)
        }
        
        appleButton.snp.makeConstraints {
            $0.height.width.top.equalTo(facebookButton)
            $0.leading.equalTo(facebookButton.snp.trailing).offset(12)
        }
        
        emailTextFiled.snp.makeConstraints {
            $0.height.equalTo(56)
            $0.leading.equalToSuperview().offset(20)
            $0.trailing.equalToSuperview().offset(-20)
            $0.top.equalTo(facebookButton.snp.bottom).offset(40)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.height.equalTo(emailTextFiled)
            $0.leading.trailing.equalTo(emailTextFiled)
            $0.top.equalTo(emailTextFiled.snp.bottom).offset(12)
        }
        
        signInButton.snp.makeConstraints {
            $0.height.equalTo(emailTextFiled)
            $0.leading.trailing.equalTo(emailTextFiled)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(20)
        }
    }
}

import SwiftUI

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        let viewController = SignInViewController() // Write your VC name
        func makeUIViewController(context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) -> SignInViewController {
            return viewController
        }
        
        func updateUIViewController(_ uiViewController: ViewControllerProvider.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewControllerProvider.ContainerView>) {
            
        }
    }
}

