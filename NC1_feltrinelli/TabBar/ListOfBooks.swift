//
//  ListOfBooks.swift
//  NC1_feltrinelli
//
//  Created by Davide Formisano on 10/06/24.
//

import SwiftUI

struct ListOfBooks: View {
    var item: items
    @Environment (\.colorScheme) var colorSchemer
    
    var body: some View {
        ScrollView{
            VStack {
                Spacer()
                VStack{
                    
                    Image(item.imageLibro)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .accessibilityHidden(true)
                        .clipped()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(20)

                   
                }
                .padding()
                .background(
                    ZStack{
                        Rectangle()
                            .foregroundStyle(colorSchemer == .light ? Color.black.opacity(0.8) : Color.colorSearch.opacity(0.5))
                            
                            
                            
                        Rectangle()
                            .foregroundStyle( Color.colorSearch)
                            .padding(30)
                            .border(Color.black)
                            
                    }
                )
                
                
                
                HStack{
                    Text(item.type)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()

                        .background(
                            Rectangle()
                                .foregroundStyle(colorSchemer == .light ? Color.black.opacity(0.4) : Color.white.opacity(0.4))
                                .border(Color.black)
                                .cornerRadius(10)
                                .padding(10)

                        )
                        
                    Spacer()
                    
                    Image(systemName: "heart")
                        
                    Image(systemName: "link")
                        .padding()
                }
                .padding()
                
                
                
                VStack{
                    Text("Title")
                        .font(.headline)
                        .frame(alignment: .leading)
                    
                    Text(item.nameLibro)
                        .font(.title3)
                        .frame(alignment: .leading)
                        .bold()
                    
                        
                        
                    if item.type == "Books"{
                        Text("Writer")
                            .font(.subheadline)
                            .bold()
                        Text(item.scrittore)
                            .font(.subheadline)
                    } else {
                        Text("Filmmaker")
                            .font(.subheadline)
                            .bold()
                        Text(item.scrittore)
                            .font(.subheadline)
                    }
                   
                }
                .padding()
                
                Divider()
                    .frame(width: 365, height: 4)
                    .background(colorSchemer == .dark ? Color.white : Color.black)
                /*
                VStack{
                    Text("Genre")
                        .font(.subheadline)
                        .bold()
                    Text(item.type)
                        .font(.subheadline)
                }
                */
               
                VStack{
                    Text("Descriptions")
                        .font(.callout)
                        .bold()
                    Text(item.description)
                }
                .padding()
                Spacer()
                
                
                
            }
            
        }
    }
    
}

#Preview {
    ListOfBooks(item: items(nameLibro: "L'educazione delle farfalle", type: "Books", imageLibro: "Medusa", scrittore: "Paperino", description: "blavwivnio ow cowcmiiemcwomcocnowivn rwo jrw ow cowcmkoewmkcoewmckow ckorw cr", isRecommended: false))
}
