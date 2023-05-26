//
//  DifferentDeviceContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct DifferentDeviceContentView: View {
    var body: some View {
        VStack {
            Image("friendship")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Importance of friendship")
                .font(.title)
            Text("Friends helps us deal with stesss and make better life choices")
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

struct DifferentDeviceContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DifferentDeviceContentView()
        }.previewDevice("iPhone 11 Pro Max")
            .previewDisplayName("iPhone 11 Pro Max")
    }
}
