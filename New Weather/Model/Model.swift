//
//  File.swift
//  New Weather
//
//  Created by Александр on 29.03.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit

var cities = ["Tokio"]

var allCities = ["Marsel",
                 "NN",
                 "Madrid",
                 "Mexico",
                 "Havana",
                 "Berlin",
                 "Inopolis",
                 "Moskow",
                 "London",
                 "New York"]

let citiesCellIdentifier = "myCityReuseIdentifier"

let date = Date()
let calendar = Calendar.current
let currentDay = calendar.component(.day, from: date)
let currentMonth = calendar.component(.month, from: date)
let currentYear = calendar.component(.year, from: date)
