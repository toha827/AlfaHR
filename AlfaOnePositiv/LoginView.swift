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
    var shadowView = ShadowView()
    var stackView = UIStackView()
    
    let loginView : UIView = {
        let view  = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        view.layer.masksToBounds = true
        return view
    }()
    
    let signInLbl : UILabel = {
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font names: \(names)")
        }
        var font = UIFont(name: "", size: 12)
        font = UIFont.init(name: "SFProDisplay-Bold", size: 30)
        let lbl = UILabel(text: "Sign In", font: font!, textColor: UIColor.darkBlueColor)
        return lbl
    }()
    
    let emailLbl : UILabel = {
        let lbl = UILabel(text: "Email", font: UIFont.Helvetica(17), textColor: UIColor.darkBlueColor)
        return lbl
    }()
    
    let emailTextField : UITextField = {
        let tf = UITextField(placeHolder: "Email", backgroundColor: UIColor.white, borderColor: UIColor.darkGray, textColor: UIColor.darkBlueColor, font: UIFont.Helvetica(17))
        var img = UIImage()
        img = img.resizeImage(image: UIImage.init(named: "sobachka")!, targetSize: .init(width: 10, height: 10))
        tf.withImage(direction: .Left, image: img, colorSeparator: UIColor.white, colorBorder: UIColor.darkBlueColor)
        
        
        return tf
    }()
    
    let passwordLbl : UILabel = {
        let lbl = UILabel(text: "Password", font: UIFont.Helvetica(17), textColor: UIColor.darkBlueColor)
        return lbl
    }()
    
    let passwordTextField : UITextField = {
        let tf = UITextField(placeHolder: "Password",backgroundColor: UIColor.white, borderColor: UIColor.darkBlueColor, textColor: UIColor.darkBlueColor, font: UIFont.Helvetica(17))
        tf.withImage(direction: .Left, image: UIImage.init(named: "password")!, colorSeparator: UIColor.white, colorBorder: UIColor.darkBlueColor)
        
        return tf
    }()
    
    let loginButton : UIButton = {
        let btn = UIButton(title: "LOGIN", borderColor: UIColor.darkBlueColor, textColor: UIColor.white, backgroundColor: UIColor.darkBlueColor,font: UIFont.Helvetica(17))
        
        btn.widthAnchor.constraint(equalToConstant: 130).isActive = true
        btn.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return btn
    }()
    
    let logoImage : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "LogoMini")
        img.contentMode = .scaleToFill
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup(){
        setupShadowView()
        setupLoginView()
        setupStackView()
        setupLogoImage()
        setupSignInLabel()
        setupLoginButton()
    }
    
    func setupShadowView(){
        addSubview(shadowView)
        shadowView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        shadowView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        shadowView.setAnchor(width: self.frame.width - 60, height: self.frame.height/2.5)
    }
    
    func setupLoginView(){
        addSubview(loginView)
        loginView.setAnchor(width: self.frame.width - 60, height: self.frame.height/2.5)
        loginView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        loginView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
    }
    
    func setupStackView(){
        stackView = createStackView(views: [emailLbl,
                                            emailTextField,
                                            passwordLbl,
                                            passwordTextField])
        
        loginView.addSubview(stackView)
        stackView.setAnchor(top: loginView.topAnchor, left: loginView.leftAnchor, bottom: nil, right: loginView.rightAnchor, paddingTop: 40, paddingLeft: 32, paddingBottom: -40, paddingRight: -32,width: loginView.frame.width - 40, height: loginView.frame.height)
        stackView.distribution = .fillEqually
       // stackView.layer.applySketchShadow()
    }
    
    func setupLogoImage(){
        addSubview(logoImage)
        logoImage.setAnchor(width: 60, height: 60)
        logoImage.setAnchor(top: nil, left: nil, bottom: loginView.topAnchor, right: loginView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 20, paddingRight: -30)
    }
    
    func setupSignInLabel(){
        addSubview(signInLbl)
        signInLbl.setAnchor(top: nil, left: loginView.leftAnchor, bottom: loginView.topAnchor, right: nil, paddingTop:100, paddingLeft: 0, paddingBottom: -70, paddingRight: 0)
       
    }
    
    func setupLoginButton(){
        addSubview(loginButton)
        loginButton.setAnchor(top: shadowView.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 60, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        loginButton.centerXAnchor.constraint(equalTo: shadowView.centerXAnchor).isActive = true
    }
    
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
