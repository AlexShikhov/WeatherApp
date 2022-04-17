//
//  TableViewCell.swift
//  New Weather
//
//  Created by Александр on 29.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var cityImage: UIImageView!
    
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        cityLabel.text = nil
        cityImage.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cityLabel.textColor = UIColor.white
        cityImage.layer.borderColor = UIColor.white.cgColor
        cityImage.layer.borderWidth = 2
        
        contentView.backgroundColor = UIColor.clear
        
        
        
    }

    //MARK: - Configure
    
    func configure(city: City) {
        cityLabel.text = city.name
        cityImage.image = city.emblem ?? UIImage(systemName: "circle")
    }
    
    //MARK: - LayoutConfig
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        cityImage.clipsToBounds = true
        cityImage.layer.cornerRadius = 20
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
