//
//  LoginView.swift
//  AlfaOnePositiv
//
//  Created by санжар on 17.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class LoginView : UIView{
    
    var loginAction : (() ->  Void)?
    var signUpAction : (() ->  Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup(){
        let stackView = createStackView(views: [signInLbl,
                                                emailLbl,
                                                emailTextField,
                                                passwordLbl,
                                                passwordTextField])
        
        let shadowView = ShadowView()
        loginView.addSubview(stackView)
        
        addSubview(loginView)
        addSubview(shadowView)
        
        shadowView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        shadowView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        
        shadowView.setAnchor(width: self.loginView.frame.width+20, height: self.loginView.frame.height+20)
        
        
        loginView.setAnchor(top: shadowView.topAnchor, left: shadowView.leftAnchor, bottom: shadowView.bottomAnchor, right: shadowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
        
        stackView.distribution = .fillEqually
        stackView.setAnchor(width: self.frame.width - 60, height: frame.height/4)
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    let loginView : UIView = {
        let view  = UIView()
        return view
    }()
    let signInLbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Sign In"
        return lbl
    }()
    let emailLbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Email"
        return lbl
    }()
    let emailTextField : UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()
    let passwordLbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Password"
        return lbl
    }()
    let passwordTextField : UITextField = {
        let tf = UITextField(placeHolder: "Password")
        return tf
    }()
    
    let loginButton : UIButton = {
        let btn = UIButton(title: "Login", borderColor: UIColor.redColor)
        btn.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return btn
    }()
    
    let signUpButton : UIButton = {
        let btn = UIButton(title: "Sign Up", borderColor: UIColor.redColor)
        btn.addTarget(self, action: #selector(handleSignUp), for: .touchUpInside)
        return btn
    }()
    let logoImage : UIImage = {
        let img = UIImage()
        
        return img
    }()
    @objc func handleLogin (){
        loginAction?()
    }
    
    @objc func handleSignUp (){
        signUpAction?()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
