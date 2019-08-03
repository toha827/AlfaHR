//
//  User.swift
//  AlfaOnePositiv
//
//  Created by санжар on 27.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
struct User {
    let id : Int
    let is_admin : Int
    let username : String
    let password : String
}
extension User {
    init?(json: [String: Any]) {
        guard let id = json["id"] as? Int,
            let is_admin = json["is_admin"] as? Int,
            let username = json["username"] as? String,
            let password = json["password"] as? String
            else {
                return nil
        }
        
        self.id = id
        self.is_admin = is_admin
        self.username = username
        self.password = password
    }
}
