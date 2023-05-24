//
//  StaticContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct WeatherInfo: Identifiable {
    var id = UUID()
    var image: String
    var temp: Int
    var city: String
    
    
    
}


struct StaticContentView: View {
    var body: some View {
        List {
            ForEach(WeatherInfo.samples()) { weather in
               WeatherRow(weather: weather)
            }
        }
        .font(.system(size: 14))
        .padding()
    }
}

struct StaticContentView_Previews: PreviewProvider {
    static var previews: some View {
        StaticContentView()
    }
}


extension WeatherInfo {
    static func samples() ->[WeatherInfo] {
        let weatherData: [WeatherInfo] = [
            WeatherInfo(image: "snow", temp: 5, city: "New York"),
            WeatherInfo(image: "cloud", temp: 5, city: "Kansas City"),
            WeatherInfo(image: "sun.max", temp: 80, city: "San Francisco"),
            WeatherInfo(image: "snow", temp: 5, city: "Chicago"),
            WeatherInfo(image: "cloud.rain", temp: 49, city: "Washington D.C."),
            WeatherInfo(image: "cloud.heavyrain", temp: 60, city: "Seattle"),
            WeatherInfo(image: "sun.min", temp: 75, city:"Baltimore"),
            WeatherInfo(image: "sun.dust", temp: 65, city:"Austin"),
            WeatherInfo(image: "snow", temp: 5, city: "New York"),
            WeatherInfo(image: "cloud", temp: 5, city: "Kansas City"),
            WeatherInfo(image: "sun.max", temp: 80, city: "San Francisco"),
            WeatherInfo(image: "snow", temp: 5, city: "Chicago"),
            WeatherInfo(image: "cloud.rain", temp: 49, city: "Washington D.C."),
            WeatherInfo(image: "cloud.heavyrain", temp: 60, city: "Seattle"),
            WeatherInfo(image: "sun.min", temp: 75, city:"Baltimore"),
            WeatherInfo(image: "sun.dust", temp: 65, city:"Austin"),
            WeatherInfo(image: "snow", temp: 5, city: "New York"),
            WeatherInfo(image: "cloud", temp: 5, city: "Kansas City"),
            WeatherInfo(image: "sun.max", temp: 80, city: "San Francisco"),
            WeatherInfo(image: "snow", temp: 5, city: "Chicago"),
            WeatherInfo(image: "cloud.rain", temp: 49, city: "Washington D.C."),
            WeatherInfo(image: "cloud.heavyrain", temp: 60, city: "Seattle"),
            WeatherInfo(image: "sun.min", temp: 75, city:"Baltimore"),
            WeatherInfo(image: "sun.dust", temp: 65, city:"Austin"),
        ]
        
        return weatherData
    }
}
