//
//  ButtonView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/23.
//

import SwiftUI

struct EditButtonView: View {
    @State private var animals = ["dogs", "cats", "goats"]
    var body: some View {
        NavigationView {
            List{
                ForEach(animals, id: \.self) { animal in
                    Text(animal)
                }
                .onDelete() { indexSet in
//                    self.animals.remove(atOffsets: indexSet)
                    indexSet.forEach() { index in
                        self.animals.remove(at: index)
                    }
                }
            }
//            .navigationBarItems(trailing: EditButton())
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
            }
            .navigationTitle(Text("EditButtonView"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct EditButtonView_Previews: PreviewProvider {
    static var previews: some View {
        EditButtonView()
    }
}
