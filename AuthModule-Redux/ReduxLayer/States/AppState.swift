//
//  AppState.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 25.05.2023.
//

import ReSwift

struct AppState: StateType {
  let routingState: RoutingState
  let loginState: LoginState
}
