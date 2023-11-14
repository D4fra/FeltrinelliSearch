//
//  NC1_feltrinelliApp.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

@main
struct NC1_Feltrinelli: App {
    
var body: some Scene {
         
        WindowGroup{
                
            HomeView()
            .tabItem { Image(systemName: "house"); Text("Home") }
            
            SearchView()
            .tabItem { Image(systemName: "magnifyingglass"); Text("Cerca") }
            
            CartView()
            .tabItem { Image(systemName: "cart"); Text("Carello") }
            
            NegoziView()
            .tabItem { Image(systemName: "mappin"); Text("Negozi") }
            
            ProfiloView()
            .tabItem { Image(systemName: "person"); Text("Profilo") }
        }
    }
}

