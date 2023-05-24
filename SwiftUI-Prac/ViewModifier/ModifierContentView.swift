//
//  ModifierContentView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct ModifierContentView: View {
    var body: some View {
        Text("Perfect")
            .backgroundStyle(color: .red)
    }
}

struct ModifierContentView_Previews: PreviewProvider {
    static var previews: some View {
        ModifierContentView()
    }
}


struct BackgroundStyle: ViewModifier {
    var bgColor: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: UIScreen.main.bounds.width * 0.3)
            .foregroundColor(.black)
            .padding()
            .background(self.bgColor)
            .cornerRadius(CGFloat(2.0))
    }
}

extension View {
    func backgroundStyle(color: Color) -> some View {
        return self.modifier(BackgroundStyle(bgColor: color))
    }
}
