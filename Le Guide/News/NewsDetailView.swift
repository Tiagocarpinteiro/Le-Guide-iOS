//
//  NewsDetailView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 16/10/2022.
//

import SwiftUI

struct NewsDetailView: View {
    
    var Articles: News
    var body: some View {
        VStack(spacing: 10) {
            ScrollView{
                Text(Articles.date)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Image(Articles.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .cornerRadius(6.0)
                
                Text(Articles.description)
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.leading)
                
                Text(Articles.description2)
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.leading)
                
                Text(Articles.description3)
                    .font(.body)
                    .padding()
                    .multilineTextAlignment(.leading)
                
                Text(Articles.accroche)
                    .font(.body.bold())
                    .foregroundColor(Color("mmiColor"))
                    .padding()
                    .multilineTextAlignment(.center)

                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text(Articles.titre)
                            .font(.title.bold())
                            .accessibilityAddTraits(.isHeader)
                    }
                }
                           
                }
            
            Link(destination: Articles.url, label: {
                Text("Regardez la vidéo !")
                    .bold()
                    .font(.title2)
                    .frame(width: 240, height: 50)
                    .background(Color("mmiColor"))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                
            })
            Spacer()
        }.background(Image("fond4")
            .resizable()
            .edgesIgnoringSafeArea(.all)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
    )
       
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView(Articles: NewsList.Articles.first!)
    }
}
