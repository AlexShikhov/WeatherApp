//
//  WeatherDayPicker.swift
//  New Weather
//
//  Created by Александр on 14.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import UIKit



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
