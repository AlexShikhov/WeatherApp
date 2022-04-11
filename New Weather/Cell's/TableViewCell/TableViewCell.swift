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
    
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        cityLabel.text = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    func configure(indexPath: Int, arrayOfCities: [String]) {
        cityLabel.text = arrayOfCities[indexPath]
    }
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
