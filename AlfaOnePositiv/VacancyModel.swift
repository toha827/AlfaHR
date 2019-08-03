//
//  VacancyModel.swift
//  AlfaOnePositiv
//
//  Created by санжар on 27.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

struct VacancyModel {
    let vacancy_id : Int
    let title : String
    let description : String
    var experience : String = ""
    let posted_user_id : Int
}
func nullToNil(value : AnyObject?) -> AnyObject? {
    if value is NSNull {
        return "" as AnyObject
    } else {
        return value
    }
}
extension VacancyModel {
    init?(json: [String: Any]) {
        

        guard let vacancy_id = json["id"] as? Int,
            let title = json["title"] as? String,
            let description = json["description"] as? String,
            let experience = nullToNil(value: json["experience"] as AnyObject) as? String,
            let posted_user_id = json["users_id"] as? Int
            else {
                print("erroe")
                return nil
        }
        
        self.vacancy_id = vacancy_id
        self.title = title
        self.description = description
        self.experience = experience
        self.posted_user_id = posted_user_id
    }
    
    
}
