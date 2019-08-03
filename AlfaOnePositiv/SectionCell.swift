//
//  SectionCell.swift
//  AlfaOnePositiv
//
//  Created by санжар on 23.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import Foundation
import UIKit

class SectionCell: UITableViewCell{
    let shadowView = ShadowView()
    let backgrndView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    let leftIndicatorView : UIView = {
       let view = UIView()
       view.backgroundColor = UIColor.darkBlueColor
       view.layer.cornerRadius = 5
       view.layer.masksToBounds = true
       return view
    }()
    
    let cellView : UIView = {
        let view = UIView()
        
        view.backgroundColor = .white
        return view
    }()
    let title : UILabel = {
        let label = UILabel()
        label.text = "SectionName"
        return label
    }()
    let subtitle : UILabel = {
        let label = UILabel()
        label.text = "Subtitle"
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    func setup(){
        addSubview(backgrndView)
        addSubview(shadowView)
        addSubview(leftIndicatorView)
        addSubview(cellView)
        cellView.addSubview(title)
        cellView.addSubview(subtitle)
        
        backgrndView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: -14, paddingRight: 0, width: self.frame.width, height: 90)
        let viewSeparatorLine = UIView(frame:CGRect(x: 0, y: self.frame.size.height - 8.0, width: self.frame.size.width, height: 8))
        viewSeparatorLine.backgroundColor = .black
        shadowView.setAnchor(top: backgrndView.topAnchor, left: backgrndView.leftAnchor, bottom: backgrndView.bottomAnchor, right: backgrndView.rightAnchor, paddingTop: 4, paddingLeft: 4, paddingBottom: 4, paddingRight: 4)
        
        leftIndicatorView.setAnchor(top: shadowView.topAnchor, left: shadowView.leftAnchor, bottom: shadowView.bottomAnchor, right: shadowView.rightAnchor, paddingTop: 8, paddingLeft: 0, paddingBottom: 4, paddingRight: 0)
    
        cellView.setAnchor(top: leftIndicatorView.topAnchor, left: leftIndicatorView.leftAnchor, bottom: leftIndicatorView.bottomAnchor, right: leftIndicatorView.rightAnchor, paddingTop: 0, paddingLeft: 5, paddingBottom: 0, paddingRight: 0)
        
        title.setAnchor(top: cellView.topAnchor, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 10, paddingBottom: 0, paddingRight: 0)
        subtitle.setAnchor(top: title.bottomAnchor, left: title.leftAnchor, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        self.contentView.addSubview(viewSeparatorLine)
        //viewSeparatorLine.setAnchor(top: shadowView.bottomAnchor, left: shadowView.leftAnchor, bottom: nil, right: shadowView.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 10, paddingRight: 0)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

