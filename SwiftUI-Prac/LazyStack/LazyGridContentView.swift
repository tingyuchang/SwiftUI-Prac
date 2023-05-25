//
//  LazyGridContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct LazyGridContentView: View {
    let columnSpec = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    let rowspec = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    let colors = [Color.red, Color.green, Color.yellow, Color.blue]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columnSpec, spacing: 20) {
                    ForEach (1...999, id:\.self) { index in
                        Text("Item \(index)")
                            .padding(EdgeInsets(top: 30, leading: 15, bottom: 30, trailing: 15))
                            .background(self.colors[index % self.colors.count])
                            .clipShape(Capsule())
                    }
                }
            }
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: self.rowspec, spacing: 20) {
                    ForEach((1...999), id: \.self) { index in
                        Text("Item \(index)")
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 30, leading: 15, bottom: 30, trailing: 15))
                            .background(self.colors[index % self.colors.count])
                            .clipShape(Capsule())
                    }
                }
            }
            
        }
    }
}

struct LazyGridContentView_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridContentView()
    }
}
