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
        NetworkWorker.sendRequest(to: URL(string: "www.google.com")!,
                                  parameters: ["login": login.email, "password": login.password])
        { newState, error in
         state = newState!
        }
    default:
        break
    }
    // Return new state to subscrubers
    return state
}
