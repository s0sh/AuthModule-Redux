//
//  AppReducer.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 25.05.2023.
//

import ReSwift

func appReducer(action: Action, state: AppState?) -> AppState {
  return AppState(
    routingState: routingReducer(action: action, state: state?.routingState),
    loginState: loginReducer(action: action, state: state?.loginState),
    userInfoState: userInfoReducer(action: action, state: state?.userInfoState))
}
