//
//  WeatherCell.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class WeatherCell: UICollectionViewCell {

    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        weatherImage.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(index: Int) {
        weatherImage.image = UIImage(systemName: "sun.min")
        tempLabel.text = "31 C"
        dateLabel.text = "\(currentDay).\(currentMonth).\(currentYear)"
        
        
    }

}
