//
//  TutoPDetailView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 27/10/2022.
//

import SwiftUI
import AVKit


struct TutoPDetailView: View {
    
    var tutosP: [TutoP] = TutoPList.TutosP
    
    var body: some View {
        
        List(tutosP, id: \.id) { tuto in
            Link(destination: tuto.videoUrl, label: {
                ZStack {
                    ZStack(alignment: .bottomLeading) {
                        Image(tuto.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 250)
                            .cornerRadius(30)
                        
                        
                        VStack(alignment: .leading) {
                            Text(tuto.titre)
                                .multilineTextAlignment(.leading)
                            
                            
                            Text(tuto.classV)
                                .font(.caption).bold()
                            
                        }
                        .padding()
                        .foregroundColor(.white)
                        .shadow(radius: 20)
                        
                    }
                    
                    Image(systemName: "play.fill")
                        .foregroundColor(.white)
                        .font(.title)
                        .padding()
                        .background(.ultraThinMaterial)
                        .cornerRadius(50)
                    
                }
            })
            .listRowSeparator(.hidden)
        }
    }
}

struct TutoPDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TutoPDetailView()
    }
}