//
//  TutoView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 16/10/2022.
//

import SwiftUI


struct TutoView: View {
    
    var tutosP: [TutoP] = TutoPList.TutosP
    var tutosCSS: [TutoCSS] = TutoCSSList.TutosCSS
    
    var body: some View {
        
        
        NavigationView {
            List {
                NavigationLink(destination: TutoPDetailView(tutosP: tutosP), label: {
                    HStack {
                        Image("photoshop")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .cornerRadius(3.0)
                            .padding(.vertical, 4)
                        
                        Text("Photoshop")
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                    }
                })
                
                NavigationLink(destination: TutoCSSDetailView(tutosCSS: tutosCSS), label: {
                    HStack {
                        Image("VScode")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .cornerRadius(3.0)
                            .padding(.vertical, 4)
                        
                        Text("Web")
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                        
                    }
                })
                
                NavigationLink(destination: TutoCSSDetailView(tutosCSS: tutosCSS), label: {
                    HStack {
                        Image(systemName: "camera.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 50)
                            .cornerRadius(3.0)
                            .padding(.vertical, 4)
                        
                        Text("Audiovisuel")
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        
                        
                    }
                })

                
                
            }.navigationTitle("Tutoriels")
        }.navigationViewStyle(StackNavigationViewStyle())
        
        
    }
    
    
    struct TutoView_Previews: PreviewProvider {
        static var previews: some View {
            TutoView()
        }
    }
}
