//
//  WeatherModel.swift
//  APIProjectWeather
//
//  Created by Deepesh Haryani on 3/19/23.
//

import Foundation

struct cityWeather: Codable{
    var list: [listData]
}

struct listData: Codable{
    var main : mainData
}

struct mainData: Codable{
    var temp: Double
    var feels_like: Double
    var temp_min: Double
    var temp_max: Double
}

struct weatherArray: Codable{
    var weather: [weatherData]
}

struct weatherData: Codable{
    var main: String
    var description: String
}

