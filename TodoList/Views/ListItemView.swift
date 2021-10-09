//
//  ItemListView.swift
//  TodoList
//
//  Created by Victor Souza da Silva on 09/10/21.
//

import SwiftUI

struct ListItemView: View {
    var item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
            Text(item.title)
            Spacer()
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var item1: ItemModel = ItemModel(title: "First preview item", isCompleted: false)
    static var item2: ItemModel = ItemModel(title: "Second preview item", isCompleted: true)
    
    static var previews: some View {
        Group{
            ListItemView(item: item1)
            ListItemView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
    
}
