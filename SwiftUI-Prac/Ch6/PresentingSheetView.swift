//
//  PresentingSheetView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/26.
//

import SwiftUI


struct SheetView: View {
    
    var body: some View {
        Text("This a sheet we want to display a view.")
            .backgroundStyle(color: .yellow)
    }
}

struct SheetWithNavView: View {
    @Binding var sheetWithNav: Bool
    var body: some View {
        NavigationView {
            Text("This is a sheet with navgationbar")
                .navigationTitle(Text("Sheet title"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItem() {
                        Button(action: {
                            self.sheetWithNav = false
                        }, label: {
                            Text("Done")
                        })
                    }
                })
        }
        
    }
}


struct PresentingSheetView: View {
    @State private var showSheet = false
    @State private var sheetWithNav = false
    var body: some View {
        VStack {
            Button("Show Sheet") {
                self.showSheet = true
            }
            .sheet(isPresented: self.$showSheet, content: {
                SheetView()
            })
            .padding()
            
            Button("Show Sheet with NavigationBar") {
                self.sheetWithNav = true
            }
            .sheet(isPresented: self.$sheetWithNav, content: {
                SheetWithNavView(sheetWithNav: self.$sheetWithNav)
            })
        }
    }
}

struct PresentingSheetView_Previews: PreviewProvider {
    static var previews: some View {
        PresentingSheetView()
    }
}
