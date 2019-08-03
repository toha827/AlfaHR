//
//  UITabBarController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 21.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit
extension UITabBarController{
    func createNavController(vc: UIViewController, selected: UIImage, unselected: UIImage) -> UINavigationController {
        let viewController = vc
        let navController = UINavigationController(rootViewController: viewController)
        //let img1 = UIImage().resizeImage(image: selected, targetSize: CGSize(width: 100, height: 100))
        //let img2 = UIImage().resizeImage(image: unselected, targetSize: CGSize(width: 100, height: 100))
        navController.tabBarItem.image = selected
        navController.tabBarItem.selectedImage = unselected
        return navController
    }
}
