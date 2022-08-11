//
//  WeatherResponce.swift
//  New Weather
//
//  Created by Александр on 15.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import Foundation

struct WeatherResponse {
    public let weathers: [Weather]
}

extension WeatherResponse: Decodable {
    enum CodingKeys: String, CodingKey {
        case weathers = "list"
    }
}
