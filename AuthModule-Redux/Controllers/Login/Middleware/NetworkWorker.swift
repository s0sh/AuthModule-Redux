//
//  NetworkWorker.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import Foundation

struct NetworkWorker {
   
   static func sendRequest(to url: URL,
                     parameters: [String: String],
                     completion: @escaping (LoginState?, Error?) -> Void) {
       /// Any network provider can be added here for requests
       /// Mock staate is being returned just for example
        let userPhone = "+38(099) 111 22 33"
        let userEmail = "dot@dot.com"
        let address = "Ukrine, Kharkiv, Sadovy Passage 19/33"
        
        let response = LoginState(phone: userPhone,
                                  email: userEmail,
                                  address: address)
        completion(response, nil)
    }
}
