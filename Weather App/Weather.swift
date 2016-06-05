//
//  Weather.swift
//  Weather App
//
//  Created by kazim reza on 2/5/16.
//  Copyright © 2016 KazimReza. All rights reserved.
//

import Foundation

struct Weather {
    let cityName: String
    let temp: Double
    let description: String
    
    init (cityName: String, temp: Double, description: String) {
        self.cityName = cityName
        self.temp = temp
        self.description = description
        
    }
}
