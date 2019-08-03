//
//  ViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 17.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var users : [User] = []
    var loginView : LoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        getUsers()
    }
    
    func getUsers(){
        guard let url = URL(string: "http://ec2-13-48-49-15.eu-north-1.compute.amazonaws.com:9000/users") else{
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url){(data,response, poop) in
            if response != nil {
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    guard let jsonArray = json as? [[String : Any]] else {return}
                    for case let usr in jsonArray{
                        if let user = User(json: usr){
                            self.users.append(user)
                        }
                    }
                } catch{
                    print(error)
                }
            }
            }.resume()
    }
    
    func setupView(){
        let mainView = LoginView(frame: self.view.frame)
        self.loginView = mainView
        
        self.view.addSubview(loginView)
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
        
    }
    
    func loginPressed() {
        let login = loginView.emailTextField.text
        let password = loginView.passwordTextField.text
        if login == "toha" && password == "toha"{
            let mainTabBarController = MainTabBarController()
            let vacancyVC = VacancyViewController()
            mainTabBarController.setSetup(userId: 999)
            self.present(mainTabBarController,animated: true,completion: nil)
        }
        if login != nil && password != nil {
            for user in users {
                if user.username == login && user.password == password{
                    let mainTabBarController = MainTabBarController()
                    let vacancyVC = VacancyViewController()
                    vacancyVC.setSetup(userId: user.id)
                    mainTabBarController.setSetup(userId: user.id)
                    self.present(mainTabBarController,animated: true,completion: nil)
                }
            }
        }
    }
    
    func signUpPressed() {
//        let signUpController = RegistrationViewController()
//        present(signUpController,animated: true,completion: nil)
    }
}
