//
//  UIKitToSwiftUIView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct UIKitToSwiftUIView: View {
    @State var animate = true
    var body: some View {
        VStack {
            ActivityIndicator(animating: self.animate)
            HStack {
                Toggle(isOn: self.$animate) {
                    Text("Toggle animation activity")
                }
            }.padding()
        }
        
    }
}

struct UIKitToSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        UIKitToSwiftUIView()
    }
}
