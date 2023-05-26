//
//  PresentingAlertView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

struct PresentingAlertView: View {
    @State private var showAlert = false
    @State private var showText = false
    @State private var displayedText = "Tap to change it."
    
    var body: some View {
        
        if #available(iOS 15, *) {
            VStack {
                Button("Show Alert") {
                    self.showAlert = true
                }
                .alert("Confirm Actions", isPresented: self.$showAlert, actions: {
                    Button("OK", role: .cancel) {}
                }, message: {
                    Text("Are you sure you want to submit it?")
                })
                .padding(.vertical, 20)
                
                
                Button(self.displayedText) {
                    self.showText = true
                }
                .alert("Confirm Actions", isPresented: self.$showText, actions: {
                    Button("Yes"){
                        self.displayedText = (self.displayedText == "Stay Foolish") ? "Stay Hungry" : "Stay Foolish"
                    }
                    Button("Do nothing"){}
                }, message: {
                    Text("Do you want to toggle the text?")
                })
            }
            
        } else {
            Button(action: {
                self.showAlert = true
            }, label: {
                Text("Show alert")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
            })
            .alert(isPresented: self.$showAlert) {
                Alert(title: Text("Confirm Actions"),
                      message:  Text("Are you sure you want to submit it?"),
                      dismissButton: .default(Text("OK"))
                )
            }
         }
        

    }
}

struct PresentingAlertView_Previews: PreviewProvider {
    static var previews: some View {
        PresentingAlertView()
    }
}
