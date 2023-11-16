//
//  SearchView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//


import SwiftUI

struct SearchView: View {
    
    @State private var searchText: String = ""
    var CategoryView = DataSearch()
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    @State private var isSearching: Bool = false
    @State private var isModal:  Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    Button(action: {
                        isModal.toggle()
                    }) {
                       SearchBar(text: $searchText, isSearching: $isSearching)
                    }
                    .fullScreenCover(isPresented: $isModal) {
                        ContentView()
                    }
                }
                    LazyVGrid(columns: columns, spacing: 10){
                        
                        
                        ForEach(CategoryView.categories){ catego in
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(catego.colorBg)
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                                
                                
                                Image(catego.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .clipped()
                                    .frame(width: 50, height:  10)
                                
                                VStack(alignment: .leading)
                                {
                                    Text(catego.nameCategory)
                                        .font(.headline)
                                        .padding()
                                }
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                
                            }
                            
                        }
                    }.padding()
                }
            
            
        }
        
    }
}

#Preview {
    SearchView()
}




