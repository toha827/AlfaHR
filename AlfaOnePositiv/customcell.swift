//
//  customcell.swift
//  AlfaOnePositiv
//
//  Created by санжар on 23.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
class customcell : UITableViewCell{
    let mainBackground : UIView = {
        let view = UIView()
        
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        
        return view
    }()
    let shadowLayer : UIView = {
        let view = UIView()
        
        view.layer.masksToBounds = false
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.23
        view.layer.shadowRadius = 4
        
        view.layer.shadowPath = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 8, height: 8)).cgPath
        view.layer.shouldRasterize = true
        view.layer.rasterizationScale = UIScreen.main.scale
        
        return view
    }()
}
