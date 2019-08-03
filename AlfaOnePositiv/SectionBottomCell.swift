//
//  SectionCell.swift
//  AlfaOnePositiv
//
//  Created by санжар on 23.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import Foundation
import UIKit

class SectionBottomCell: UITableViewCell{
    let shadowView = ShadowView()
    let cellView : UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        
        return view
    }()
    let profilePhoto : UIImageView = {
        let img = UIImageView()
        img.image = #imageLiteral(resourceName: "alfa_logo.png")
        return img
    }()
    let title : UILabel = {
        let label = UILabel()
        label.text = "SectionBottomName"
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style,reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setup()
    }
    func setup(){
        addSubview(shadowView)
        addSubview(cellView)
        
        cellView.addSubview(title)
        shadowView.setAnchor(top: self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 2, paddingLeft: 2, paddingBottom: 2, paddingRight: 2,width: self.frame.width, height: 50)
        
        cellView.setAnchor(top: shadowView.topAnchor, left: shadowView.leftAnchor, bottom: shadowView.bottomAnchor, right: shadowView.rightAnchor, paddingTop: 4, paddingLeft: 2, paddingBottom: 4, paddingRight: 8)
        title.setAnchor(top: cellView.topAnchor, left: cellView.leftAnchor, bottom: nil, right: nil, paddingTop: 4, paddingLeft: 4, paddingBottom: 4, paddingRight: 8)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
