//
//  weatherItems.swift
//  HMWK 8
//
//  Created by Marcia Elyseu on 4/23/15.
//  Copyright (c) 2015 Marcia Elyseu. All rights reserved.
//

import Foundation

class WeatherItem {
    let date: String?
    let temp: Double?
    let desc: String?
    let iconId: String?
    
    var iconURL : String {
        get {
            return "http://api.openweathermap.org/data/2.5/weather?q=New%20York,US"
        }
    }
    
    var formattedTemp : String {
        let formatter = NSNumberFormatter()
        formatter.minimumFractionDigits = 1
        formatter.maximumFractionDigits = 1
        
        return "\(formatter.stringFromNumber(temp as! NSNumber)!)℉"
        
    }
    
    init(date: String, temp: Double, desc: String, iconId: String) {
        self.date = date
        self.temp = temp
        self.desc = desc
        self.iconId = iconId
    }
}