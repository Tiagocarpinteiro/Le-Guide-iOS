//
//  CreditView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 17/11/2022.
//

import SwiftUI

struct CreditView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("L'équipe !")
                    .font(.title)
                    .foregroundColor(Color("mmiColor"))
                
                HStack {
                    Image("Tiago")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                    HStack {
                        VStack {
                            Text("Tiago Carpinteiro")
                                .foregroundColor(.white)
                                .background(Color("mmiColor"))
                            Text("Développeur")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .frame(width: 200, height: 50)
                        .background(Color("mmiColor"))
                        .cornerRadius(100)
                    }
                }
                
                HStack {
                    VStack {
                        Text("Julian Heldebaume")
                            .foregroundColor(.white)
                            .background(Color("mmiColor"))
                        Text("Community Manager")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color("mmiColor"))
                    .cornerRadius(100)
                    Image("Julian")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                }
                
                HStack {
                    Image("AnaL")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                    VStack {
                        Text("Anaëlle David")
                            .foregroundColor(.white)
                            .background(Color("mmiColor"))
                        Text("Chargée de communication")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color("mmiColor"))
                    .cornerRadius(100)
                }
                
                HStack {
                    VStack {
                        Text("Séléna Zavodzski")
                            .foregroundColor(.white)
                            .background(Color("mmiColor"))
                        Text("Graphiste")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color("mmiColor"))
                    .cornerRadius(100)
                    Image("Selena")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                }
                
                HStack {
                    Image("Margaux")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                    VStack {
                        Text("Margaux Berlinski")
                            .foregroundColor(.white)
                            .background(Color("mmiColor"))
                        Text("Chargée d'audiovisuel")
                            .font(.caption)
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 50)
                    .background(Color("mmiColor"))
                    .cornerRadius(100)
                }
            }
        }
    }
}

struct CreditView_Previews: PreviewProvider {
    static var previews: some View {
        CreditView()
    }
}
