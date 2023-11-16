//
//  ContentView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    @State private var isSearching: Bool = false
    var ListView = DataList()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    SearchBar(text: $searchText, isSearching: $isSearching)
                }
                Divider()
                VStack(alignment: .leading){
                    ForEach(ListView.lists){ lis in
                        HStack{
                            Text(lis.type)
                                .font(.footnote)
                                .frame(alignment: .topLeading)
                            
                            
                            Text(lis.nameLibro)
                                .font(.headline)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            
                            Image(lis.imageLibro)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, alignment: .trailing)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .trailing)
                                .padding(.trailing)
                            
                        }
                        Divider()
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding(.leading)
                
            }
        }
    }
}
#Preview {
    ContentView()
}

