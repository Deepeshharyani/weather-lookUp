//
//  weatherNetworkLayer.swift
//  APIProjectWeather
//
//  Created by Deepesh Haryani on 3/19/23.
//

import Foundation
import UIKit

func getWeatherData(cityName: String?, completionhandler: @escaping ((cityWeather?) -> ())){
    guard let url = URL(string: URLConstants.getWeatherDataUrl + cityName! + URLConstants.appID) else {
        print("Invalid URL")
        return
    }
    
    var request = URLRequest(url: url)
    request.httpMethod = "GET"
    
    URLSession.shared.dataTask(with: request) {(data,response, error) in
        if let error = error {
            completionhandler(nil)
        }
        
        if let data = data {
            let decoder = JSONDecoder()
            do{
                let weatherData = try decoder.decode(cityWeather.self, from: data)
                completionhandler(weatherData)
            }catch{
                completionhandler(nil)
            }
        }
        
    }.resume()
    
}
