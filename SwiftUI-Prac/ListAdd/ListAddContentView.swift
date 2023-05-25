//
//  ListAddContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct ListAddContentView: View {
    @State var numbers = [1,2,3,4]
    var test = ""
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("City name")) {
                    Text("Chicago")
                    Text("New York")
                    Text("Tokyo")
                    Text("Taipei")
                    Text("HongKong")
                }
                Section(header: Text("Numbers")) {
                    ForEach(self.numbers, id: \.self) { number in
                        Text("\(number)")
                    }
                    .onDelete() { indexSet in
                        self.removeItemOnRow(at: indexSet)
                    }
                    .onMove() { indexSet, destination in
                        self.MoveRow(source: indexSet, destination: destination)
                        print(self.numbers)
                    }
                }
            }
            .navigationTitle("My List")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Add") {
                        self.addItemToRow()
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
        }
    }
    
    
    
    private func addItemToRow() {
        self.numbers.append(Int.random(in: 5..<100))
    }
    
    private func removeItemOnRow(at: IndexSet) {
        self.numbers.remove(atOffsets: at)
    }
    
    private func MoveRow(source: IndexSet, destination: Int) {
        self.numbers.move(fromOffsets: source, toOffset: destination)
    }
    
}

struct ListAddContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListAddContentView()
    }
}
