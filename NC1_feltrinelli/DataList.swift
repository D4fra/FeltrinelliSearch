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
        ListSearch(nameLibro: "camirelli", type:"", imageLibro: ""),
        ListSearch(nameLibro: "harry potter", type:"", imageLibro: ""),
        ListSearch(nameLibro: "hidden games", type:"" ,imageLibro: ""),
        ListSearch(nameLibro: "lego", type:"", imageLibro: ""),
        ListSearch(nameLibro: "L'educazione delle farfalle", type: "Libri", imageLibro: "EdFarfalle"),
        ListSearch(nameLibro: "Riusciranno i nostri eroi a ritrovare l'amico misteriosamente scomparso in Sud America", type: "Libri", imageLibro: "SudAmerica"),
        ListSearch(nameLibro: "Una ragazza d'altri tempi", type: "Libri", imageLibro: "RagazzaTempi"),
        ListSearch(nameLibro: "Un giorno questo dolore sarà utile", type: "Libri", imageLibro: "DoloreUtile")
        
    ]
}
