//
//  ContentView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack{
                        SearchBar(text: searchText)
                }
                Divider()
                VStack(alignment: .leading){
                    Text("camirelli")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding(.leading)
                Divider()
                
                VStack(alignment: .leading){
                    Text("harry potter")
                        
                }
                Divider()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

