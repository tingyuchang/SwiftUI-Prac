//
//  MockDataContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct MockDataContentView: View {
    var insects: [Insect]
    var body: some View {
        NavigationView {
            List {
                ForEach(self.insects) { insect in
                    HStack {
                        Image(insect.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Rectangle())
                            .frame(width: 100, height: 80)
                        VStack(alignment: .leading) {
                            Text(insect.name)
                                .font(.title)
                            Text(insect.habitat)
                        }.padding()

                    }
                }
            }
            .navigationTitle("Insects")
        }
    }
}

struct MockDataContentView_Previews: PreviewProvider {
    static var previews: some View {
        MockDataContentView(insects:Self.testInsects)
    }
    
    static var testInsects: [Insect] {
        guard let url = Bundle.main.url(forResource: "insectData", withExtension: "json"), let data = try? Data(contentsOf: url) else { return [] }
        let decoder = JSONDecoder()
        let array = try? decoder.decode([Insect].self, from: data)
     
        return array ?? [Insect(id: 1, imageName: "grasshopper", name: "grass", habitat: "rocks", description: "none")]
    }
    
}
