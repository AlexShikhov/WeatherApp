//
//  AllCitiesViewController.swift
//  New Weather
//
//  Created by Александр on 29.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class AllCitiesViewController: UIViewController {

    
    //MARK: - Outlet
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    //MARK: - Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerTableView()
        navigationController?.navigationBar.backgroundColor = UIColor.clear
        }
    
    
    
    //MARK: - Private func
    
    
    private func registerTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: citiesCellIdentifier)
        tableView.backgroundColor = UIColor.clear
    }
}


