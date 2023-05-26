//
//  AppRouter.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 25.05.2023.
//

import ReSwift

enum RoutingDestination: String {
    case login = "LoginViewController"
    case userInfo = "UserInfoViewController"
}

final class AppRouter {
    
    let navigationController: UINavigationController
    
    init(window: UIWindow) {
        navigationController = UINavigationController()
        window.rootViewController = navigationController
        mainStore.subscribe(self) {
            $0.select {
                $0.routingState
            }
        }
    }

fileprivate func pushViewController(identifier: String, animated: Bool) {
    var viewController: UIViewController = UIViewController()
    
    switch identifier {
    case RoutingDestination.login.rawValue:
        viewController = LoginViewController()
    case RoutingDestination.userInfo.rawValue:
        viewController = UserInfoViewController()
    default:
        print("")
    }
    
    let newViewControllerType = type(of: viewController)
    if let currentVc = navigationController.topViewController {
        let currentViewControllerType = type(of: currentVc)
        if currentViewControllerType == newViewControllerType {
            return
        }
    }
    navigationController.pushViewController(viewController, animated: animated)
 }

}

// MARK: - StoreSubscriber
extension AppRouter: StoreSubscriber {
    func newState(state: RoutingState) {
        let shouldAnimate = navigationController.topViewController != nil
        pushViewController(identifier: state.navigationState.rawValue, animated: shouldAnimate)
    }
}
