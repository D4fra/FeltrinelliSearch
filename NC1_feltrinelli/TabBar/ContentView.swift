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
    @Environment (\.presentationMode) var presentationmode
    // @Enviroment dichiariamo una variabili che si addatta alle impostazioni del tema del sistema
    @Environment (\.colorScheme) var colorSchemer
    private var dataList = DataList()
    // Elementi consigliati per la visualizzazione
       private var recommendedItems: [items] {
           return dataList.lists.filter { $0.isRecommended }
       }
       
       // Elementi filtrati per la ricerca
       private var filteredItems: [items] {
           if searchText.isEmpty {
               return recommendedItems
           } else {
               return dataList.lists.filter { $0.nameLibro.localizedCaseInsensitiveContains(searchText) }
           }
       }
    
    
    var body: some View {
        NavigationStack{
            
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
                        .frame(minWidth: .zero, alignment: .leading)
                        .padding(.bottom)
                        .padding(.trailing)
                    //con questa linea di comando ho utilzzato un operatore ternario. in qeusta riga ha la funzione di cambiare il colore al seconda del tema(scuro o chiaro). Infatti esso funzione come "Condizione ? ValoreVero: ValoreFalso"
                        .foregroundColor(colorSchemer == .dark ? Color.white: Color.black)
                        .font(.title)
                        .accessibilityLabel("Go back")
                }
                    Spacer()
                        .frame(width: 340)
                    /*
                     Text("Cerca")
                     .frame(maxWidth: .infinity, alignment: .trailing)
                     .padding(.bottom)
                     .padding(.trailing, 160)
                     .font(.title)
                     */
                }
                // Qui c'è la barra di ricerca. Con le due variabili di STATO $searchText e $isSearching che prendono il valore delle varialbilli BIDIREZIONALI text e isSearching anche quando vengono modificate
                SearchBar(text: $searchText, isSearching: $isSearching)
            }
            // Con Divider creo una linea 
            Divider()
                .frame(width: 365, height: 4)
                .background(Color.colortabar)
            
            
            List {
                ForEach(filteredItems) { item in
                    NavigationLink(destination: ListOfBooks(item: item)){
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.type)
                                    .font(.caption2)
                                    .frame(alignment: .leading)
                                    .padding(.bottom, 4)
                                    .accessibilityLabel(item.type)
                                
                                Text(item.nameLibro)
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                            
                            Spacer()
                            
                            Image(item.imageLibro)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 100, alignment: .trailing)
                                .padding(.trailing)
                                .accessibilityHidden(true)
                        }
                    }
                }
            }.listStyle(.grouped)
            
            /*
            ScrollView{
                
                ForEach(ListView.lists){ lis in
                    
                    HStack{
                        
                        VStack(alignment: .leading)
                        {
                            Text(lis.type)
                                .font(.caption2)
                                .frame(alignment: .leading)
                                .padding(.bottom, 4)
                                .accessibilityLabel(lis.type)
                            
                            
                            Text(lis.nameLibro)
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                        }
                        
                        Spacer() //In modo tale da creare spazio tra l'immagine e il testo
                        
                        Image(lis.imageLibro)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, alignment: .trailing)
                            .padding(.trailing)
                            .accessibilityHidden(true)
                        
                    }
                    Divider()
                        .frame(width: 365)
                    
                }
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading)
            */
            
        }
    }
    
}
#Preview {
    ContentView()
}

