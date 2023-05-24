//
//  ToDoList.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct TodoItem: Identifiable, Hashable{
    let id = UUID()
    var title: String
    init(title: String) {
        self.title = title
    }
}


extension TodoItem {
    static func samples() -> [TodoItem] {
        let items = [
            TodoItem(title: "Buy egg"),
            TodoItem(title: "Pay bills"),
            TodoItem(title: "workout"),
            TodoItem(title: "studing"),
            TodoItem(title: "cooking"),
            TodoItem(title: "reading"),
        ]
        
        return items
    }
}

struct ToDoList: View {
    @State var todos = TodoItem.samples()
    @State var searchText = ""
    var body: some View {
        NavigationView {
//            List(self.$todos) { $todo in
//                TextField("Number", text: $todo.title)
//            }
            List {
                ForEach(self.searchResults, id:\.self) { todo in
                    /*@START_MENU_TOKEN@*/Text(todo.title)/*@END_MENU_TOKEN@*/
                }
            }
            .searchable(text: self.$searchText)
            .navigationTitle("todo list")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    var searchResults: [TodoItem] {
        if searchText.isEmpty {
            return self.todos
        } else {
            return self.todos.filter() {
                $0.title.lowercased().contains(self.searchText.lowercased())
            }
        }
    }
}

struct ToDoList_Previews: PreviewProvider {
    static var previews: some View {
        ToDoList()
    }
}
