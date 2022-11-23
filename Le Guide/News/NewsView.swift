//
//  NavView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 16/10/2022.
//

import SwiftUI

struct NewsView: View {

    var articles: [News] = NewsList.Articles
    
    var body: some View {
        NavigationView {
            List(articles, id: \.id) { article in
                NavigationLink(destination: NewsDetailView(Articles: article), label: {
                    HStack {
                        Image(article.image)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .cornerRadius(3.0)
                            .padding(.vertical, 4)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text(article.titre)
                                .fontWeight(.semibold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.5)
                            
                            Text(article.date)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    } 
                })
                 
            }
            .navigationTitle("News")
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
