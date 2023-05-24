//
//  WeatherRow.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct WeatherRow: View {
    var weather: WeatherInfo
    var body: some View {
        HStack {
            Image(systemName: weather.image)
                .frame(width: 50, alignment: .leading)
            Text("\(weather.temp) F")
                .frame(width: 80, alignment: .leading)
            Text(weather.city)
        }
    }
}

struct WeatherRow_Previews: PreviewProvider {
    static var previews: some View {
        WeatherRow(weather: WeatherInfo(image: "sun.max", temp: 70, city: "Taipei"))
    }
}
