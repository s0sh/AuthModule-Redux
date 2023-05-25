//
//  LoginState.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import Foundation
import ReSwift

struct LoginState: StateType {
    var phone: String = ""
    var email: String = ""
    var address: String = ""
}

