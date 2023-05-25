//
//  SceneDelegate.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import UIKit
import ReSwift

let mainStore = Store<AppState>(reducer: appReducer, state: nil)

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appRouter: AppRouter?
    
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
        appRouter = AppRouter(window: window!)
    }

}

