//
//  VacancyInfo.swift
//  AlfaOnePositiv
//
//  Created by санжар on 24.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import Foundation
import UIKit

class VacancyInfo : UIView{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    var title : UITextView = {
       let view = UITextView()
       view.text = "Title"
       return view
    }()
    
    var desc : UITextView = {
        let view = UITextView()
        view.text = "Description"
        
        return view
    }()
    
    var count : UITextView = {
        let view = UITextView()
        view.text = "count"
        return view
    }()
    
    let addCV : UIButton = {
        let btn = UIButton(title: "AddCV", borderColor: UIColor.redColor, textColor: UIColor.redColor, backgroundColor: UIColor.white,font: UIFont.Helvetica(17))
        return btn
    }()
    func setup (){
        let stackView = createStackView(views: [title,
                                                desc,
                                                count,
                                                addCV])
        addSubview(stackView)
        stackView.distribution = .fillEqually
        stackView.setAnchor(width: self.frame.width - 60, height: frame.height/4)
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
}
