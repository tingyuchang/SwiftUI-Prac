//
//  PickerContenView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct PickerContenView: View {
    @State var choice = 0
    @State var showText = false
    @State var transitModes = ["Bike", "Car", "Bus"]
    @State var slideVal = 0.0
    @State var stepVal = 0
    @State var gameTime = Date()

    var body: some View {
        Form {
            Section {
                Picker("Transit Mode", selection: self.$choice) {
                    ForEach(0..<self.transitModes.count, id: \.self) { index in
                        Text("\(self.transitModes[index])")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                Text("Current choice \(self.transitModes[self.choice])")
                
            }
            Section {
                Toggle("Show Text", isOn: self.$showText)
                if self.showText {
                    withAnimation(.easeIn) {
                        Text("This is hidden message")
                    }
                   
                }
                
            }
            Section {
                Slider(value: self.$slideVal, in: 0...10)
                Text("Curent Val: \(String(format: "%.2f", self.slideVal))")
            }
            
            Section {
                Stepper("Stepper", value: self.$stepVal, in: 0...5)
                Text("Stepper Val: \(self.stepVal)")
            }
            
            Section {
                DatePicker("Please select a date!", selection: self.$gameTime, in: Date()...)
            }
        }
    }
}

struct PickerContenView_Previews: PreviewProvider {
    static var previews: some View {
        PickerContenView()
    }
}
