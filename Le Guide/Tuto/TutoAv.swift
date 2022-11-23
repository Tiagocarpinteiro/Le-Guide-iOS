//
//  TutoAv.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 23/11/2022.
//


import SwiftUI

struct TutoAv: Identifiable{
    let id = UUID()
    let image: String
    let titre: String
    let classV: String
    let videoUrl: URL
}

struct TutoAvList {
    static let TutosAv = [
        TutoCSS(image: "css", titre: "Mettre un titre en dégradé", classV: "Css", videoUrl: URL(string:"https://www.instagram.com/reel/CkNkvRAoGOG/?igshid=YmMyMTA2M2Y=")!)
    ]
}


