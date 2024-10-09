//
//  SearchView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var value: String = ""
    @Environment(CategoriesContent.self) var categoriesContent

    var body: some View {
        ScrollView(.vertical) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .backgroundStyle(.gray)
                TextField("Your Library", text: $value)
                    .font(.system(size: 18))
            }
            .padding(8)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke( Color.gray, lineWidth: 0.5))
            .padding()

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                ForEach(categoriesContent.categories, id: \.self) { content in
                   // NavigationLink(content.name) {
                        CategoryCell(cell: content)
                    }
            })
        }
    }

}


#Preview {
    SearchView()
        .environment(CategoriesContent())
}
