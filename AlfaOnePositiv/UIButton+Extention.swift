//
//  UIButton+Extention.swift
//  AlfaOnePositiv
//
//  Created by санжар on 18.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
extension UIButton{
    public convenience init(title: String, borderColor: UIColor){
        self.init()
        let attributedString = NSMutableAttributedString(attributedString: NSMutableAttributedString(string: title, attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18), .foregroundColor : UIColor.red]))
        self.setAttributedTitle(attributedString, for: .normal)
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = borderColor.cgColor
        self.setAnchor(width: 0, height: 50)
    }
}
