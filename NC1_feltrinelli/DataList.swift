//
//  DataList.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 15/11/23.
//

import Foundation

struct items: Identifiable{
    var id: UUID = UUID()
    var nameLibro: String
    var type: String
    var imageLibro: String
    var isRecommended: Bool
}

class DataList {
    var lists: [items] = [
        items(nameLibro: "Hunger games", type: "Film", imageLibro: "", isRecommended: true),
        items(nameLibro: "Harry potter", type: "Film", imageLibro: "", isRecommended: true),
        items(nameLibro: "Lego", type: "Games" ,imageLibro: "", isRecommended: true),
        items(nameLibro: "Hidden games", type:"Games", imageLibro: "", isRecommended: true),
        items(nameLibro: "L'educazione delle farfalle", type: "Books", imageLibro: "EdFarfalle", isRecommended: false ),
        items(nameLibro: "Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Sud America", type: "Books", imageLibro: "SudAmerica", isRecommended: true),
        items(nameLibro: "Una ragazza d'altri tempi", type: "BooKs", imageLibro: "RagazzaTempi", isRecommended: true),
        items(nameLibro: "Un giorno questo dolore sarà utile", type: "Books", imageLibro: "DoloreUtile", isRecommended: true)
        
    ]
}
