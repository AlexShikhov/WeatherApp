//
//  WeatherResponse.swift
//  New Weather
//
//  Created by Александр on 14.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

struct WeatherResponse: Decodable {
    
    init(from decoder: Decoder) throws {
        list = []
    }
    
    var list: [Weather] = []
    
}


