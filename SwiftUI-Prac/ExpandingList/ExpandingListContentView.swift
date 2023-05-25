//
//  ExpandingListContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

let dollar = Backpack(name: "Dollar", icon: "dollarsign.circle")
let yen = Backpack(name: "Yen", icon: "yensign.circle")
let currencies = Backpack(name: "Currencies", icon: "coloncurrencysign.circle", content: [dollar, yen])


let pencil = Backpack(name: "Pencil", icon: "pencil.circle")
let hammer = Backpack(name: "Hammer", icon: "hammer")
let paperClip = Backpack(name: "PaperClip", icon: "paperclip")
let glass = Backpack(name: "Magnifying", icon: "magnifyingglass")

let bin = Backpack(name: "Bin", icon: "arrow.up.bin", content: [paperClip, glass])
let tools = Backpack(name: "Tools", icon: "folder", content: [pencil, hammer, bin])

struct ExpandingListContentView: View {
    let bgContents = [currencies, tools]
    
    var body: some View {
        List(bgContents, children:\.content) { row in
            Image(systemName: row.icon)
            Text(row.name)
        }
    }
}

struct ExpandingListContentView_Previews: PreviewProvider {
    static var previews: some View {
        ExpandingListContentView()
    }
}
