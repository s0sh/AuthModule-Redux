//
//  LoginAction.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import Foundation
import ReSwift

struct LoginAction: Action {
    let email: String
    let password: String
}
