//
//  AppCoordinator.swift
//  FileManagerHomeWork
//
//  Created by Айгерим on 16.09.2024.
//

import Foundation
import UIKit
import KeychainSwift

final class AppCoordinator {
    
    private let keychain = KeychainSwift()
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let loginViewController = LoginViewController(keychain: keychain)
        loginViewController.coordinator = self
        let navigationController = UINavigationController(rootViewController: loginViewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    func showMainTabBar() {
        let mainTabBarController = MainTabBarController()
        window.rootViewController = mainTabBarController
    }
}
