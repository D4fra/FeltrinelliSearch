//
//  SearchBar.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct SearchBar: View {
    
    @State var text: String
    
    var body: some View {
        HStack{
            TextField("Cosa stai cercando?", text: $text)
                .padding(.leading, 34)
                .padding(.trailing, 8)
                .padding(.vertical, 8)
                .cornerRadius(8)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.red)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                            .padding(.trailing, 4)
                    }
            )
        }
    }
}


