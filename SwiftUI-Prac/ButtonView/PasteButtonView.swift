//
//  PasteButtonView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/23.
//

import SwiftUI

struct PasteButtonView: View {
    @State var text = ""

    var body: some View {
        VStack {
            Text("PasteButton controls how you paste in macOS but is not available in iOS. For more information, check the \"see also\" section of this recipe.")
                .padding()
        }
        .navigationTitle("PastButtion")
        .navigationBarTitleDisplayMode(.inline)
        

    }
}

struct PasteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PasteButtonView()
    }
}
