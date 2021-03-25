//
//  AccountSettingsViewController.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 25/03/2021.
//

import UIKit
import SnapKit

class AccountSettingsViewController: UIViewController {
    
    private let profileImage = UIImageView(image: Registration.profile)
    private let changeImageButton = BrandButton(title: "Изменить фото профиля")
    private let tableView = UITableView()
    private let settings: [Sections] = [
        Sections(title: "", setting: [Settings(label: "E-mail")]),
        Sections(title: "", setting: [Settings(label: "Имя")]),
        Sections(title: "", setting: [Settings(label: "Пол"), Settings(label: "Возраст")]),
        Sections(title: "", setting: [Settings(label: "Изменить пароль")]),
        Sections(title: "", setting: [Settings(label: "Выйти")])
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureUI()
        configureTableView()
    }
    
    private func configureViewController() {
        view.backgroundColor = Colors.brandBG
        title                = "Аккаунт"
    }
    
    private func configureUI() {
        view.addSubviews(profileImage, changeImageButton)
        changeImageButton.setTitleColor(Colors.brandColor, for: .normal)
        
        profileImage.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            $0.height.width.equalTo(72)
            $0.centerX.equalToSuperview()
        }
        
        changeImageButton.snp.makeConstraints {
            $0.top.equalTo(profileImage.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
    }
    
    private func configureTableView() {
        view.addSubview(tableView)
        tableView.rowHeight = 44
        tableView.register(AccountSettingsCell.self, forCellReuseIdentifier: AccountSettingsCell.reuseID)
        tableView.delegate      = self
        tableView.dataSource    = self
        tableView.removeExcessCells()
        
        tableView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(160)
            $0.leading.trailing.bottom.equalToSuperview()
        }
    }
}

extension AccountSettingsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settings[section].setting.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let setting = settings[indexPath.section].setting[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: AccountSettingsCell.reuseID) as! AccountSettingsCell
        cell.configure(model: setting.label)
        return cell
    }
}

struct Sections {
    var title: String
    var setting: [Settings]
}

struct Settings {
    var label: String
}
