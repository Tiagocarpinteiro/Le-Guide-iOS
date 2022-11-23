//
//  RessourceView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 21/10/2022.
//

import SwiftUI

struct RessourceView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("IUT")) {
                    
                    Button("Site de l'IUT") {
                        openURL(URL(string: "http://www.iut-lens.univ-artois.fr")!)
                    }
                    Button("Site de l'IUT - MMI") {
                        openURL(URL(string: "http://www.iut-lens.univ-artois.fr/formations/but-mmi/")!)
                    }
                }
                Section(header: Text("Lien pratiques pour les cours")) {
                    Button("ENT") {
                        openURL(URL(string: "https://ent.univ-artois.fr/uPortal/f/u29l1s43/normal/render.uP")!)
                    }
                    Button("Moodle") {
                        openURL(URL(string: "https://moodle.univ-artois.fr/cours/")!)
                    }
                    Button("WebMail de l'IUT") {
                        openURL(URL(string: "https://wmailetu.univ-artois.fr/#5")!)
                    }
                    Button("Facebook MMI1") {
                        openURL(URL(string: "https://www.facebook.com/groups/791196135643289")!)
                    }
                    Button("Facebook MMI2") {
                        openURL(URL(string: "https://www.facebook.com/groups/554331779097062")!)
                    }
                }
                
                Section(header: Text("Mails des professeurs")) {
                    NavigationLink(destination: ContactView(), label: {
                        Text("Contacts")
                            .foregroundColor(Color("mmiColor"))
                    })
                }
                
                Section(header: Text("Réseaux sociaux du Guide MMI")) {
                    Button("Instagram") {
                        openURL(URL(string: "https://instagram.com/le_guide_mmi?igshid=YmMyMTA2M2Y=")!)
                    }
                    Button("TikTok") {
                        openURL(URL(string: "https://www.tiktok.com/@le_guide_mmi?_t=8WwVgTAqOU2&_r=1")!)
                    }
                    Button("YouTube") {
                        openURL(URL(string: "https://youtube.com/channel/UCwz2k0WSAjDHNRSaJg5SQww")!)
                    }
                }
                
                Section(header: Text("Crédit")) {
                    NavigationLink(destination: CreditView(), label: {
                        HStack {
                            Image("tjasm")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            Text("TJASM")
                                .font(.title3)
                                .foregroundColor(Color("mmiColor"))
                        }
                        .hCenter()
                    })
                    
                }
                
            }.navigationTitle("Ressources")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}



struct RessourceView_Previews: PreviewProvider {
    static var previews: some View {
        RessourceView()
    }
}
