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
        let newState: MainState = MainState(phone: "33-555-777",
                                            email: "some@emal.com",
                                            address: "Some address")
        state = newState
    
    default:
        break
    }
    return state
}
