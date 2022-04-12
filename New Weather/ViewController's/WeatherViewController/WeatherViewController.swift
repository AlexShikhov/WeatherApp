//
//  WeatherViewController.swift
//  New Weather
//
//  Created by Александр on 11.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

@IBDesignable class WeatherViewController: UIViewController {

    //MARK: - Properties
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var allButtons = [UIButton]()
    var selectDay: Days? = nil {
        didSet {
            self.updateSelectedDay()
        }
    }
//MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "WeatherCell", bundle: nil), forCellWithReuseIdentifier: "reuse")
        
        setupButtons()
        
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        }
    
    //MARK: - Method's
    
    @objc private func selectDay(_ sender: UIButton) {
        
        guard let index = self.allButtons.firstIndex(of: sender) else { return }
        guard let day = Days(rawValue: index) else { return }
        selectDay = day
        }
    
    private func updateSelectedDay() {
        for (index, button) in self.allButtons.enumerated() {
            guard let day = Days(rawValue: index) else { continue }
            button.isSelected = day == self.selectDay
        }
    }
    
    private func setupButtons() {
        for day in Days.allDays {
            let button = UIButton(type: .system)
            
            button.setTitle(day.title ,for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.setTitleColor(.darkGray, for: .selected)
            button.addTarget(self, action: #selector(selectDay( _:)), for: .touchUpInside)
            
            allButtons.append(button)
            stackView.addArrangedSubview(button)
        }
    }
}
