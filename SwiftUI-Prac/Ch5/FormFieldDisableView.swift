//
//  FormFieldDisableView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct FormFieldDisableView: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Text("Dungeons and Wagons")
                .fontWeight(.heavy)
                .foregroundColor(.blue)
                .font(.largeTitle)
                .padding()
            
            Image(systemName: "person.circle")
                .font(.system(size: 150))
                .foregroundColor(.secondary)
                .padding()
            
            Group {
                TextField("Username", text: self.$username)
                SecureField("Passowrd", text: self.$password)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
            
            Button(action: {
                print("Login Clicked")
            }, label: {
                Text("Login")
                    .padding()
                    .background((self.username.isEmpty || self.password.isEmpty) ? .gray: .blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    
            })
            .disabled(self.username.isEmpty || self.password.isEmpty)
        }.padding(.horizontal, 20)
    }
}

struct FormFieldDisableView_Previews: PreviewProvider {
    static var previews: some View {
        FormFieldDisableView()
    }
}
