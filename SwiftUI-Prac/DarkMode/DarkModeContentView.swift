//
//  DarkModeContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI

struct DarkModeContentView: View {
    @Environment(\.colorScheme) var deviceColorScheme
    
    var body: some View {
        NavigationView {
            Text(self.deviceColorScheme == .dark ? "Quick journey to the dar side" : "Back to the light.")
        }
    }
}

struct DarkModeContentView_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeContentView().preferredColorScheme(.dark)
        DarkModeContentView().preferredColorScheme(.light)
    }
}
