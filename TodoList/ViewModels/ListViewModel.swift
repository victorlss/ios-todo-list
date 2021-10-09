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
    
    func loadSampleData() {
        let sampleData = [
            ItemModel(title: "My first item", isCompleted: false),
            ItemModel(title: "My second item", isCompleted: true)
        ]
        
        items.append(contentsOf: sampleData)
    }
}
