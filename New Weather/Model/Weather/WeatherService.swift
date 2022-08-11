//
//  WeatherService.swift
//  New Weather
//
//  Created by Александр on 14.04.2022.
//  Copyright © 2022 Александр. All rights reserved.
//

import Alamofire
import UIKit


class WeatherService {
    
    let baseURL = "http://api.openweathermap.org"
    
    let apiKey = "92cabe9523da26194b02974bfcd50b7e"
    
    func loadWeatherData(city: String) {
        
        let path = "/data/2.5/forecast"
        
        let parametres: Parameters = [
            "q": city,
            "units": "metric",
            "appid": apiKey
        ]
        
        let url = baseURL + path
        
        Alamofire.request(url, method: .get, parameters: parametres).responseData { response in
            
            guard let data = response.value else { return }
//            let json = JSON(data: data)
            
            let weather = try! JSONDecoder().decode(WeatherResponse.self, from: data).list
            
            print(weather)
        }
    }
    
    
}
