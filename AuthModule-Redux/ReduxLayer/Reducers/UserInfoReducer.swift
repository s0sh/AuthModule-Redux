//
//  UserInfoReducer.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 26.05.2023.
//

import Foundation
import ReSwift

func userInfoReducer(action: Action, state: UserInfoState?) -> UserInfoState {
    var state = state ?? UserInfoState()
    switch action {
    case let login as UserInfoAction:
        NetworkWorker.sendUserInfoRequest(to: URL(string: "www.google.com")!,
                                  parameters: ["login": "login",
                                               "password": "password"]) { newState, error in
            state = newState!
        }
    default:
        break
    }
    return state
}
