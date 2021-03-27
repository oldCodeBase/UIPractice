//
//  SceneDelegate.swift
//  UIPractice
//
//  Created by Ibragim Akaev on 25/03/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.rootViewController = createNavController()
        window?.makeKeyAndVisible()
    }
    
    private func createNavController() -> UINavigationController {
        let vc = FoundsViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.navigationItem.largeTitleDisplayMode = .always
        return nav
    }
}

