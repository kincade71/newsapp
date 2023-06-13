//
//  NewsListView.swift
//  NewsApp
//
//  Created by Richard Robinson on 6/13/23.
//

import SwiftUI

struct NewsListView: View {
    let newsCollection: [NewsViewModel]
    let imageData: [String : Data]
    
    var body: some View {
        List(self.newsCollection, id: \.url){ news in
            NewsCell(news: news, image: Image(uiImage: self.imageData[news.urlToImage] == nil ?
                                              UIImage(systemName: "doc.append")! : UIImage(data: self.imageData[news.urlToImage]!)!))
        }.listStyle(.plain)
    }
}


