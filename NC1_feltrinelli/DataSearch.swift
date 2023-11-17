//
//  DataSearch.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import Foundation
import SwiftUI

struct category: Identifiable {
    var id: UUID = UUID()
    var nameCategory: String
    var imageName: String
    var colorBg: Color
}

class DataSearch {
    var categories:[category] = [
        category(nameCategory: "Libri", imageName: "LibriImg", colorBg: .colorLibri),
        category(nameCategory: "Libri in inglese", imageName: "LibriIng", colorBg: .colorLibriIng),
        category(nameCategory: "eBook", imageName: "eBook", colorBg: .coloreBook),
        category(nameCategory: "eBook in lingua straniera", imageName: "eBookIng", colorBg: .coloreBookIng),
        category(nameCategory: "Film", imageName: "Film", colorBg: .colorFilm),
        category(nameCategory: "CD musicali", imageName: "CD", colorBg: .colorCD),
        category(nameCategory: "Vinili", imageName: "Vinili", colorBg: .colorVinili),
        category(nameCategory: "Giochi", imageName: "Giochi", colorBg: .colorGiochi),
        category(nameCategory: "Cartoleria", imageName: "Carto", colorBg: .colorCarto),
        category(nameCategory: "Idee regalo", imageName: "Regalo", colorBg: .colorRegalo),
        ]
}
