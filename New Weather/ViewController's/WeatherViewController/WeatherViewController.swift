//
//  WeatherViewController.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

@IBDesignable class WeatherViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "WeatherCell", bundle: nil), forCellWithReuseIdentifier: "reuse")
        
    }
    


}
