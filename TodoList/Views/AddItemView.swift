//
//  AddItemView.swift
//  TodoList
//
//  Created by Victor Souza da Silva on 09/10/21.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textField: String = ""
    
    var body: some View {
        ScrollView {
            HStack {
                TextField("New item", text: $textField)
                    .textFieldStyle(.roundedBorder)
                Button(
                    action: {
                        listViewModel.addItem(title: textField)
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: { Label("Add", systemImage: "plus.circle") }
                ).buttonStyle(.bordered)
                    
            }.padding()
        }
        .navigationTitle("New item")
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddItemView()
        }
    }
}
