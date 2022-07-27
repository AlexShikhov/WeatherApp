//
//  MyCitiesViewController.swift
//  New Weather
//
//  Created by Александр on 29.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class MyCitiesViewController: UIViewController {

    
    //MARK: - Outlet
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK: - Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerTableView()
        navigationController?.navigationBar.backgroundColor = UIColor.clear
    }
    
    
    
    //MARK: - Selector
    
    
    @objc func addGroup(notification: Notification){
        
        guard let group = notification.object as? City else {return}
        
        if cities.contains( where: { sourseGroup in
            sourseGroup.name == group.name
        }){return} else {
            cities.append(group)
        }
        tableView.reloadData()
    }
   
    
    
    //MARK: - Private method
    
    
    private func registerTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: citiesCellIdentifier)
        tableView.backgroundColor = UIColor.clear
        
        NotificationCenter.default.addObserver(self, selector: #selector(addGroup(notification:)), name: NSNotification.Name(rawValue: "SelectCity"), object: nil)
    }
    
    
    
    //MARK: - deinit
    
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}
