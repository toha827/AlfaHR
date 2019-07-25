//
//  LoginView.swift
//  AlfaOnePositiv
//
//  Created by санжар on 17.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class RegistrationView : UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    var cancelRegistration : (() ->  Void)?
    var submitAction : (() ->  Void)?
    
    func setup(){
        let stackView = createStackView(views:[nameTextField,
                                               emailTextField,
                                               passwordTextField,
                                               perly_passwordTextField,
                                               registration_Button,
                                               backButton])
        addSubview(stackView)
        stackView.distribution = .fillEqually
        stackView.setAnchor(width: self.frame.width - 60, height: frame.height/3)
        print(frame.height)
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    let nameTextField : UITextField = {
        let tf = UITextField(placeHolder: "Name")
        return tf
    }()
    
    let emailTextField : UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()
    
    let passwordTextField : UITextField = {
        let tf = UITextField(placeHolder: "Password")
        return tf
    }()
    
    let perly_passwordTextField : UITextField = {
        let tf = UITextField(placeHolder: "Confirm Password")
        return tf
    }()
    
    let registration_Button : UIButton = {
        let btn = UIButton(title: "Submit", borderColor: UIColor.redColor)
        btn.addTarget(self, action: #selector(handleSubmit), for: .touchUpInside)
        return btn
    }()
    
    let backButton : UIButton = {
        let btn = UIButton(title: "Cancel", borderColor: UIColor.redColor)
        btn.addTarget(self, action: #selector(handleCancel), for: .touchUpInside)
        return btn
    }()
    
    @objc func handleCancel (){
        cancelRegistration?()
    }
    
    @objc func handleSubmit (){
        submitAction?()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
