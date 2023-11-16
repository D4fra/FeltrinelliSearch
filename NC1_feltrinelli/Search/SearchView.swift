//
//  SearchView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//


import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    var CategoryView = DataSearch()
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        NavigationView{
            ScrollView {
            VStack {
                SearchBar(text: searchText)
            }

                LazyVGrid(columns: columns, spacing: 10){
                    
                    
                    ForEach(CategoryView.categories){ catego in
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(catego.colorBg)
                                .aspectRatio(contentMode: .fit)
                                .clipped()
                            
                            
                            Image(catego.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipped()
                                .frame(width: 150 ,height: -10)
                           
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




