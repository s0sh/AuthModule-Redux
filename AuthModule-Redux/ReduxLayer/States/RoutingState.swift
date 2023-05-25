//
//  RoutingState.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 25.05.2023.
//

import ReSwift

struct RoutingState: StateType {
  var navigationState: RoutingDestination
  
  init(navigationState: RoutingDestination = .login) {
    self.navigationState = navigationState
  }
}

