//
//  tuto.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 19/10/2022.
//

import SwiftUI

struct TutoP: Identifiable{
    let id = UUID()
    let image: String
    let titre: String
    let classV: String
    let videoUrl: URL
}

struct TutoPList {
    static let TutosP = [
        TutoP(image: "photoshop2", titre: "Changer la couleur d'un sujet", classV: "Photoshop", videoUrl: URL(string: "https://www.instagram.com/reel/Ckig7U3IdXO/?igshid=YmMyMTA2M2Y=")!),
        
        TutoP(image: "photoshop1", titre: "Supprimer un sujet", classV: "Photoshop", videoUrl: URL( string:"https://www.instagram.com/reel/Cj7Y4ETjPGU/?igshid=YmMyMTA2M2Y=")!)
    ]
    
    
}
