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
                    Spacer()
                    Spacer()
                    Spacer()
                    Button(action: {
                        isModal.toggle()
                    }) {
                        HStack{
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.red)
                                    .frame(minWidth: .zero, alignment: .leading)
                                    .padding(.leading,6)
                                    .padding(.trailing,4)
                            
                                Text("Cosa stai cercando?")
                                    .padding(.leading, -6)
                                    .padding(.trailing, 4)
                                    .frame(minWidth: .zero,  alignment: .center)
                                    .foregroundColor(.gray)
                                    
                                Spacer()
                            
                                Image(systemName: "line.3.horizontal")
                                    .foregroundColor(.black)
                                    .frame(minWidth: .zero, alignment: .trailing)
                                    .padding(.trailing, 8)
                                    .padding(.leading, 4)
                        }
                        .padding(.leading, 4)
                        .padding(.trailing, 8)
                        .padding(.vertical, 8)
                        .cornerRadius(8)
                        
                    }
                    .fullScreenCover(isPresented: $isModal) {
                        ContentView()
                    }
                }
                Divider()
                    .frame(height: 4)
                    .background(Color.colortabar)
                    
                    LazyVGrid(columns: columns, spacing: 10){
                        
                        
                        ForEach(CategoryView.categories){ catego in
                            
                            ZStack {
                                
                                Rectangle()
                                    .foregroundColor(catego.colorBg)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 130)
                                    .clipped()
                                // Con l'overlay posso unire piu viste o anche dei contenuti aggiuntivi o modifiche in modo tale da farle sovvrapporle
                                    .overlay(
                                    Image(catego.imageName)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 100, height:  70)
                                
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                                .padding(.top)
                                )
                                    .clipped()
                                
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




