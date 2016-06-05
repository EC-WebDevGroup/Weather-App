//
//  WeatherService.swift
//  Weather App
//
//  Created by kazim reza on 2/4/16.
//  Copyright © 2016 KazimReza. All rights reserved.
//

import Foundation

protocol WeatherServiceDelegate {
    func setWeather(weather: Weather)
    
    
}

class WeatherService {
    
    var delegate: WeatherServiceDelegate?
    
    
    func getWeather(city: String) {
        print("Weather Service city: \(city)")
        //request weather
        //wait...
        // process
        
        let weather = Weather(cityName: city, temp: 237.12, description: "A Nice Day")
        
        if delegate != nil {
            delegate?.setWeather(weather)
        }
        
    }
    
}