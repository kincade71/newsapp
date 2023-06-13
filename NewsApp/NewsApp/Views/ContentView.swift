//
//  ContentView.swift
//  NewsApp
//
//  Created by Richard Robinson on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var newsListVM = NewsListVM()
    
    init() {
        newsListVM.load()
    }
    
    var body: some View {
        VStack{
            NewsListHeader()
            NewsListView(newsCollection: self.newsListVM.news, imageData: self.newsListVM.imageData)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
