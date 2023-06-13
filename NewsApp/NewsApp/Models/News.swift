//
//  News.swift
//  NewsApp
//
//  Created by Richard Robinson on 6/13/23.
//

import Foundation

struct News: Decodable{
    let author: String?
    let title: String?
    let description: String?
    let urlToImage: String?
    let url: String?
}

struct NewsEnvlope: Decodable {
    let status: String?
    let totalResults: Int
    let articles: [News]
}
