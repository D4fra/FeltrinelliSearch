//
//  DataSearch.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import Foundation

struct category: Identifiable {
    var id: UUID = UUID()
    var nameCategory: String
    var imageName: String
}

class DataSearch {
    var categories:[category] = [
        ]
}
