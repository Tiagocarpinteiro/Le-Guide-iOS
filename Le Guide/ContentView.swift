//
//  ContentView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 16/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Accueil")
                }
            NewsView()
                .tabItem{
                    Image(systemName: "books.vertical.fill")
                    Text("News")
                }
            TutoView()
                .tabItem{
                    Image(systemName: "graduationcap.fill")
                    Text("Tutoriels")
                }
            Home()
                .tabItem{
                    Image(systemName: "calendar")
                    Text("EDT")
                }
            RessourceView()
                .tabItem{
                    Image(systemName: "tray.full.fill")
                    Text("Ressources")
                }
        }
        .accentColor(Color("mmiColor"))
        .preferredColorScheme(.light)
            
        
        
    }
}
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
