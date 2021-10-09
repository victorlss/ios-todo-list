//
//  ListView.swift
//  TodoList
//
//  Created by Victor Souza da Silva on 09/10/21.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "My first item", isCompleted: false),
        ItemModel(title: "My second item", isCompleted: true)
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListItemView(item: item)
            }
        }
        .navigationTitle("Todo List")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
