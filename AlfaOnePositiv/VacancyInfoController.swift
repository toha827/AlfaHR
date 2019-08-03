//
//  VacancyInfoController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 24.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
class VacancyInfoController : UIViewController {
    
    var vacancyView : VacancyInfo!
    var titleText : String = ""
    var descriptionText : String = ""
    var countText : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView(){
        let mainView = VacancyInfo(frame: self.view.frame)
        self.vacancyView = mainView
        
        self.view.addSubview(vacancyView)
        vacancyView.title.text = titleText
        vacancyView.desc.text = descriptionText
        vacancyView.count.text = countText
    }
    
    func setSetup(count : String, title : String, desc: String){
        self.titleText = title
        self.descriptionText = desc
        self.countText = count
    }
}
