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
        let stackView = createStackView(views: [
                                                emailLbl,
                                                emailTextField,
                                                passwordLbl,
                                                passwordTextField])
        
        let shadowView = ShadowView()
        addSubview(signInLbl)
        loginView.addSubview(stackView)
        
        addSubview(shadowView)
        addSubview(loginView)
        addSubview(logoImage)
        addSubview(loginButton)
        
        
        signInLbl.setAnchor(top: nil, left: loginView.leftAnchor, bottom: loginView.topAnchor, right: nil, paddingTop:100, paddingLeft: 0, paddingBottom: -70, paddingRight: 0)
        shadowView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        shadowView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        shadowView.setAnchor(width: self.frame.width - 60, height: self.frame.height/2.5)
        loginView.setAnchor(width: self.frame.width - 60, height: self.frame.height/2.5)
        loginView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        loginView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        logoImage.setAnchor(width: 60, height: 60)
        
        logoImage.setAnchor(top: nil, left: nil, bottom: loginView.topAnchor, right: loginView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 20, paddingRight: -30)
        stackView.setAnchor(top: loginView.topAnchor, left: loginView.leftAnchor, bottom: nil, right: loginView.rightAnchor, paddingTop: 40, paddingLeft: 32, paddingBottom: -40, paddingRight: -32,width: loginView.frame.width - 40, height: loginView.frame.height)
        stackView.distribution = .fillEqually
        
        loginButton.centerXAnchor.constraint(equalTo: loginView.centerXAnchor)
    }
    let loginView : UIView = {
        let view  = UIView()
        view.backgroundColor = .white
        
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()
    let signInLbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Sign In"
        lbl.font = UIFont (name: "Helvetica", size: 30)
        return lbl
    }()
    let emailLbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Email"
        
        lbl.font = UIFont (name: "Helvetica", size: 17)
        return lbl
    }()
    let emailTextField : UITextField = {
        let tf = UITextField(placeHolder: "Email")
        return tf
    }()
    let passwordLbl : UILabel = {
        let lbl = UILabel()
        lbl.text = "Password"
        
        lbl.font = UIFont (name: "Helvetica", size: 17)
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
    
    let logoImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "LogoMini")
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
