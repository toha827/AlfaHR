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
    var Title : String = ""
    var Desc : String = ""
    var Count : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    func setupView(){
        let mainView = VacancyInfo(frame: self.view.frame)
        self.vacancyView = mainView
        
        self.view.addSubview(vacancyView)
        vacancyView.title.text = Title
        vacancyView.desc.text = Desc
        vacancyView.count.text = Count
    }
    
    func setSetup(count : String, title : String, desc: String){
        Title = title
        Desc = desc
        Count = count
    }
}
