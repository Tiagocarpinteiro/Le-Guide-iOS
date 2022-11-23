//
//  ContactView.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 30/10/2022.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        List {
            Group {
                Section(header: Text("A")) {
                    Text("Monsieur Audemard : gilles.audemard@univ-artois.fr")
                    Text("Monsieur Avril : francois.avril@univ-artois.fr")
                }
                Section(header: Text("B")) {
                    Text("Monsieur Berro : eric.berro@gmail.com")
                }
                Section(header: Text("C")) {
                    Text("Madame Charnay : bcharnayuniv@gmail.com")
                }
                Section(header: Text("D")) {
                    Text("Monsieur Dubois : vincent.dubois@univ-artois.fr")
                }
            }
            Group {
                Section(header: Text("H")) {
                    Text("Madame Hayenne : v.hayennecuvillon@gmail.com")
                }
                Section(header: Text("L")) {
                    Text("Monsieur Lecoutre : lecoutre@cril.fr")
                }
                Section(header: Text("P")) {
                    Text("Monsieur Pidancet : pidancet@gmail.com")
                }
                Section(header: Text("R")) {
                    Text("Madame Régnier : mclemence.regnier@univ-artois.fr")
                    Text("Madame Régnier : marieclem.regnier@gmail.com")

                    Text("Monsieur Rollet : erollet.intervenant@gmail.com")
                }
                Section(header: Text("T")) {
                    Text("Monsieur Tabary (Directeur des études) : sebastien.tabary@gmail.com")
                }
                Section(header: Text("V")) {
                    Text("Monsieur Viseur (Chef de département) : yann.viseur@gmail.com")
                    Text("Monsieur Verclytte : lverclytte.univ@gmail.com")
                }
                Section(header: Text("Z")) {
                    Text("Monsieur Zimny : frederic.zimny@univ-artois.fr")
                    Text("Madame Zadoud (Secrétaire du département) : fatima.zadoud@univ-artois.fr")
                }
            }
        }.headerProminence(.increased)
    }
}


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
