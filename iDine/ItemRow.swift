//
//  ItemRow.swift
//  iDine
//
//  Created by Muhammad Wasim on 2024-10-23.
//

import SwiftUI

struct ItemRow: View {
    
    let item: MenuItem
    
    var body: some View {
        HStack{
            Image(item.thumbnailImage)
            
            VStack(alignment: .leading){
                
                Text(item.name)
                Text("€ \(item.price)")
            }
        
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
