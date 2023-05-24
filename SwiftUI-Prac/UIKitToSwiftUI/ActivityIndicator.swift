//
//  ActivityIndicator.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/24.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    var animating: Bool
    
    // UIViewRepresentable must implement these 2 functions
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        return UIActivityIndicatorView()
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if self.animating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
