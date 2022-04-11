//
//  WeatherVC+Delegate.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

extension WeatherViewController: UICollectionViewDelegateFlowLayout {
    
    //Spacing between items
    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, minimumLineSpacingForSectionAt: Int) -> CGFloat{
        
        let space = CGFloat(10)
        
        return space
    }
    
    // Size of items
    func collectionView(_ collectionView: UICollectionView, layout: UICollectionViewLayout, sizeForItemAt: IndexPath) -> CGSize {
        
        let size = (view.frame.size.width) / 2 - 5
//        let size = CGFloat(150.0)
        return CGSize(width: size, height: size)
    }
}

extension WeatherViewController: UICollectionViewDelegate {
    
}
