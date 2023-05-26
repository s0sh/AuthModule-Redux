//
//  NetworkWorker.swift
//  AuthModule-Redux
//
//  Created by Roman Bigun on 11.04.2023.
//

import Foundation

struct Parameters {
    var password: String = ""
    var login: String = ""
}

struct NetworkWorker {
    
   static func sendLoginRequest(to url: URL,
                     parameters: Parameters,
                     completion: @escaping (LoginState?, Error?) -> Void) {
       /// Any network provider can be added here for requests
       /// Mock staate is being returned just for example
        let userPhone = "+38(099) 111 22 33"
        let userEmail = "dot@dot.com"
        let address = "Some address"
        
        let response = LoginState(phone: userPhone,
                                  email: userEmail,
                                  address: address)
        completion(response, nil)
    }
    
    static func sendMainRequest(to url: URL,
                      parameters: [String: String],
                      completion: @escaping (MainState?, Error?) -> Void) {
        /// Any network provider can be added here for requests
        /// Mock staate is being returned just for example
         let userPhone = "+38(099) 111 22 33"
         let userEmail = "dot@dot.com"
         let address = "Some address"
         
         let response = MainState(phone: userPhone,
                                   email: userEmail,
                                   address: address)
         completion(response, nil)
     }
    
}
