//
//  SearchView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack () {
                SearchBar(text: searchText)
            }
            .padding(.top, -350)
            HStack{
                ZStack{
                        
                }
            }
        }
        
    }
}

#Preview {
    SearchView()
}
