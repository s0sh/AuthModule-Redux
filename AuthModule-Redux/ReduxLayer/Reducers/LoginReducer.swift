//
//  LoginReducer.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import Foundation
import ReSwift

func loginReducer(action: Action, state: LoginState?) -> LoginState {
    
    var state = state ?? LoginState()
    
    switch action {
    case let login as LoginAction:
        let params = Parameters(password: login.password, login: login.email)
        NetworkWorker.sendLoginRequest(to: URL(string: "www.google.com")!,
                                       parameters: params) { newState, error in
            state = newState!
        }
    default:
        break
    }
    return state
}
