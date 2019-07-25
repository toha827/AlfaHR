//
//  CVsViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 20.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class CVsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var tableViewData = [cellData]()
    
    let tableView : UITableView = {
        let tv = UITableView()
        tv.separatorStyle = .none
        return tv
    }()
    
    let sectionCellId = "sectionCellId"
    let sectionBottomCellId = "sectionBottomCellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewData = [cellData(opened: false, title: "JavaScript", sectionData: ["","Nurbay Nurbek", "Muratbek Aktilek", "Vladimir Kim"]),
                         cellData(opened: false, title: "Java", sectionData: ["Cell1","Cell2", "Cell3"]),
                         cellData(opened: false, title: "C++", sectionData: ["Cell1","Cell2", "Cell3"]),
                         cellData(opened: false, title: "Html", sectionData: ["Cell1","Cell2", "Cell3"])
        ]
        view.backgroundColor = UIColor.white
        //navigationController?.navigationBar.prefersLargeTitles = true
        //navigationItem.title = "CV"
        
        setupTableView()
    }
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(SectionCell.self, forCellReuseIdentifier: sectionCellId)
        
        tableView.register(SectionBottomCell.self, forCellReuseIdentifier: sectionBottomCellId)
        view.addSubview(tableView)
        
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 4, paddingLeft: 4, paddingBottom: 4, paddingRight: 4)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened{
            return tableViewData[section].sectionData.count
        }
        else{
            return 1
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: sectionCellId) as! SectionCell
            cell.title.text = tableViewData[indexPath.section].title
            return cell
        } else{
            let cell = tableView.dequeueReusableCell(withIdentifier: sectionBottomCellId) as? SectionBottomCell
            
            cell!.title.text = tableViewData[indexPath.section].sectionData[indexPath.row]
            
            return cell!
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableViewData[indexPath.section].opened == true{
            tableViewData[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }else{
            tableViewData[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }

}
