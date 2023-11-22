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
                Text("Cart")
                    .font(.callout)
            }
            Spacer()
            HStack{
                Text("Your cart is empty...    Continue to search!")
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
                        .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Image("Carrello_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200,height: 200)
                        .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }else
                {
                    Image("Eliplse")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                        .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    Image("Carrello_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200,height: 200)
                        .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
                    
                
            }
            Spacer()
        }
    }
}
#Preview {
    CartView()
}

