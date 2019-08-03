//
//  CellData.swift
//  AlfaOnePositiv
//
//  Created by санжар on 27.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

struct CellData {
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
    init(opened: Bool, title: String, sectionData: [String]) {
        self.opened = opened
        self.title = title
        self.sectionData = sectionData
    }
}
