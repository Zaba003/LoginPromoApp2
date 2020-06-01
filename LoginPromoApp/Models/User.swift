//
//  User.swift
//  LoginPromoApp
//
//  Created by Кирилл Заборский on 30.05.2020.
//  Copyright © 2020 Кирилл Заборский. All rights reserved.
//

import Foundation

struct User {
    let userName: String
    let password: String
}

extension User {
    static func getLogin() -> [User] {
        return [User(userName: "root", password: "password")]
    }
}
