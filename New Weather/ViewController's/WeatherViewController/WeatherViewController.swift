//
//  WeatherViewController.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    //MARK: - Outlet
    
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    //MARK: - Property
    
    
    let networkService = NetworkService()
    var forecast: [Weather] = []
    
    
    
//MARK: - Lifecycle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityNameLabel.text = ""
        
        collectionViewSetting()
        networkService.fetchCity(city: currentCity) { [weak self] weather in
            self?.forecast = weather
            self?.cityNameLabel.text = currentCity.capitalizingFirstLetter()
            self?.collectionView.reloadData()
        }
    }
    

    
    //MARK: - Private func
    
    
    private func collectionViewSetting() {
        collectionView.dataSource = self
               collectionView.delegate = self
               collectionView.register(UINib(nibName: "WeatherCell", bundle: nil), forCellWithReuseIdentifier: "reuse")
        
               collectionView.backgroundColor = .clear
    }
}
