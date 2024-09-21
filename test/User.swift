//
//  User.swift
//  Test
//
//  Created by user on 20.09.2024.
//

import Foundation
import Combine


class User: ObservableObject{
    @Published var isLoggedIn = false
    @Published var username = ""
    @Published var password = ""
    
    func login() -> Bool{
        guard username == "test" && password == "pass" else {
            return false
        }
        password = ""
        isLoggedIn = true
        return true
    }
}
