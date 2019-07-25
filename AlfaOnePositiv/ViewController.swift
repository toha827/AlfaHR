//
//  ViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 17.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var loginView : LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
    }
    
    func setupView(){
        //let imageLogo = createLogoImage(image: #imageLiteral(resourceName: "alfa_logo.png"), size: view.frame.width/2)
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        
        self.view.addSubview(loginView)
       // self.view.addSubview(imageLogo)
        self.view.backgroundColor = UIColor.white
        
        loginView.setAnchor(top: view.topAnchor,
                            left: view.leftAnchor,
                            bottom: view.bottomAnchor,
                            right: view.rightAnchor,
                            paddingTop: 0,
                            paddingLeft: 0,
                            paddingBottom: 0,
                            paddingRight: 0)
        
        self.loginView.loginAction = loginPressed
        self.loginView.signUpAction = signUpPressed
        
//        imageLogo.bottomAnchor.constraint(equalTo: loginView.emailTextField.topAnchor).isActive = true
//        imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func loginPressed() {
        
    }
    func signUpPressed() {
        let signUpController = RegistrationViewController()
        present(signUpController,animated: true,completion: nil)
    }
}
