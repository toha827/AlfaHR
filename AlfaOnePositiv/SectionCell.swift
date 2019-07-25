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
    
    let cellView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        
        return view
    }()
    let title : UILabel = {
        let label = UILabel()
        label.text = "SectionName"
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    func setup(){
        addSubview(shadowView)
        addSubview(cellView)
        cellView.addSubview(title)
        
        shadowView.setAnchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    
        cellView.setAnchor(top: shadowView.topAnchor, left: shadowView.leftAnchor, bottom: shadowView.bottomAnchor, right: shadowView.rightAnchor, paddingTop: 8, paddingLeft: 0, paddingBottom: 4, paddingRight: 0)
    
        title.setAnchor(top: cellView.topAnchor, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
