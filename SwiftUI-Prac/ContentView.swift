//
//  ContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/23.
//

import SwiftUI

struct ContentView: View {
    @State var password = "1234"
    @State var someText = "initial text"
    
    var body: some View {
        VStack {
            Group {
                Text("Hello world")
                    .fontWeight(.medium)
                SecureField("Enter a password", text: self.$password)
                    .padding()
                Text("Passowrd entered: \(self.password)")
                    .italic()
                
                TextField("enter some text", text: self.$someText)
                    .padding()
                Text("\(self.someText)")
                    .font(.largeTitle)
                    .underline()
                Text("Change text color and make it bold")
                    .foregroundColor(Color.blue)
                    .bold()
                Text("using kerning to change space between lines of text")
                    .kerning(5)
                    .padding()
                Text("Changing baseline offset")
                    .baselineOffset(-40)
                    .background(Color.red)
                Text("Strikethrough")
                    .strikethrough()
                Text("This isa multi line textof SwiftUI. The trailing modifier was added to the text. This text also implements multiple modifiers.")
                    .background(Color.yellow)
                    .multilineTextAlignment(.trailing)
                    .lineSpacing(10)
        
            }
            Text("Error?")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
