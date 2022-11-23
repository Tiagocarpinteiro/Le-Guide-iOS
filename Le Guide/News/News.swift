//
//  News.swift
//  Le Guide
//
//  Created by Tiago Carpinteiro on 16/10/2022.
//

import SwiftUI

struct News: Identifiable{
    let id = UUID()
    let image: String
    let titre: String
    let description: String
    let description2: String
    let description3: String
    let accroche: String
    let date: String
    let url: URL
}

struct NewsList {
    static let Articles = [
        News(image: "minia culturathon", titre: "Culturathon", description: "Ce jeudi 13 et vendredi 14 octobre s’est déroulée la 6ème saison du Culturathon au Louvre Lens Vallée, lieu d’entrepreneuriat et de rencontre dans le secteur culturel et de l’innovation. C’est un événement ouvert à tous les étudiants de la région, peu importe la filière dans laquelle ils sont !", description2: "L’objectif de ce marathon ? Répondre, en équipe, à une problématique axée autour de la culture et du développement durable sur le territoire de Lens et ses alentours, durant 2 jours non stop ! Cette année, les MMI étaient en force au Culturathon, avec 19 MMI en deuxième année. Nos camarades ont été répartis dans différentes équipes aux côtés d’étudiants venant d’autres écoles, comme l’ESAAT de Roubaix ou encore Polytech à Lille. Notre coéquipière Séléna a eu la chance de participer à ce projet ! Et les souvenirs qu’elle en garde sont très positifs : « Beaucoup de rencontres et de fous rires ! Ces deux jours sont très intenses niveau travail, mais cela nous permet à la fin d’avoir un réel projet, qui peut par la suite être repris par les membres du jury et vraiment voir le jour. On s’est donné à fond et résultat, mon équipe a obtenu la 3ème place sur le podium!”", description3: "Les participants du Culturathon ont eu l’occasion de faire une visite nocturne au Louvre Lens, juste avant de faire la fête en musique et de taper leur meilleur karaoké! (Bon, après cela, il faut bien se remettre au travail .)Libre à vous de dormir ou non durant ce marathon ! Mais en tout cas, vous mangez (très très) bien : viande ou option végé, il y en a pour tous les goûts! ( il y a même des bières pour les plus alcooliques d’entre vous).", accroche: "Une seule chose à dire, pour ceux qui seraient hésitants pour les futures éditions : foncez!", date: "19 Octobre 2022", url: URL(string: "https://www.youtube.com/watch?v=sjdqPQ1Rwf8")!),
        
        News(image: "minia inté", titre: "Intégration des MMI 1", description: "C’est sous la direction du BDE Legacy MMI qu’a été organisé la journée d’intégration des MMI en première année, au terrain vague à proximité du terril 74. Juste avant de débuter, un petit débrief en amphi, et des anecdotes bien croustillantes vécues par les MMI.", description2: "Au programme de cet évènement, un Koh-Lanta grandeur nature avec différentes activités : tir à la corde, parcours du combattant, course avec les yeux bandés, avec à la clé, le fameux totem de l’émission. Sans oublier, bien-sûr, l’emblématique bataille de peinture, qui clôture cet après-midi, le tout avec de la musique et dans la bonne humeur !",description3: "Après cet après-midi riche en émotions, les MMI se sont donnés rendez-vous à la nouvelle boîte de nuit de Lens « Le Club », afin de finir cette journée en beauté !", accroche: "Aux côtés des DU, nous avons couverts l’évènement du côté audiovisuel, et nous vous proposons une petite rétrospective juste ici:", date: "14 Octobre 2022", url: URL(string: "https://www.youtube.com/watch?v=-nR7nSnesi4&t=3s")!)
    ]
    
    
}
