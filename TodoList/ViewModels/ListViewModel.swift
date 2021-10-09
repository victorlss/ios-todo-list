//
//  ListViewModel.swift
//  TodoList
//
//  Created by Victor Souza da Silva on 09/10/21.
//

import Foundation
class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        loadSampleData()
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = ItemModel(title: item.title, isCompleted: !item.isCompleted)
        }
    }
    
    func loadSampleData() {
        let sampleData = [
            ItemModel(title: "My first item", isCompleted: false),
            ItemModel(title: "My second item", isCompleted: true)
        ]
        
        items.append(contentsOf: sampleData)
    }
}
