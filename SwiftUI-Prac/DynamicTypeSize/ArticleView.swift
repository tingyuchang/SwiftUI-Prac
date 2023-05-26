//
//  ArticleView.swift
//  SwiftUI-Prac
//
//  Created by matt on 2023/5/25.
//

import SwiftUI



let sampleArticle1 = Article(imageName: "reading", title: "Love reading", description: "Reading is essential to suucess.")
let sampleArticle2 = Article(imageName: "naptime", title: "Nap Time", description: "Take naps when tired to improve performance.")

struct ArticleView: View {
    var article: Article
    var body: some View {
        HStack {
            Image(article.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
                .clipShape(Ellipse())
            VStack {
                Text(self.article.title)
                    .font(.title)
                Text(self.article.description)
                    .padding()
            }
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ArticleView(article: sampleArticle1).environment(\.dynamicTypeSize, .xSmall)
            ArticleView(article: sampleArticle2).environment(\.dynamicTypeSize, .accessibility5)
        }.previewLayout(.sizeThatFits)
    }
}
