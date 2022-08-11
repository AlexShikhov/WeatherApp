//
//  Weather.swift
//  New Weather
//
//  Created by Александр on 15.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import Foundation

struct Weather {
    let date: Int
    let main: WeatherMain
    let icon: [WeatherIcon]
}

extension Weather: Codable {
    enum CodingKeys: String, CodingKey {
        case date = "dt"
        case main = "main"
        case icon = "weather"
    }
}

struct WeatherMain {
    let temp: Double
    let tempMin: Double
}

extension WeatherMain: Codable {
    enum CodingKeys: String, CodingKey {
        case temp = "temp"
        case tempMin = "temp_min"
    }
}

struct WeatherIcon {
    let iconID: String
}

extension WeatherIcon: Codable {
    enum CodingKeys: String, CodingKey {
        case iconID = "icon"
    }
}
