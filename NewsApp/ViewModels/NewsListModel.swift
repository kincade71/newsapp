//
//  NewsListModel.swift
//  NewsApp
//
//  Created by Richard Robinson on 6/13/23.
//

import Foundation



struct NewsViewModel {
    let news: News
    
    var author: String {
        return news.author ?? "Unknown"
    }
    
    var description: String {
        return news.description ?? ""
    }
    
    var title: String {
        return news.title ?? ""
    }
    
    var url: String {
        return news.url ?? ""
    }
    
    var urlToImage: String {
        return news.urlToImage ?? "https://upload.wikimedia.org/wikipedia/en/f/ff/Web_of_Venom.png"
    }
    
}
