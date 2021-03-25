//
//  MainTabBarController.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 25/03/2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = Colours.brandColor
        viewControllers    = [createFeedsNC(), createReportsNC(), createUserVC()]
    }
    
    func createFeedsNC() -> UINavigationController {
        let feedsVC        = FeedsViewController()
        feedsVC.title      = "Сборы"
        feedsVC.tabBarItem = UITabBarItem(title: "Сборы", image: Icons.feeds, selectedImage: Icons.feedsSelected)
        
        return UINavigationController(rootViewController: feedsVC)
    }
    
    func createReportsNC() -> UINavigationController {
        let reportsVC        = ReportsViewController()
        reportsVC.title      = "Отчеты"
        reportsVC.tabBarItem = UITabBarItem(title: "Отчеты", image: Icons.reports, selectedImage: Icons.reportsSelected)
        
        return UINavigationController(rootViewController: reportsVC)
    }
    
    func createUserVC() -> UIViewController {
        let userVC          = UserViewController()
        userVC.tabBarItem   = UITabBarItem(title: "Профиль", image: Icons.user, selectedImage: Icons.userSelected)
        
        return userVC
    }
}
