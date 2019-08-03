
//
//  UIColor+Extention.swift
//  AlfaOnePositiv
//
//  Created by санжар on 18.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
extension UIColor{
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
    static var green : UIColor = {
        return UIColor(r:80, g:227, b:194)
    }()
    static var redColor : UIColor = {
        return UIColor(r:239, g:49, b:36)
    }()
    static var darkBlueColor : UIColor = {
        return UIColor(r:35, g:42, b:50)
    }()
    static var DarkerDarkBlueColor : UIColor = {
        return UIColor(r:47, g:56, b:65)
    }()
    static var darkBlueColorWithAlpha08 : UIColor = {
        return UIColor(r: 35, g: 42, b: 50).withAlphaComponent(0.99)
    }()
    static var darkBlueColorWithAlpha : UIColor = {
        return UIColor(r: 35, g: 42, b: 50).withAlphaComponent(0.4)
    }()
    static var grayColor : UIColor = {
        return UIColor(r:100, g:105, b:111)
    }()
}
