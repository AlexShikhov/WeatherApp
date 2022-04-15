//
//  Weather.swift
//  New Weather
//
//  Created by Александр on 14.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import Foundation

//struct Weather {
//    let date: Date
//    let temp: String
//    let icon: String
//}
//
//extension Weather: Decodable {
//    enum CodingKeys: String, CodingKey {
//        case date = "dt"
//        case temp
//        case icon
//        case main
//        case weather
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        let doubleDate = try container.decode(
//            Double.self,
//            forKey: .date)
//        self.date = Date(timeIntervalSince1970: doubleDate)
//        let mainContainer = try container.nestedContainer(
//            keyedBy: CodingKeys.self,
//            forKey: .main)
//        let doubleTemp = try mainContainer.decode(
//            Double.self,
//            forKey: .temp)
//        self.temp = "\(doubleTemp)"
//        var weatherContainer = try container.nestedUnkeyedContainer(forKey: .weather)
//        let weatherObject = try weatherContainer.nestedContainer(keyedBy: CodingKeys.self)
//        let iconID = try weatherObject.decode(
//            String.self,
//            forKey: .icon)
//        self.icon = "http://openweathermap.org/img/wn/\(iconID)@2x.png"
//    }
//}
//
//struct Weather0 {
//    let date: Double
//    let main: WeatherMain
//    let icon: [WeatherIcon]
//}
//
//extension Weather0: Codable {
//    enum CodingKeys: String, CodingKey {
//        case date = "dt"
//        case main
//        case icon = "weather"
//    }
//}
//
//struct WeatherMain {
//    let temp: Double
//    let tempMin: Double
//}
//
//extension WeatherMain: Codable {
//    enum CodingKeys: String, CodingKey {
//        case temp
//        case tempMin = "temp_min"
//    }
//}
//
//struct WeatherIcon {
//    let iconID: String
//}
//
//extension WeatherIcon: Codable {
//    enum CodingKeys: String, CodingKey {
//        case iconID = "icon"
//    }
//}



class Weather {
    var date = 0.0
    var temp = 0.0
    var pressure = 0.0
    var humidity = 0
    var weatherName = ""
    var weatherIcon = ""
    var windSpeed = 0.0
    var windDegrees = 0.0
    var city = ""


    enum CodingKeys: String, CodingKey {
        case date = "dt"
        case main
        case weather
        case wind
    }

    enum MainKeys: String, CodingKey {
        case temp
        case pressure
        case humidity
    }

    enum WeatherKeys: String, CodingKey {
        case main
        case icon
    }

    enum WindKeys: String, CodingKey {
        case speed
        case deg
    }

    convenience required init(from decoder: Decoder) throws {
        self.init()
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try values.decode(Double.self, forKey: .date)
        
        let mainValues = try values.nestedContainer(keyedBy: MainKeys.self, forKey: .main)
        
        self.temp = try mainValues.decode(Double.self, forKey: .temp)
        self.pressure = try mainValues.decode(Double.self, forKey: .pressure)
        self.humidity = try mainValues.decode(Int.self, forKey: .humidity)
        
        var weatherValues = try values.nestedUnkeyedContainer(forKey: .weather)
        let firstWeatherValues = try weatherValues.nestedContainer(keyedBy: WeatherKeys.self)
        
        self.weatherName = try firstWeatherValues.decode(String.self, forKey: .main)
        self.weatherIcon = try firstWeatherValues.decode(String.self, forKey: .icon)
        let windValues = try values.nestedContainer(keyedBy: WindKeys.self, forKey: .wind)
        
        self.windSpeed = try windValues.decode(Double.self, forKey: .speed)
        self.windDegrees = try windValues.decode(Double.self, forKey: .deg)
    }

}



