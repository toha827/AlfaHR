//
//  User.swift
//  AlfaOnePositiv
//
//  Created by санжар on 27.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
struct Candidate {
    let id : Int
    let f_name : String
    let l_name : String
    let mail : String
    let telephon_number : Int
    let passed_cv : Int
    let passed_customer : Int
    let passed_interview : Int
    let is_deployed : Int
    let cv_file_name : String
    let username : String
    let vacancy_id : Int
    
    /*
     posts.id,posts.f_name,posts.l_name,posts.mail,posts.telephon_number,posts.passed_cv,posts.passed_customer,posts.passed_interview,posts.is_deployed,posts.cv_file_name,users.username,posts.vacancy_id FROM posts  INNER JOIN vacancy ON posts.vacancy_id=vacancy.id  Inner Join users ON vacancy.users_id=users.id where posts.deleted!=1
 */
}
extension Candidate {
    init?(json: [String: Any]) {
        guard let id = json["id"] as? Int,
            let f_name = json["f_name"] as? String,
            let l_name = json["l_name"] as? String,
            let mail = json["mail"] as? String,
            let telephon_number = json["telephon_number"] as? Int,
            let passed_cv = json["passed_cv"] as? Int,
            let passed_customer = json["passed_customer"] as? Int,
            let passed_interview = json["passed_interview"] as? Int,
            let is_deployed = json["is_deployed"] as? Int,
            let cv_file_name = json["cv_file_name"] as? String,
            let username = json["username"] as? String,
            let vacancy_id = json["vacancy_id"] as? Int
            else {
                return nil
        }
        
        self.id = id
        self.f_name = f_name
        self.l_name = l_name
        self.mail = mail
        self.telephon_number = telephon_number
        self.passed_cv = passed_cv
        self.passed_customer = passed_customer
        self.passed_interview = passed_interview
        self.is_deployed = is_deployed
        self.cv_file_name = cv_file_name
        self.username = username
        self.vacancy_id = vacancy_id
    }
}
