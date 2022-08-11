//
//  AllCitiesVC+Delegate.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

extension AllCitiesViewController: UITableViewDelegate {
    
    
    //MARK: - Row height
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(50.0)
    }
    
    
    
    //MARK: - Row select
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NotificationCenter.default.post(name: NSNotification.Name("SelectCity"), object: allCities[indexPath.row])
    }
}
