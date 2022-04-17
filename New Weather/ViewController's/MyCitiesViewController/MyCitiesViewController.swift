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
    
//    private var gradientLayer = CAGradientLayer()
    
    //MARK: - viewDIdLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: citiesCellIdentifier)
        
        NotificationCenter.default.addObserver(self, selector: #selector(addGroup(notification:)), name: NSNotification.Name(rawValue: "SelectCity"), object: nil)
        
        navigationController?.navigationBar.backgroundColor = UIColor.clear
        tableView.backgroundColor = UIColor.clear
        
        
        
    }
    
//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//
//        if gradientLayer.superlayer != nil {
//            gradientLayer.removeFromSuperlayer()
//        }
//
//        let topColor = UIColor(red: 0.00, green: 0.99, blue: 1.00, alpha: 1.00)
//        let bottomColor = UIColor.systemIndigo
//
//        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
//        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
//        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
//        gradientLayer.frame = tableView.bounds
//
//        let backgroundView = UIView(frame: tableView.bounds)
//        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
//
//        tableView.backgroundView = backgroundView
//    }
    
    
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
   
    
    //MARK: - deinit
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

}
