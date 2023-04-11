//
//  SceneDelegate.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        let controller = LoginViewController()
        let navigation = UINavigationController()
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        navigation.viewControllers = [controller]
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        
    }

}

