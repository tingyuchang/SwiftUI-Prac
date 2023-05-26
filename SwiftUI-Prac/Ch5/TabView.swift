//
//  TabView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI


struct Currency: Identifiable {
    let id = UUID()
    let name: String
    let image: String
}

struct CurrenciesView: View {
    var currencies = [
        Currency(name: "Dollar", image: "dollarsign.circle.fill"),
        Currency(name: "Sterling", image:"sterlingsign.circle.fill"),
        Currency(name: "Euro", image: "eurosign.circle.fill"),
        Currency(name: "Yen", image: "yensign.circle.fill"),
        Currency(name: "Naira", image: "nairasign.circle.fill")
    ]
    var body: some View {
        NavigationView {
            VStack {
                ForEach(self.currencies) { currency in
                    HStack {
                        Group {
                            Text(currency.name)
                            Spacer()
                            Image(systemName: currency.image)
                        }
                        .font(Font.system(size: 30, design: .default))
                        .padding()
                    }
                }
            }
            .navigationTitle("Currencies")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeView: View {
    
    let games = ["Doom", "Final F","Cyberpunk", "avengers", "animal trivia", "sudoku", "snakes and   ladders", "Power rangers", "ultimate frisbee", "football", "soccer", "much more"]
    var body: some View {
        NavigationView {
            List {
                ForEach(self.games, id: \.self) { game in
                    Text(game)
                        .padding()
                }
            }
            .navigationTitle("Best Game for 2021")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



struct TabView: View {
    var body: some View {
        Text("Hi")
        
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
