//
//  File.swift
//  New Weather
//
//  Created by Александр on 29.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

var cities = [(title: "Tokio", emblem: UIImage(imageLiteralResourceName: "tokio.png"))]

var allCities = [
    (title: "Marsel", emblem: UIImage(imageLiteralResourceName: "marsel.png")),
    (title: "NN", emblem: UIImage(imageLiteralResourceName: "nn.png")),
    (title: "Madrid", emblem: UIImage(imageLiteralResourceName: "madrid.png")),
    (title: "Mexico", emblem: UIImage(imageLiteralResourceName: "mexico.png")),
    (title: "Havana", emblem: UIImage(imageLiteralResourceName: "habana.png")),
    (title: "Moskow", emblem: UIImage(imageLiteralResourceName: "moscow.png")),
    (title: "London", emblem: UIImage(imageLiteralResourceName: "london.png")),
    (title: "New York", emblem: UIImage(imageLiteralResourceName: "new york.png")),
    (title: "Berlin", emblem: UIImage(imageLiteralResourceName: "berlin.png")),
    (title: "Tokio", emblem: UIImage(imageLiteralResourceName: "tokio.png")),
    ]

let citiesCellIdentifier = "myCityReuseIdentifier"

let date = Date()
let calendar = Calendar.current
let currentDay = calendar.component(.day, from: date)
let currentMonth = calendar.component(.month, from: date)
let currentYear = calendar.component(.year, from: date)


enum Days: Int {
    
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    static let allDays: [Days] = [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday]
    
    var title: String {
        switch self {
        case .monday: return "ПН"
        case .tuesday: return "ВТ"
        case .wednesday: return "СР"
        case .thursday: return "ЧТ"
        case .friday: return "ПТ"
        case .saturday: return "СБ"
        case .sunday: return "ВС"
        }
    }
}


