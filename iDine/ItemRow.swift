//
//  ItemRow.swift
//  iDine
//
//  Created by Muhammad Wasim on 2024-10-23.
//

import SwiftUI

struct ItemRow: View {
    
    let item: MenuItem
    
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]

    var body: some View {
        HStack{
            
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 2.0))
            
            VStack(alignment: .leading){
                
                Text(item.name)
                    .font(.headline)
                Text("€ \(item.price)")
            }
            
            Spacer()
            
            ForEach(item.restrictions, id:\.self){ restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundStyle(.white)
            }
        
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
