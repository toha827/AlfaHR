//
//  RegistrationViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 17.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    
    var RegisterView : RegistrationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView(){
        let mainView = RegistrationView(frame: self.view.frame)
        let imageLogo = createLogoImage(image: #imageLiteral(resourceName: "alfa_logo.png"), size: view.frame.width/2)
        
        self.RegisterView = mainView
        self.view.addSubview(RegisterView)
        self.view.addSubview(imageLogo)
        self.view.backgroundColor = UIColor.white
        
        RegisterView.setAnchor(top: view.topAnchor,
                               left: view.leftAnchor,
                               bottom: view.bottomAnchor,
                               right: view.rightAnchor,
                               paddingTop: 0,
                               paddingLeft: 0,
                               paddingBottom: 0,
                               paddingRight: 0)
        self.RegisterView.cancelRegistration = cancelRegistration
        self.RegisterView.submitAction = register
        
        imageLogo.bottomAnchor.constraint(equalTo: RegisterView.nameTextField.topAnchor).isActive = true
        imageLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    func register() {
        
    }
    func cancelRegistration() {
        dismiss(animated: true, completion: nil)
    }
}
