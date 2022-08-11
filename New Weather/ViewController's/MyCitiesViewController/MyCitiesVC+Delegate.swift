//
//  MyCitiesVC+Delegate.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

extension MyCitiesViewController: UITableViewDelegate {
    
    //MARK: - Row height
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(50.0)
    }
    
    
    
    //MARK: - Row delete
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            createDeleteAlert(indexPath: indexPath, tableView: tableView)
        }
    }
    
    
    
    //MARK: - Row select
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        currentCity = cities[indexPath.row].name
        performSegue(withIdentifier: "fromTVtoCV", sender: nil)
        
    }
    
    
    
    //MARK: - Private method
    
    
    private func createDeleteAlert(indexPath: IndexPath, tableView: UITableView) {
        
        let alertController = UIAlertController(title: "Внимание!", message: "Вы действительно хотите удалить \(cities[indexPath.row].name) из списка городов?", preferredStyle: .alert)
        
         let action = UIAlertAction(title: "Удалить", style: .destructive) { [weak self]_ in
             cities.remove(at: indexPath.row)
             tableView.deleteRows(at: [indexPath], with: .left)
         }
         let abortAction = UIAlertAction(title: "Оставить", style: .cancel, handler: nil)
         
         alertController.addAction(action)
         alertController.addAction(abortAction)
         
         present(alertController, animated: true)
    }
}

//MARK: - SearhBarDelegate


extension MyCitiesViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let cityName = citySearchBar.text else {return}
        currentCity = cityName
        performSegue(withIdentifier: "fromTVtoCV", sender: nil)
    }
}



