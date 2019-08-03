//
//  saveButton.swift
//  Nawaru
//
//  Created by Ulzhan Akmurat on 7/30/19.
//  Copyright © 2019 Ulzhan Akmurat. All rights reserved.
//

import UIKit

class AddVacancyModel: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    
    var addVacancy : (() ->  Void)?
    
    func setup() {
        titleView.addSubview(titleTitle)
        titleView.addSubview(titleTextField)
        descriptionView.addSubview(descriptionTitle)
        descriptionView.addSubview(descriptionTextField)
        experienceView.addSubview(experienceTextField)
        experienceView.addSubview(experienceTitle)
        //requirementsView.addSubview(requirementsTextField)
        //requirementsView.addSubview(requirementsTitle)
        
        let stackView = mainStackView()
        
        addSubview(stackView)
        stackView.setAnchor(width: self.frame.width - 40, height: self.frame.height/2)
        stackView.setAnchor(top: self.safeTopAnchor, left: self.safeLeftAnchor, bottom: nil, right: self.rightAnchor, paddingTop: 30, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        
        titleTitle.setAnchor(top: nil, left: titleView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        descriptionTitle.setAnchor(top: nil, left: titleView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        experienceTitle.setAnchor(top: nil, left: titleView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        //requirementsTitle.setAnchor(top: nil, left: titleView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 20, paddingBottom: 0, paddingRight: 0)
        
        addSubview(saveButton)
        saveButton.setAnchor(top: nil, left: self.centerXAnchor, bottom: self.safeBottomAnchor, right: nil, paddingTop: 0, paddingLeft: -65, paddingBottom: -90, paddingRight: 0)
    }
    
    
    let colorFill: UIColor = {
        var color = UIColor()
        color = UIColor(red: 35/255, green: 42/255, blue: 50/255, alpha: 1)
        return color
    }()
    
    let titleView: UIView = {
        let view = UIView()
        let indicatorView = UIView()
        indicatorView.backgroundColor = .red
        view.backgroundColor = .white
        view.setAnchor(width: 0, height: 90)
        
        indicatorView.setCellShadow()
        
        indicatorView.addSubview(view)
        view.setAnchor(top: indicatorView.topAnchor, left: indicatorView.leftAnchor, bottom: indicatorView.bottomAnchor, right: indicatorView.rightAnchor, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0)
        
        return indicatorView
    }()
    
    
    let descriptionView: UIView = {
        let view = UIView()
        let indicatorView = UIView()
        indicatorView.backgroundColor = .red
        view.backgroundColor = .white
        view.setAnchor(width: 0, height: 90)
        
        indicatorView.setCellShadow()
        
        indicatorView.addSubview(view)
        view.setAnchor(top: indicatorView.topAnchor, left: indicatorView.leftAnchor, bottom: indicatorView.bottomAnchor, right: indicatorView.rightAnchor, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0)
        
        return indicatorView
    }()
    
    let experienceView: UIView = {
        let view = UIView()
        let indicatorView = UIView()
        indicatorView.backgroundColor = .red
        view.backgroundColor = .white
        view.setAnchor(width: 0, height: 90)
        
        indicatorView.setCellShadow()
        
        indicatorView.addSubview(view)
        view.setAnchor(top: indicatorView.topAnchor, left: indicatorView.leftAnchor, bottom: indicatorView.bottomAnchor, right: indicatorView.rightAnchor, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0)
        
        return indicatorView
    }()
    
    let requirementsView: UIView = {
        let view = UIView()
        let indicatorView = UIView()
        indicatorView.backgroundColor = .red
        view.backgroundColor = .white
        view.setAnchor(width: 0, height: 90)
        
        indicatorView.setCellShadow()
        
        indicatorView.addSubview(view)
        view.setAnchor(top: indicatorView.topAnchor, left: indicatorView.leftAnchor, bottom: indicatorView.bottomAnchor, right: indicatorView.rightAnchor, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0)
        
        return indicatorView
    }()
    
    let titleTitle : UILabel = {
        let label = UILabel()
        label.text = "Title"
        label.textColor = UIColor.darkGray
        label.setAnchor(width: 0, height: 60)
        return label
    }()
    
    let descriptionTitle : UILabel = {
        let label = UILabel()
        label.text = "Description"
        label.textColor = UIColor.darkGray
        label.setAnchor(width: 0, height: 60)
        
        return label
    }()
    
    let experienceTitle : UILabel = {
        let label = UILabel()
        label.text = "Experience"
        label.textColor = UIColor.darkGray
        label.setAnchor(width: 0, height: 60)
        
        return label
    }()
    
    let requirementsTitle : UILabel = {
        let label = UILabel()
        label.text = "Requirements"
        label.textColor = UIColor.darkGray
        label.setAnchor(width: 0, height: 60)
        
        return label
    }()
    
    let titleTextField: UITextField = {
        let text = UITextField()
        text.borderStyle = .none
        text.layer.cornerRadius = 5
        text.textColor = UIColor.darkText
        text.font = UIFont.systemFont(ofSize: 17)
        text.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Enter Title", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), .foregroundColor: UIColor.darkGray]))
        text.attributedPlaceholder = placeholder
        text.setAnchor(width: 0, height: 125)
        text.setLeftPaddingPoints(20)
        
        text.addTarget(self, action: #selector(positionTextFieldDidChange), for: UIControl.Event.editingChanged)
        
        return text
    }()
    
    let descriptionTextField: UITextField = {
        let text = UITextField()
        text.borderStyle = .none
        text.layer.cornerRadius = 5
        text.textColor = UIColor.darkText
        text.font = UIFont.systemFont(ofSize: 17)
        text.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Enter Description", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), .foregroundColor: UIColor.darkGray]))
        text.attributedPlaceholder = placeholder
        text.setAnchor(width: 0, height: 125)
        text.setLeftPaddingPoints(20)
        
        text.addTarget(self, action: #selector(addressTextFieldDidChange), for: UIControl.Event.editingChanged)
        
        return text
    }()
    
    let experienceTextField: UITextField = {
        let text = UITextField()
        text.borderStyle = .none
        text.layer.cornerRadius = 5
        text.textColor = UIColor.darkText
        text.font = UIFont.systemFont(ofSize: 17)
        text.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Enter Experience", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), .foregroundColor: UIColor.darkGray]))
        text.attributedPlaceholder = placeholder
        text.setAnchor(width: 0, height: 125)
        text.setLeftPaddingPoints(20)
        
        text.addTarget(self, action: #selector(experienceTextFieldDidChange), for: UIControl.Event.editingChanged)
        
        return text
    }()
    
    let requirementsTextField: UITextField = {
        
        let text = UITextField()
        text.borderStyle = .none
        text.layer.cornerRadius = 5
        text.textColor = UIColor.darkText
        text.font = UIFont.systemFont(ofSize: 17)
        text.autocorrectionType = .no
        //placeholder
        var placeholder = NSMutableAttributedString()
        placeholder = NSMutableAttributedString(attributedString: NSAttributedString(string: "Enter Requirements", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), .foregroundColor: UIColor.darkGray]))
        text.attributedPlaceholder = placeholder
        text.setAnchor(width: 0, height: 125)
        text.setLeftPaddingPoints(20)
        
        text.addTarget(self, action: #selector(requirementsTextFieldDidChange), for: UIControl.Event.editingChanged)
        
        return text
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        let attributedString = NSMutableAttributedString(attributedString: NSAttributedString(string: "SAVE", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18), .foregroundColor: UIColor.white]))
        button.setAttributedTitle(attributedString, for: .normal)
        button.layer.cornerRadius = 5
        button.layer.backgroundColor = UIColor(red: 35/255, green: 42/255, blue: 50/255, alpha: 1).cgColor
        button.setAnchor(width: 130, height: 40)
        button.addTarget(self, action: #selector(handleAddVacancy), for: .touchUpInside)
        return button
    }()
    
    func mainStackView() -> UIStackView{
        let stackView = UIStackView(arrangedSubviews: [titleView,
                                                       experienceView,
                                                       descriptionView])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 25
        return stackView
    }
    
    @objc func positionTextFieldDidChange(){
        
        titleView.backgroundColor = titleTextField.text!.count > 0 ? colorFill : .red
    }
    
    @objc func addressTextFieldDidChange(){
        
        descriptionView.backgroundColor = descriptionTextField.text!.count > 0 ? colorFill : .red
    }
    
    @objc func experienceTextFieldDidChange(){
        
        experienceView.backgroundColor = experienceTextField.text!.count > 0 ? colorFill : .red
    }
    
    @objc func requirementsTextFieldDidChange(){
        
        requirementsView.backgroundColor = requirementsTextField.text!.count > 0 ? colorFill : .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @objc func handleAddVacancy (){
        addVacancy?()
    }
    
}
