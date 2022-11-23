//
//  HomeView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 16/10/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                
                HStack {
                    Image("logoguide")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                }

                Text("Créer par des MMI, pour des MMI !")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Divider()
                    .frame(width: 180, height: 4)
                    .overlay(Color("mmiColor"))
                
                    Text("Bienvenue sur Le Guide MMI !!")
                        .font(.title2)
                    
                    Image("ferdinand")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 180)
                        .cornerRadius(10)
                    
                    
                    Text("Créé par des étudiants, pour les étudiants, Le Guide vous accompagne et vous aide le plus possible pendant votre année.")
                        .padding(.horizontal, 20)
                        .multilineTextAlignment(.center)

                    
                    Text("Infos pratiques, actualités, conseils, tuto, c’est ici que se retrouveront toutes les capsules qui, on l’espère, vous seront utiles.")
                        .padding(.horizontal, 20)
                        .multilineTextAlignment(.center)

                Spacer()
                
                
                
                
            }.background(Image("fond")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            )
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
