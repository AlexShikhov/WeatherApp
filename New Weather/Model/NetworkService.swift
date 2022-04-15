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
    
    func fetchCity(city: String) {
        guard let host = urlConstractor.url else { return }
        let parameters: Parameters = [
            "appid": "f2bfc9ecbd40d4867ce6e7e6de10f5e0",
            "units": "metric",
            "q": city,
        ]
        
        Alamofire.request(host, method: .get, parameters: parameters).responseJSON { json in
            print(json)
        }
    }

}

