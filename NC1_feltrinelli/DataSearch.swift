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
        category(nameCategory: "Books", imageName: "LibriImg", colorBg: .colorLibri),
        category(nameCategory: "English books", imageName: "LibriIng", colorBg: .colorLibriIng),
        category(nameCategory: "eBook", imageName: "eBook", colorBg: .coloreBook),
        category(nameCategory: "Foreigners eBook", imageName: "eBookIng", colorBg: .coloreBookIng),
        category(nameCategory: "Film", imageName: "Film", colorBg: .colorFilm),
        category(nameCategory: "Music CDs", imageName: "CD", colorBg: .colorCD),
        category(nameCategory: "Vinyls", imageName: "Vinili", colorBg: .colorVinili),
        category(nameCategory: "Games", imageName: "Giochi", colorBg: .colorGiochi),
        category(nameCategory: "Stationary Store", imageName: "Carto", colorBg: .colorCarto),
        category(nameCategory: "Gifts ideas", imageName: "Regalo", colorBg: .colorRegalo),
        ]
}
