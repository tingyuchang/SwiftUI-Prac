//
//  NavigationViewContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct NavigationViewContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: NavigationSecondView(someText: "Sample Text")) {
                    Text("Go to Second View")
                        .foregroundColor(.white)
                        .padding()
                        .background(.black)
                        .cornerRadius(25)
                }
            }
            .navigationTitle("Previews")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct NavigationViewContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewContentView()
    }
}
