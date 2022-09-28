//
//  User.swift
//  MVVM_login_example
//
//  Created by karlis.stekels on 28/09/2022.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var login = [
        User(login: "user1", password: "12345")
    ]
}
