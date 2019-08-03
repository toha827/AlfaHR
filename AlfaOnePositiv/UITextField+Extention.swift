//
//  UITextField+Extention.swift
//  AlfaOnePositiv
//
//  Created by санжар on 18.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
extension UITextField{
    
    enum Direction {
        case Left
        case Right
    }
    
    public convenience init(placeHolder : String,backgroundColor: UIColor,borderColor: UIColor, textColor: UIColor, font: UIFont){
        self.init()
        self.borderStyle = .none
        self.layer.cornerRadius = 5
        self.backgroundColor = backgroundColor
        self.layer.borderColor = borderColor.cgColor
        self.autocapitalizationType = .none
        self.layer.borderWidth = CGFloat(0.5)
        self.textColor = textColor
        self.font = font
        self.autocorrectionType = .no
        
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: placeHolder, attributes:[NSAttributedString.Key.font: font]))
        placeholder.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.gray, range:NSRange(location:0,length:placeHolder.count))

        self.attributedPlaceholder = placeholder
        self.setAnchor(width: 0, height: 40)
        self.setLeftPaddingPoints(20)
    }
    func withImage(direction: Direction, image: UIImage, colorSeparator: UIColor, colorBorder: UIColor){
        let mainView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
        //mainView.layer.cornerRadius = 5
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 45))
        view.backgroundColor = .white
        view.clipsToBounds = true
        //view.layer.cornerRadius = 5
        //view.layer.borderWidth = CGFloat(0.5)
        view.layer.borderColor = colorBorder.cgColor
        mainView.addSubview(view)
        
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 12.0, y: 16.0, width: 16, height: 16)
        view.addSubview(imageView)
        
        let seperatorView = UIView()
        seperatorView.backgroundColor = colorSeparator
        mainView.addSubview(seperatorView)
        
        if(Direction.Left == direction){ // image left
            seperatorView.frame = CGRect(x: 45, y: 0, width: 5, height: 45)
            self.leftViewMode = .always
            self.leftView = mainView
        } else { // image right
            seperatorView.frame = CGRect(x: 0, y: 0, width: 5, height: 45)
            self.rightViewMode = .always
            self.rightView = mainView
        }
        
        self.layer.borderColor = colorBorder.cgColor
        self.layer.borderWidth = CGFloat(0.5)
        self.layer.cornerRadius = 5
    }
}
