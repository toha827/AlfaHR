//
//  UILabel+extension.swift
//  AlfaOnePositiv
//
//  Created by санжар on 26.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

extension UILabel{
    public convenience init(text: String, font: UIFont,textColor : UIColor) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = textColor
        
    }
    func setTextWithImage(imageNamed: String, startText: String,endText: String){
        
        let fullString = NSMutableAttributedString(string: startText)
        
        // create our NSTextAttachment
        let image1Attachment = NSTextAttachment()
        image1Attachment.image = UIImage(named: imageNamed)
        
        // wrap the attachment in its own attributed string so we can append it
        let image1String = NSAttributedString(attachment: image1Attachment)
        
        // add the NSTextAttachment wrapper to our full string, then add some more text.
        fullString.append(image1String)
        fullString.append(NSAttributedString(string: endText))
        
        // draw the result in a label
        self.attributedText = fullString
    }
}
