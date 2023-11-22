//
//  NC1_feltrinelliApp.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI
@main
struct Feltrinelli: App {
   
    @State private var index = 0
    
var body: some Scene {
         
        WindowGroup{
            
            TabView(selection: $index)
                   {
                HomeView()
                           .tabItem { Image(systemName: "house").accessibilityLabel("Home") ;
                        Text(index == 0 ? "Home": "")
                    }
                       // con i tag assegno un valore fisso ad ogni scheda, quindi quando si cambierà scheda il valore dell'index cambierà con il valore del tag
                    .tag(0)
                
                SearchView()
                    .tabItem { Image(systemName: "magnifyingglass") .accessibilityLabel("Cerca");
                        Text(index == 1 ? "Search": "")
                    }
                    .tag(1)
                
                CartView()
                    .tabItem { Image(systemName: "cart") .accessibilityLabel("Carello");
                        Text(index == 2 ? "Cart": "")
                    }
                    .tag(2)
                
                NegoziView()
                    .tabItem { Image(systemName: "mappin") .accessibilityLabel("Negozi");
                        Text(index == 3 ? "Shops": "")
                    }
                    .tag(3)
                
                ProfiloView()
                    .tabItem { Image(systemName: "person") .accessibilityLabel("Profilo");
                        Text(index == 4 ? "Profile": "")
                    }
                    .tag(4)

            }
            .accentColor(.colortabar)
                
        }
    }
}

