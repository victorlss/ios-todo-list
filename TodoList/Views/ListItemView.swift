//
//  ItemListView.swift
//  TodoList
//
//  Created by Victor Souza da Silva on 09/10/21.
//

import SwiftUI

struct ListItemView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("Item")
        }
    }
}

struct ItemListView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
    }
}
