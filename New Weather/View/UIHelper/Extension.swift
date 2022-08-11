//
//  Extension.swift
//  New Weather
//
//  Created by Александр on 29.07.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        let arr = self.split(separator: " ")
        var word = ""
        for i in 0..<arr.count {
            word += String(arr[i].prefix(1).uppercased() + arr[i].lowercased().dropFirst() + " ")
        }

        
      return word
    }

    mutating func capitalizeFirstLetter() {
      self = self.capitalizingFirstLetter()
    }
}
