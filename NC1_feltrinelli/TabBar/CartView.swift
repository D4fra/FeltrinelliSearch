//
//  CartView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct CartView: View {
    
    @Environment (\.colorScheme) var colorShemer
    var body: some View {
        VStack{
            HStack{
                Text("Carello")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }
            Spacer()
            HStack{
                Text("Il tuo carello è vuoto... Continua a cercare")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                    
            }
           Spacer()
            
            ZStack{
                if colorShemer == .dark{
                    
                    Image("Elipse_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Image("Carrello_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200,height: 200)
                }else
                {
                    Image("Eliplse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Image("Carrello_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200,height: 200)
                }
                    
                
            }
            Spacer()
        }
    }
}
#Preview {
    CartView()
}

