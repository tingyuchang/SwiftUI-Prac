//
//  DisclosureContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct DisclosureContentView: View {
    @State private var showPlanets = true
    var body: some View {
        VStack {
            DisclosureGroup("Planets", isExpanded: self.$showPlanets) {
                Text("Mercury")
                Text("Venus")
                DisclosureGroup("Earth") {
                    Text("North America")
                    Text("South America")
                    Text("Europe")
                    Text("Afica")
                    Text("Asia")
                    Text("Antarctica")
                    Text("Oceania")
                }
            }
            DisclosureGroup {
                Text("Surprise!")
            } label: {
                Label("Tap to reval", systemImage: "cube.box")
                    .font(.system(size: 25, design: .rounded))
            }
        }
    }
}

struct DisclosureContentView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureContentView()
    }
}
