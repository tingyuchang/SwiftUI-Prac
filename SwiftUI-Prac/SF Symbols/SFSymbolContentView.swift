//
//  SFSymbolContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct SFSymbolContentView: View {
    @State var wifi_on = false
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "c")
                Image(systemName: "o")
                Image(systemName: "o")
                Image(systemName: "k")
            }
            .symbolVariant(.fill.circle)
            .foregroundStyle(.yellow, .blue)
            .font(.title)
            
            HStack {
                Image(systemName: "b.circle.fill")
                Image(systemName: "o.circle.fill")
                    .foregroundColor(.red)
                Image(systemName: "o.circle.fill")
                    .imageScale(.large)
                Image(systemName: "k.circle.fill")
                    .accessibilityIdentifier("Letter K")
            }
            .foregroundColor(.blue)
            .font(.title)
            .padding()
            
            HStack {
                Image(systemName: "allergens")
                    .foregroundStyle(.orange)
                Image(systemName: "ladybug")
                    .foregroundStyle(.orange, .black)
            }
            .symbolVariant(.fill)
            .symbolRenderingMode(.multicolor)
            .font(.largeTitle)
            
            Toggle(isOn: self.$wifi_on) {
                Label("WiFi", systemImage: "wifi")
            }
            .foregroundStyle(self.wifi_on ? .blue : .secondary)
            .padding()
            
        }
    }
}

struct SFSymbolContentView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolContentView()
    }
}
