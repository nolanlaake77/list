//
//  ListRowView.swift
//  list
//
//  Created by Nolan Laake on 2/20/24.
//


import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

// Preview

struct ListRowView_Previews: PreviewProvider {
    
    // First Item / Incomplete item
    
    static var item1 = ItemModel(title: "First item.", isCompleted: false)
    
    // Second Item / Completed item
    
    static var item2 = ItemModel(title: "Second Item.", isCompleted: true)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
        
    }
}
