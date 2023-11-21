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
    // @Enviroment dichiariamo una variabili che si addatta alle impostazioni del tema del sistema
    @Environment (\.colorScheme) var colorSchemer
    
    var body: some View {
        NavigationStack{
            
            VStack{
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
                            .foregroundColor(Color.colorSearch)
                        
                        Spacer()
                        
                        Image(systemName: "line.3.horizontal")
                        //con questa linea di comando ho utilzzato un operatore ternario. in qeusta riga ha la funzione di cambiare il colore al seconda del tema(scuro o chiaro). Infatti esso funzione come "Condizione ? ValoreVero: ValoreFalso"
                            .foregroundColor(colorSchemer == .dark ? Color.white: Color.black)
                            .frame(minWidth: .zero, alignment: .trailing)
                            .padding(.trailing, 8)
                            .padding(.leading, 4)
                    }
                    .padding(.leading, 4)
                    .padding(.trailing, 8)
                    .padding(.vertical, 8)
                    .cornerRadius(8)
                    .frame(alignment: .top)
                    
                }
                .fullScreenCover(isPresented: $isModal) {
                    ContentView()
                }
                Divider()
                    .frame(width: 365, height: 4)
                    .background(Color.colortabar)
            }
            
            VStack{
                
                ScrollView{
                    
                    ZStack{
                        VStack{
                            ScrollView{
                                LazyVGrid(columns: columns, spacing: 10){
                                    
                                    
                                    ForEach(CategoryView.categories){ catego in
                                        
                                        ZStack {
                                            
                                            Rectangle()
                                                .foregroundColor(catego.colorBg)
                                                .aspectRatio(contentMode: .fill)
                                                .frame(height: 130)
                                                .cornerRadius(10)
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
                                                .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) // con questa funzione nascondo gli elemnti al voiceOver in modo tale che non li legga
                                            
                                            VStack(alignment: .leading)
                                            {
                                                Text(catego.nameCategory)
                                                    .font(.headline)
                                                    .padding()
                                                    .foregroundColor(.white)
                                                    .accessibilityLabel(catego.nameCategory) // Fornisce un etichetta al testo, che in questo caso è il nameCategory
                                            }
                                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                            
                                        }
                                        
                                    }
                                }.padding()
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView()
}




