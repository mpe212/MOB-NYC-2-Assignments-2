//
//  Weather.swift
//  HMWK 8
//
//  Created by Marcia Elyseu on 4/22/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Weather {
    var location: String?
    var forecastItems: [WeatherItem]?
    
    init(location: String?, items: [WeatherItem]){
        self.location = location
        self.forecastItems = items
    }
    

class func retrieveWeather(params : [String: String], completionHandler : ((Weather) -> Void)) {
    Alamofire.request(.GET, "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US", parameters: params)
        .response { (request, response, data, error) -> Void in
            let json = JSON(data: data as! NSData)
            
            var weatherItems = [WeatherItem]()
            
            for (index: String, item: JSON) in json["list"] {
                var weatherItem = WeatherItem(date: item["dt_txt"].stringValue, temp: item["main"]["temp"].doubleValue, desc: item["weather"][0]["description"].stringValue, iconId: item["weather"][0]["icon"].stringValue)
                weatherItems.append(weatherItem)
            }
            
            let weather = Weather(location: json["city"]["name"].stringValue, items: weatherItems)
            completionHandler(weather)
        }
    }
}