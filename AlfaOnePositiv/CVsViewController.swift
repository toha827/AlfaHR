//
//  CVsViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 20.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit

class CVsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var tableViewData: [Candidate] = []
    
    let tableView : UITableView = {
        let tv = UITableView()
        tv.separatorStyle = .none
        return tv
    }()
    
    let addButton : UIButton = {
        let btn = UIButton()
        btn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
        btn.setImage(UIImage(named:"plus"), for: .normal)
        btn.addTarget(self, action: #selector(addCandidate), for: UIControl.Event.touchUpInside)
        
        return btn
    }()
    
    let sectionCellId = "sectionCellId"
    let candidateCellId = "candidateCellId"
    let sectionBottomCellId = "sectionBottomCellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewData = ["","Nurbay Nurbek", "Muratbek Aktilek", "Vladimir Kim"]
        
        view.backgroundColor = UIColor.white
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        navigationController?.navigationBar.setGradientBackground(colorOne: UIColor.darkBlueColorWithAlpha, colorTwo: UIColor.DarkerDarkBlueColor)
        navigationItem.searchController?.searchBar.setGradientBackground(colorOne: UIColor.darkBlueColorWithAlpha08, colorTwo: UIColor.darkBlueColor)
        navigationItem.title = "Candidates"
        let add = UIBarButtonItem(customView: addButton)
        navigationItem.rightBarButtonItems = [add]
        setupTableView()
    }
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(SectionCell.self, forCellReuseIdentifier: sectionCellId)
        tableView.register(CandidateCell.self, forCellReuseIdentifier: candidateCellId)
        view.addSubview(tableView)
        
        tableView.setAnchor(top: view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, paddingTop: 4, paddingLeft: 4, paddingBottom: 4, paddingRight: 4)

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if tableViewData[section].opened{
//            return tableViewData[section].sectionData.count
//        }
//        else{
//            return 1
//        }
        return tableViewData.count
    }
    func getCv(){
        guard let url = URL(string: "http://ec2-13-48-49-15.eu-north-1.compute.amazonaws.com:9000/posts") else{
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
                    for case let temp in jsonArray{
                        if let candidate = Candidate(json: temp){
                            self.tableViewData.append(candidate)
                            print(candidate)
                        }
                    }
                    
                    self.tableView.reloadData()
                    print(self.tableViewData)
                    
                } catch{
                    print(error)
                }
            }
            }.resume()
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row == 0 {
//            let cell = tableView.dequeueReusableCell(withIdentifier: sectionCellId) as! SectionCell
//            cell.title.text = tableViewData[indexPath.section].title
//            return cell
//        } else{
//            let cell = tableView.dequeueReusableCell(withIdentifier: sectionBottomCellId) as? SectionBottomCell
//
//            cell!.title.text = tableViewData[indexPath.section].sectionData[indexPath.row]
//
//            return cell!
//        }
        let cell = tableView.dequeueReusableCell(withIdentifier: candidateCellId) as? CandidateCell
        print(indexPath.row)
        cell?.title.text = tableViewData[indexPath.row].f_name
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if tableViewData[indexPath.section].opened == true{
//            tableViewData[indexPath.section].opened = false
//            let sections = IndexSet.init(integer: indexPath.section)
//            tableView.reloadSections(sections, with: .none)
//        }else{
//            tableViewData[indexPath.section].opened = true
//            let sections = IndexSet.init(integer: indexPath.section)
//            tableView.reloadSections(sections, with: .none)
//        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    @objc func addCandidate(){
        
    }
}
