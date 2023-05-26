//
//  FocusAndSubmitView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct FocusAndSubmitView: View {
    
    enum AddressField {
        case streetName
        case city
        case state
        case zipCode
    }
    
    @State private var streetName = ""
    @State private var city = ""
    @State private var state = ""
    @State private var zipCode = ""
    
    @FocusState private var currentFoucs: AddressField?
    
    @State private var description = ""
    @FocusState private var isFocus: Bool
    
    var body: some View {
        VStack {
            TextField("Address", text: self.$streetName)
                .frame(height:45)
                .focused(self.$currentFoucs, equals: .streetName)
                .submitLabel(.next)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black, lineWidth: 1))
            TextField("City", text: self.$city)
                .frame(height:45)
                .focused(self.$currentFoucs, equals: .city)
                .submitLabel(.next)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black, lineWidth: 1))
            TextField("State", text: self.$state)
                .frame(height:45)
                .focused(self.$currentFoucs, equals: .state)
                .submitLabel(.next)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black, lineWidth: 1))
            TextField("ZipCode", text: self.$zipCode)
                .frame(height:45)
                .focused(self.$currentFoucs, equals: .zipCode)
                .submitLabel(.next)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.black, lineWidth: 1))
            TextField("Enter the description", text: self.$description)
                .focused(self.$isFocus)
        }
        .onSubmit {
            switch self.currentFoucs {
            case.streetName:
                self.currentFoucs = .city
            case.city:
                self.currentFoucs = .state
            case.state:
                self.currentFoucs = .zipCode
            default:
                print("thanks for provide your address.")
            }
        }
        .padding()
    }
}

struct FocusAndSubmitView_Previews: PreviewProvider {
    static var previews: some View {
        FocusAndSubmitView()
    }
}
