//
//  TutoCSS.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 30/10/2022.
//

import SwiftUI

struct TutoCSS: Identifiable{
    let id = UUID()
    let image: String
    let titre: String
    let classV: String
    let videoUrl: URL
}

struct TutoCSSList {
    static let TutosCSS = [
        TutoCSS(image: "css", titre: "Mettre un titre en dégradé", classV: "Css", videoUrl: URL(string:"https://www.instagram.com/reel/CkNkvRAoGOG/?igshid=YmMyMTA2M2Y=")!)
    ]
}


