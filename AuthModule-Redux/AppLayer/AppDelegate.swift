//
//  AppDelegate.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import UIKit
import ReSwift

let mainStore = Store<LoginState>(reducer: loginReducer, state: nil)

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        return true
    }
}
