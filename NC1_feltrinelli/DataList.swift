//
//  DataList.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 15/11/23.
//

import Foundation

struct ListSearch: Identifiable{
    var id: UUID = UUID()
    var nameLibro: String
    var type: String
    var imageLibro: String
}

class DataList {
    var lists: [ListSearch] = [
        ListSearch(nameLibro: "Hunger games", type: "Film", imageLibro: ""),
        ListSearch(nameLibro: "Harry potter", type: "Film", imageLibro: ""),
        ListSearch(nameLibro: "Lego", type: "Games" ,imageLibro: ""),
        ListSearch(nameLibro: "Hidden games", type:"Games", imageLibro: ""),
        ListSearch(nameLibro: "L'educazione delle farfalle", type: "Books", imageLibro: "EdFarfalle" ),
        ListSearch(nameLibro: "Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Sud America", type: "Books", imageLibro: "SudAmerica"),
        ListSearch(nameLibro: "Una ragazza d'altri tempi", type: "BooKs", imageLibro: "RagazzaTempi"),
        ListSearch(nameLibro: "Un giorno questo dolore sarà utile", type: "Books", imageLibro: "DoloreUtile")
        
    ]
}
