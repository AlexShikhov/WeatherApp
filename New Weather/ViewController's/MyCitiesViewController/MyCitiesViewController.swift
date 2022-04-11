//
//  MyCitiesViewController.swift
//  New Weather
//
//  Created by Александр on 29.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class MyCitiesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - viewDIdLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: citiesCellIdentifier)
        
        NotificationCenter.default.addObserver(self, selector: #selector(addGroup(notification:)), name: NSNotification.Name(rawValue: "SelectCity"), object: nil)
        
        
    }
    
    
    //MARK: - Selector
    
    @objc func addGroup(notification: Notification){
        
        guard let group = notification.object as? String else {return}
        
        if cities.contains( where: { sourseGroup in
            sourseGroup == group
        }){return} else {
            cities.append(group)
        }
        
        tableView.reloadData()
    }
   
    
    //MARK: - deinit
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}
