//
//  DialogView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI

struct DialogView: View {
    @State private var showDialog = false
    var title = "Confirmation Dialog"
    
    var body: some View {
        Button("Show Dialog") {
            self.showDialog = true
        }
        .confirmationDialog(self.title, isPresented: self.$showDialog, actions: {
            Button("Dismiss", role: .destructive) {}
            Button("Save") {}
            Button("Cancel", role: .cancel) {}
            Button("Print some thing") {
                print("print something")
            }
        }, message: {
            Text("""
                Use dialogs to give users alternative for completing a task
            """
            )
        })
    }
}

struct DialogView_Previews: PreviewProvider {
    static var previews: some View {
        DialogView()
    }
}
