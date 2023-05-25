//
//  BackPack.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import Foundation

struct Backpack: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var content: [Backpack]?
    
}
