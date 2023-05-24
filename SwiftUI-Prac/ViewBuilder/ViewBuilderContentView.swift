//
//  ViewBuilderContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct ViewBuilderContentView: View {
    var body: some View {
        VStack {
            BlueCircle() {
                Text("some text here")
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 40, height: 40)
            }
            BlueCircle() {
                Text("another text here")
            }
        }
    }
}

struct ViewBuilderContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewBuilderContentView()
    }
}
