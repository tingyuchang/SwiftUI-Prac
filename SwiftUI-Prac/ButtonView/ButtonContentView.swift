//
//  ButtonContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/23.
//

import SwiftUI

struct ButtonContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ButtonView()) {
                    Text("Buttons")
                }
                NavigationLink(destination: EditButtonView()) {
                    Text("EditButtons")
                        .padding()
                }
                NavigationLink(destination: PasteButtonView()) {
                    Text("PasteButtons")
                        .padding()
                }
                NavigationLink(destination: MenuButtonView()) {
                    Text("MenuButtons")
                        .padding()
                }
                NavigationLink(destination: Text("Very long text that should not be display in a single line because it's not a good design.")
                    .padding()
                    .navigationTitle(Text("Detail"))
                ) {
                    Text("Detail about text")
                        .padding()
                }
            }
            .navigationTitle(Text("Main View"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ButtonContentView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContentView()
    }
}
