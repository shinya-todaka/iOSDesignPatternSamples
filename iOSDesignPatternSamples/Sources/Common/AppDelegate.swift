//
//  AppDelegate.swift
//  iOSDesignPatternSamples
//
//  Created by marty-suzuki on 2017/08/06.
//  Copyright © 2017年 marty-suzuki. All rights reserved.
//

import UIKit
import GithubKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
<<<<<<< HEAD
        // Override point for customization after application launch.

        if let viewControllers = (window?.rootViewController as? UITabBarController)?.viewControllers,
            let searchVC = viewControllers.compactMap({
                ($0 as? UINavigationController)?.topViewController as? SearchViewController
            }).first,
            let favoriteVC = viewControllers.compactMap({
                ($0 as? UINavigationController)?.topViewController as? FavoriteViewController
            }).first {
            searchVC.favoritePresenter = favoriteVC.presenter
        }
=======
>>>>>>> mvc

        let favoriteModel = FavoriteModel()

        if let viewControllers = (window?.rootViewController as? UITabBarController)?.viewControllers {
            for value in viewControllers.enumerated() {
                switch value {
                case let (0, nc as UINavigationController):
                    let searchVC = SearchViewController(searchModel: .init(), favoriteModel: favoriteModel)
                    nc.setViewControllers([searchVC], animated: false)

                case let (1, nc as UINavigationController):
                    let searchVC = FavoriteViewController(favoriteModel: favoriteModel)
                    nc.setViewControllers([searchVC], animated: false)

                default:
                    continue
                }
            }
        }

        return true
    }
}

