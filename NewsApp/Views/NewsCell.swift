//
//  NewsCell.swift
//  NewsApp
//
//  Created by Richard Robinson on 6/13/23.
//

import SwiftUI

struct NewsCell: View {
    
    let news: NewsViewModel
    let image: Image
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        VStack{
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width - 30, height: 200, alignment: .center)
                .clipped()
                .cornerRadius(20)
                .shadow(color: .black ,radius: 5)
            
            Text(news.author).font(.subheadline)
            
            Text(news.title).font(.subheadline)
            
            Text(news.description).font(.caption)
        }
    }
}
