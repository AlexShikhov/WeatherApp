//
//  AllCitiesVC+DataSourse.swift
//  New Weather
//
//  Created by Александр on 29.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

extension AllCitiesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: citiesCellIdentifier, for: indexPath) as? TableViewCell else {return UITableViewCell()}
        
        let city = allCities[indexPath.row]
        
        cell.configure(city: city)
        
        return cell
    }
    
    
}
