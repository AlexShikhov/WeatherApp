//
//  CityModel.swift
//  New Weather
//
//  Created by Александр on 14.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

let citiesCellIdentifier = "myCityReuseIdentifier"

//var cities = [(title: "Tokio", emblem: UIImage(imageLiteralResourceName: "tokio.png"))]
//
//var allCities = [
//    (title: "Marsel", emblem: UIImage(imageLiteralResourceName: "marsel.png")),
//    (title: "NN", emblem: UIImage(imageLiteralResourceName: "nn.png")),
//    (title: "Madrid", emblem: UIImage(imageLiteralResourceName: "madrid.png")),
//    (title: "Mexico", emblem: UIImage(imageLiteralResourceName: "mexico.png")),
//    (title: "Havana", emblem: UIImage(imageLiteralResourceName: "habana.png")),
//    (title: "Moskow", emblem: UIImage(imageLiteralResourceName: "moscow.png")),
//    (title: "London", emblem: UIImage(imageLiteralResourceName: "london.png")),
//    (title: "New York", emblem: UIImage(imageLiteralResourceName: "new york.png")),
//    (title: "Berlin", emblem: UIImage(imageLiteralResourceName: "berlin.png")),
//    (title: "Tokio", emblem: UIImage(imageLiteralResourceName: "tokio.png")),
//    ]

class City {
    var name: String
    var emblem: UIImage
    
    init(name: String, emblem: UIImage) {
        self.name = name
        self.emblem = emblem
    }
}

var cities: [City] = []
var allCities: [City] = [
    City(name: "Marsel", emblem: UIImage(imageLiteralResourceName: "marsel.png")),
    City(name: "NN", emblem: UIImage(imageLiteralResourceName: "nn.png")),
    City(name: "Madrid", emblem: UIImage(imageLiteralResourceName: "madrid.png")),
    City(name: "Mexico", emblem: UIImage(imageLiteralResourceName: "mexico.png")),
    City(name: "Havana", emblem: UIImage(imageLiteralResourceName: "habana.png")),
    City(name: "Moscow", emblem: UIImage(imageLiteralResourceName: "moscow.png")),
    City(name: "London", emblem: UIImage(imageLiteralResourceName: "london.png")),
    City(name: "New York", emblem: UIImage(imageLiteralResourceName: "new york.png")),
    City(name: "Berlin", emblem: UIImage(imageLiteralResourceName: "berlin.png")),
    City(name: "Tokio", emblem: UIImage(imageLiteralResourceName: "tokio.png")),
]

var currentCity = ""
