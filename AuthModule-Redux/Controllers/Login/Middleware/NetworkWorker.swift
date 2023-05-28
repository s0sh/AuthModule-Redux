//
//  NetworkWorker.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import Foundation
import ReSwift

// MARK: - THIS PART NEEDS TO BE REPLACED

struct Parameters {
    var password: String = ""
    var login: String = ""
    var url: URL?
}

protocol NetworkProtocol {
    static func sendRequest(params: Parameters, completion: ((StateType?) -> Void))
}

struct NetworkWorker: NetworkProtocol {
    static func sendRequest(params: Parameters, completion: ((StateType?) -> Void)) {
        let response = LoginState(phone: "333-444-555",
                                  email: "some@gmail.com",
                                  address: "Some address")
        completion(response)
    }

}
