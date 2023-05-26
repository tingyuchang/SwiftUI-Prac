//
//  ContextmenuView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

struct ContextmenuView: View {
    @State private var bulbColor = Color.red
    var body: some View {
        Image(systemName: "lightbulb.fill")
            .font(.system(size: 60))
            .foregroundColor(self.bulbColor)
            .contextMenu() {
                Button("Yellow") {
                    self.bulbColor = .yellow
                }
                Button("Blue") {
                    self.bulbColor = .blue
                }
                Button("Red") {
                    self.bulbColor = .red
                }
            }
    }
}

struct ContextmenuView_Previews: PreviewProvider {
    static var previews: some View {
        ContextmenuView()
    }
}
