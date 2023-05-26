//
//  Insect.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import Foundation


struct Insect: Decodable, Identifiable {
    var id: Int
    var imageName: String
    var name: String
    var habitat: String
    var description: String
}


