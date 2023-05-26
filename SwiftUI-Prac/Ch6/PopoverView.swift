//
//  PopoverView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

struct PopoverView: View {
    @State private var showPopover = false
    var body: some View {
        Button("Show popover") {
            self.showPopover = true
        }
        .popover(isPresented: self.$showPopover, content: {
            Text("Here is a popover information")
                .font(.system(size: 40))
        })
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
