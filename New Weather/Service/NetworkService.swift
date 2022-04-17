//
//  NetworkService.swift
//  New Weather
//
//  Created by Александр on 15.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import Foundation
import Alamofire

final class NetworkService {
    
    private var urlConstractor: URLComponents = {
        var constructor = URLComponents()
        constructor.scheme = "https"
        constructor.host = "api.openweathermap.org"
        constructor.path = "/data/2.5/forecast"
        return constructor
    }()
    
    func fetchCity(city: String, completion: @escaping ([Weather]) -> Void) {
        guard let host = urlConstractor.url else { return }
        let parameters: Parameters = [
            "appid": "f2bfc9ecbd40d4867ce6e7e6de10f5e0",
            "units": "metric",
            "q": city,
        ]
        
        
        Alamofire.request(host, method: .get, parameters: parameters).responseJSON { response in
            switch (response.result) {
            case .success:
                do {
                    guard let data = response.data as? Data else { return }
                    let weather = try JSONDecoder().decode(WeatherResponse.self, from: data).weathers
                    completion(weather)
                } catch let error as NSError {
                    print("Failed to load: \(error)")
                }
            case .failure(let error):
                print("Request error: \(error.localizedDescription)")
            }
        }
    }

}


// JSON anatomy
/*
 "cod": "200",
 "message": 0.0032,
 "cnt": 36,
 "list": [
     {
         "dt": 1487246400,
         "main": {
             "temp": 286.67,
             "temp_min": 281.556,
             "temp_max": 286.67,
             "pressure": 972.73,
             "sea_level": 1046.46,
             "grnd_level": 972.73,
             "humidity": 75,
             "temp_kf": 5.11
         },
         "weather": [
             {
                 "id": 800,
                 "main": "Clear",
                 "description": "clear sky",
                 "icon": "01d"
             }
         ],
         "clouds": {
             "all": 0
         },
         "wind": {
             "speed": 1.81,
             "deg": 247.501
         },
         "sys": {
             "pod": "d"
         },
         "dt_txt": "2017-02-16 12:00:00"
     },
 */
