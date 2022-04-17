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
    @IBOutlet weak var containView: UIView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        weatherImage.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        //Make shadow for cental view with temp
        containView.layer.cornerRadius = containView.layer.bounds.width / 2
        containView.clipsToBounds = false
        containView.layer.shadowColor = UIColor.black.cgColor
        containView.layer.shadowOffset = .zero
        containView.layer.shadowRadius = 10
        containView.layer.shadowOpacity = 1
        
        
    }
    
    func configure(index: Int, sourseArray: [Weather]) {
        weatherImage.image = UIImage(systemName: "sun.min")
        tempLabel.text = String(sourseArray[index].main.temp)
        
        let date = Double(sourseArray[index].date)
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.short
        dateFormatter.dateStyle = DateFormatter.Style.medium
        let localDate = dateFormatter.string(from: Date(timeIntervalSince1970: date))
        
        dateLabel.text = localDate
        
        
    }

}
