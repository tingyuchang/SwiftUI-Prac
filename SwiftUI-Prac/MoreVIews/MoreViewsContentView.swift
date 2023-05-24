//
//  MoreViewsContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct MoreViewsContentView: View {
    @State private var progress = 0.5
    @State private var color = Color.red
    @State private var secondColor = Color.yellow
    @State private var someText = "Initial Value"
    var body: some View {
        List {
            Section(header: Text("ProgesViews")){
                ProgressView("Indterminate progress view")
                ProgressView("Downloading", value: self.progress, total: 2)
                Button("Increase") {
                    if self.progress < 2 {
                        self.progress = min(self.progress+0.5, 2)
                    }
                }
                Button("decrease") {
                    if self.progress > 0 {
                        self.progress = max(self.progress-0.5, 0)
                    }
                }
                Slider(value: self.$progress, in: 0...2)
            }
            Section(header: Text("Labels")) {
                Label("Slow", systemImage: "tortoise.fill")
                Label {
                    Text("Fast")
                        .font(.largeTitle)
                } icon: {
                    Circle()
                        .fill(.orange)
                        .frame(width:40, height:20, alignment: .center)
                        .overlay(Text("F").foregroundColor(.white))
                }
            }
            
            Section(header: Text("TextEditor")) {
                TextEditor(text: self.$someText)
                Text("Current editor text:\n\(self.someText)")
            }
            
            Section(header: Text("Color Picker")) {
                ColorPicker(selection: self.$color) {
                    Text("Pick my background")
                        .background(self.color)
                        .padding()
                }
                ColorPicker(selection: self.$secondColor) {
                    Text("Pick my foreground")
                        .foregroundColor(self.secondColor)
                        .padding()
                }
            }
            
            Section(header: Text("Link")) {
                Link("Google", destination: URL(string: "https://www.google.com")!)
            }
            
            Section(header: Text("Menu")) {
                Menu("Action") {
                    Button("Set texteditor to \"Magic\"") {
                        self.someText = "Magic"
                    }
                    Button("Turn first picker to Green") {
                        self.color = Color.green
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct MoreViewsContentView_Previews: PreviewProvider {
    static var previews: some View {
        MoreViewsContentView()
    }
}
