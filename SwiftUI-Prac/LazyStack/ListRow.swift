//
//  ListRow.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct ListRow: View {
    let id: Int
    let type: String
    
    init(id: Int, type: String) {
        print("loading \(type) item: \(id)")
        self.id = id
        self.type = type
    }
    
    var body: some View {
        Text("\(self.type) \(self.id)")
            .padding()
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(id: 1, type: "Int")
    }
}
