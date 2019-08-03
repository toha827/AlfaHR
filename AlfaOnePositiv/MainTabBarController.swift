//
//  homepageView.swift
//  AlfaOnePositiv
//
//  Created by санжар on 19.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    var userId : Int = -2
    
    let vacancyVC = VacancyViewController()
    let cvsVC = CVsViewController()
    let forInterviewVC = ForInterviewViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.white
        setTabBar()
        setupTabBar()
    }
    func setTabBar() {
        UITabBar.appearance().tintColor = .darkBlueColor
        tabBar.unselectedItemTintColor = .darkBlueColorWithAlpha08
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.shadowImage = UIImage()
        tabBar.backgroundImage = UIImage()
        tabBar.layer.applySketchShadow()
    }
    func setupTabBar(){
        
        let vacancyController = createNavController(vc: vacancyVC, selected: #imageLiteral(resourceName: "001-job-selected.png"), unselected: #imageLiteral(resourceName: "001-job.png"))
        let cvsViewController = createNavController(vc: cvsVC, selected: #imageLiteral(resourceName: "002-hiring-selected.png"), unselected: #imageLiteral(resourceName: "002-hiring.png"))
        let forInterviewViewController = createNavController(vc: forInterviewVC,selected: #imageLiteral(resourceName: "003-interview-selected.png"), unselected: #imageLiteral(resourceName: "003-interview.png"))
        
        viewControllers = [vacancyController,cvsViewController,forInterviewViewController]
        
        guard let items = tabBar.items else{return}
        
        
        for item in items{
            item.imageInsets = UIEdgeInsets(top: 8, left: 0, bottom: -14, right: 0)
        }
    }
    func setSetup(userId : Int){
        self.userId = Int(userId)
        vacancyVC.setSetup(userId: userId)
    }
    public func getSetup() -> Int{
        return userId
    }
}
