//
//  WebScrollContenView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct WebScrollContenView: View {
    let letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p"]
    var body: some View {
        VStack {
            ScrollView {
                ForEach(self.letters, id: \.self) { letter in
                    Image(systemName: letter)
                        .font(.largeTitle)
                        .foregroundColor(.yellow)
                        .frame(width:50, height:50)
                        .background(Color.blue)
                        .symbolVariant(.circle.fill)
                }
            }
            .frame(width:50, height: 200)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(self.letters, id: \.self) { name in
                        Image(systemName: name)
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                            .frame(width:50, height: 50)
                            .background(Color.blue)
                            .symbolVariant(.circle.fill)
                    }
                }
            }
        }
    }
}

struct WebScrollContenView_Previews: PreviewProvider {
    static var previews: some View {
        WebScrollContenView()
    }
}
