//
//  ContentView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct ContentView: View {
    
    // Con @State sto dichiarando due variabli di STATO, cioè che serve per informare che questa varibile potrebbe cambiare valore durante il ciclo
    @State private var searchText: String = ""
    @State private var isSearching: Bool = false
    var ListView = DataList()
    // fornisce un modo di accedere alla modalità di presentazione dell'ambiente, consentendo di controllare o manipolare il flusso di navigazione o la presentazione delle viste in SwiftUI.
    @Environment(\.presentationMode) var presentationmode
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        
                        // Con questo bottone ritorno alla view precendete
                        Button{
                            // Viene utilizzato per chiudere un foglio in modale
                            presentationmode.wrappedValue.dismiss()
                        }
                    label:{
                        // Questo è il simbolo che permette di chiudere il moodale
                        Image(systemName: "multiply")
                            .frame(maxWidth: .zero, alignment: .leading)
                            .padding(.bottom)
                            .padding(.leading,8)
                            .foregroundColor(.black)
                            .font(.title)
                        }
                        Text("Cerca")
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.bottom)
                            .padding(.trailing, 169)
                            .font(.title2)
                        
                    }
                    // Qui c'è la barra di ricerca. Con le due variabili di STATO $searchText e $isSearching che prendono il valore delle varialbilli BIDIREZIONALI text e isSearching quando vengono modificate
                    SearchBar(text: $searchText, isSearching: $isSearching)
                }
                // Con Divider creo una linea 
                Divider()
                    .frame(height: 4)
                    .background(Color.colortabar)
                VStack(alignment: .leading){
                    ForEach(ListView.lists){ lis in
                        HStack{
            
                                Text(lis.type)
                                    .font(.footnote)
                                    .frame(alignment: .topLeading)
                            
                            Text(lis.nameLibro)
                                .font(.headline)
                                .frame(maxWidth: .infinity, maxHeight: .zero, alignment: .leading)
                            
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

