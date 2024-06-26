//
//  SearchBar.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @Binding var isSearching: Bool
    @Environment (\.colorScheme) var colorSchemer
    
    
    var body: some View {
        HStack{
            TextField("Search", text: $text)
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
                            .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    }
                )
                .overlay(
                    HStack{
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(colorSchemer == .dark ? Color.white: Color.black)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                            .padding(.trailing, 15)
                            .padding(.leading, 4)
                            .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    }
            )
        }
        //Questa funzione funziona che quando clicchi, per esempio la searchbar, il valore in questo caso isSearching, avrà il valore di true
        .onTapGesture {
            isSearching = true
        }
        
        // Questo if serve per chiudere la tastiera nel caso l'utente non volesse piu fare le ricerche
         if isSearching
        {
             Button(action: { isSearching = false; text = ""; UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)},
                    label: {
                 Text("Cancel")
             })
             
             
         }
        
    }
    }


