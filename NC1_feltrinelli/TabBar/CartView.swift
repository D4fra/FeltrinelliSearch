//
//  CartView.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 14/11/23.
//

import SwiftUI

struct CartView: View {
    
    
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
            HStack{
                Image("Eliplse")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
            Spacer()
        }
    }
}
#Preview {
    CartView()
}

