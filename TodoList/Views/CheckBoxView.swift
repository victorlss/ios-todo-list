//
//  CheckBoxView.swift
//  TodoList
//
//  Created by Victor Souza da Silva on 09/10/21.
//

import SwiftUI

struct CheckBoxView: View {
    var checked: Bool
    
    var body: some View {
        Image(systemName: checked ? "checkmark.circle.fill" : "circle")
            .foregroundColor(checked ? Color.accentColor : Color.secondary)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CheckBoxView(checked: false)
            CheckBoxView(checked: true)
        }
        .previewLayout(.sizeThatFits)
    }
}
