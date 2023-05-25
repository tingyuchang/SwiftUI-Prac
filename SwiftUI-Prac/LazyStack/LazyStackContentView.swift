//
//  LazyStackContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct LazyStackContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach (1...1000, id: \.self) { item in
                        ListRow(id: item, type: "Horizontal")
                    }
                 }
            }
            .frame(height: 100, alignment: .center)
            
            ScrollView {
                LazyVStack {
                    ForEach (1...1000, id: \.self) { item in
                        ListRow(id: item, type: "Vertivcal")
                    }
                }
            }
        }
    }
}

struct LazyStackContentView_Previews: PreviewProvider {
    static var previews: some View {
        LazyStackContentView()
    }
}
