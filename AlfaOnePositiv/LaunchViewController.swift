//
//  LaunchViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 25.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {

    
    let backGroundView : UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "Background.png")
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    func setupView(){
        view.addSubview(backGroundView)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
