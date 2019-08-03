//
//  AddVacancyViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 01.08.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class AddVacancyViewController: UIViewController {

    var userId : Int = -1
    var addVacancyView = AddVacancyModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideTabBar()
        
        self.view.backgroundColor = .white
        setupView()
        let navBar = self.navigationController?.navigationBar
        let navigationFont = UIFont.Helvetica(30)
        navBar!.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.font : navigationFont]
        navBar!.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black, NSAttributedString.Key.font : UIFont.Helvetica(17)]
        navBar!.prefersLargeTitles = false
        navBar!.isTranslucent = true;
        
        navBar!.barTintColor = UIColor.white
        navBar!.tintColor = UIColor.black
        navigationItem.title = "New Vacancy"
    }
    override func viewWillDisappear(_ animated: Bool) {
        showTabBar()
    }
    func hideTabBar(){
        self.tabBarController?.tabBar.isHidden = true
        self.tabBarController?.tabBar.isTranslucent = true
    }
    func showTabBar(){
        self.tabBarController?.tabBar.isHidden = false
        self.tabBarController?.tabBar.isTranslucent = false
        
        let navBar = self.navigationController?.navigationBar
        navBar!.prefersLargeTitles = true
        navBar!.isTranslucent = false;
        let navigationFont = UIFont.Helvetica(30)
        navBar!.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white, NSAttributedString.Key.font : navigationFont]
        navBar!.titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black, NSAttributedString.Key.font : UIFont.Helvetica(17)]
        
        navBar!.barTintColor = UIColor.darkBlueColorWithAlpha08
        navBar!.tintColor = UIColor.white
    }
    func setupView(){
        
        let mainView = AddVacancyModel(frame: self.view.frame)
        self.addVacancyView = mainView
        self.view.addSubview(addVacancyView)
        addVacancyView.addVacancy = addVacancy
    }
    
    func addVacancy(){
        let title = addVacancyView.titleTextField.text
        let desc = addVacancyView.descriptionTextField.text
        
        let json : [String: String] = ["title": title!,
                                    "description": desc!]
        
    }
    func setSetup(userId : Int){
        self.userId = Int(userId)
    }
}
