//
//  MenuButtonView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/23.
//

import SwiftUI

struct MenuButtonView: View {
    var body: some View {
        NavigationView {
            Text("MenuButtons are curently available on MacOS currently.")
                .padding()
                .navigationTitle("MenuButton")
                .navigationBarTitleDisplayMode(.inline)
                .background(Color.yellow)
        }
        
            
    }
    
    /*
     Button("USA") {
        print("Select USA")
     }
     Button("India") {
        print("Select India")
     }
     */
}

struct MenuButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MenuButtonView()
    }
}
