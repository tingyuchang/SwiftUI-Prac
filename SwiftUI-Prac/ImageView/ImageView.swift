//
//  ImageView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Image("dogs1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("dog-and-nature")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300, height:200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 6))
                .shadow(radius: 10)
            Image(uiImage: GetImageFromUIImage(image: "dog2"))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:200, height:200)
        }
    }
    
    
    func GetImageFromUIImage(image: String) -> UIImage {
        guard let img = UIImage(named: image) else { fatalError("unable to load image.")}
        return img
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
