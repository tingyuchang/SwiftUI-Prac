//
//  SignUpView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var street = ""
    @State private var city = ""
    @State private var zip = ""
    @State private var lessThanTwo = false 
    @State private var username = ""
    @State private var password = ""
    
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    TextField("First Name", text: self.$firstName)
                    TextField("Last Name", text: self.$lastName)
                }, header: {
                   Text("Names")
                })
                
                Section(content: {
                    TextField("Street", text: self.$street)
                    TextField("City", text: self.$city)
                    TextField("Zip", text: self.$zip)
                    Toggle(isOn: self.$lessThanTwo) {
                        Text("Have you lived here for 2+ years?")
                    }
                    .alert("Please fulfill your prevuios address", isPresented: self.$showAlert) {}
                }, header: {
                   Text("Current Adddress")
                })
                
                if self.lessThanTwo {
                    Section(content: {
                        TextField("Street", text: self.$street)
                        TextField("City", text: self.$city)
                        TextField("Zip", text: self.$zip)
                    }, header: {
                        Text("Previous Adddress")
                    })
                }
                
                
                Section("Create Account Info") {
                    TextField("Create Username", text: self.$username)
                    SecureField("Pasword", text: self.$password)
                }
                
                Button("Submit") {
                    self.showAlert = true
                }
                .alert("Your info", isPresented: self.$showAlert) {}
            }
            .navigationTitle("Sign Up")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
