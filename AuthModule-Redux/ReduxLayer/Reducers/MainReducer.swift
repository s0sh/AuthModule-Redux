//
//  UserInfoReducer.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 26.05.2023.
//

import Foundation
import ReSwift

func mainReducer(action: Action, state: MainState?) -> MainState {
    var state = state ?? MainState()
    switch action {
    case _ as MainAction:
        NetworkWorker.sendMainRequest(to: URL(string: "www.google.com")!,
                                  parameters: ["login": "login",
                                               "password": "password"]) { newState, error in
            state = newState!
        }
    default:
        break
    }
    return state
}
