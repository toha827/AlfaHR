//
//  homepageView.swift
//  AlfaOnePositiv
//
//  Created by санжар on 19.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.barTintColor = UIColor.white
        UITabBar.appearance().tintColor = .darkBlueColor
        tabBar.unselectedItemTintColor = .darkBlueColorWithAlpha
        tabBar.backgroundColor = .white
        tabBar.isTranslucent = false
        tabBar.shadowImage = UIImage()
        tabBar.backgroundImage = UIImage()
        tabBar.layer.applySketchShadow()

        setupTabBar()
    }
    
    func setupTabBar(){
        let vacancyController = createNavController(vc: VacancyViewController(), selected: #imageLiteral(resourceName: "001-job-selected.png"), unselected: #imageLiteral(resourceName: "001-job.png"))
        
        
        let cvsViewController = createNavController(vc: CVsViewController(), selected: #imageLiteral(resourceName: "002-hiring-selected.png"), unselected: #imageLiteral(resourceName: "002-hiring.png"))
        
        let forInterviewViewControllervacancyController = createNavController(vc: ForInterviewViewController(),selected: #imageLiteral(resourceName: "003-interview-selected.png"), unselected: #imageLiteral(resourceName: "003-interview.png"))
        
        viewControllers = [vacancyController,cvsViewController,forInterviewViewControllervacancyController]
        
        guard let items = tabBar.items else{return}
        
        
        for item in items{
            item.imageInsets = UIEdgeInsets(top: 8, left: 0, bottom: -14, right: 0)
        }
    }
}
