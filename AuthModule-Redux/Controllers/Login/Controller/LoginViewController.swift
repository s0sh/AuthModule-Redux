//
//  ViewController.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import UIKit
import ReSwift

final class LoginViewController: BaseController {
    
    private let authBlock = CSAuthorizationBlock()
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      mainStore.subscribe(self) {
        $0.select {
          $0.loginState
        }
      }
      mainStore.dispatch(RoutingAction(destination: .login))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
      super.viewWillDisappear(animated)
        mainStore.unsubscribe(self)
    }
}

extension LoginViewController {
    
    override func setupViews() {
        super.setupViews()
        view.addView(authBlock)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            authBlock.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            authBlock.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            authBlock.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
        ])
    }
    
    override func configureViews() {
        super.configureViews()
        authBlock.buttonPressedCallback = { (email, password) in
            mainStore.dispatch(LoginAction(email: email, password: password))
        }
    }
}

extension LoginViewController: StoreSubscriber {
    func newState(state: LoginState) {
        // Do smth w/ income data from the backend/local storage
        print(state)
    }
}
