//
//  VacancyViewController.swift
//  AlfaOnePositiv
//
//  Created by санжар on 20.07.2019.
//  Copyright © 2019 Aktilek. All rights reserved.
//

import UIKit



class VacancyViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var tableViewData = [CellData]()
    var userId : Int = -1
    let tableView : UITableView = {
        let tv = UITableView()
        tv.separatorStyle = .none
        return tv
    }()
    
    let addButton : UIButton = {
       let btn = UIButton()
       btn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
       btn.setImage(UIImage(named:"plus"), for: .normal)
       btn.addTarget(self, action: #selector(addVacancy), for: UIControl.Event.touchUpInside)
       return btn
    }()
    
    let sectionCellId = "sectionCellId"
    let sectionBottomCellId = "sectionBottomCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewData = [CellData(opened: false, title: "JavaScript", sectionData: ["","Nurbay Nurbek", "Muratbek Aktilek", "Vladimir Kim"]),
                         CellData(opened: false, title: "Java", sectionData: ["Cell1","Cell2", "Cell3"]),
                         CellData(opened: false, title: "C++", sectionData: ["Cell1","Cell2", "Cell3"]),
                         CellData(opened: false, title: "Html", sectionData: ["Cell1","Cell2", "Cell3"])]
        view.backgroundColor = UIColor.white
        
        let searchController = UISearchController(searchResultsController: nil)
        
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationController!.view.backgroundColor = .white
        
        
       // navigationItem.searchController?.searchBar.setGradientBackground(colorOne: UIColor.darkBlueColorWithAlpha08, colorTwo: UIColor.darkBlueColor)
        navigationItem.title = "Vacancies"
        
        //let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        let addBtn = addButton
        addBtn.addTarget(self, action: #selector(addVacancy), for: UIControl.Event.touchUpInside)
        let add = UIBarButtonItem(customView: addBtn)
        navigationItem.rightBarButtonItems = [add]
        self.tableView.reloadData()
        setupTableView()
        getVacancies()
        
        
    }
    
    func getVacancies(){
        guard let url = URL(string: "http://ec2-13-48-49-15.eu-north-1.compute.amazonaws.com:9000/vacancies") else{
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
                        if let vacancy = VacancyModel(json: temp){
                            self.tableViewData.append(CellData(opened: false, title: vacancy.title, sectionData: [vacancy.description]))
                            print(vacancy)
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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableViewData[indexPath.section].opened == true{
            tableViewData[indexPath.section].opened = false
            let sections = IndexSet.init(integer: indexPath.section)
            if indexPath.row == 0 {
                tableView.reloadSections(sections, with: .none)
            }
            else{
                let vc = VacancyInfoController()
                vc.setSetup(count: "T##String", title: tableViewData[indexPath.section].title, desc: "String")
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }else{
            tableViewData[indexPath.section].opened = true
            let sections = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(sections, with: .none)
        }
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    @objc func addVacancy() {
        
        let vc = AddVacancyViewController()
        vc.setSetup(userId: self.userId)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func setSetup(userId : Int){
        self.userId = Int(userId)
    }
}



