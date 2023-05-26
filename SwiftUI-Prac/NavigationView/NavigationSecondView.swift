//
//  NavigationSecondView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct NavigationSecondView: View {
    var someText: String
    var body: some View {
        Text(self.someText)
            .navigationTitle("Second View")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct NavigationSecondView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationSecondView(someText: "Test")
        }
    }
}
