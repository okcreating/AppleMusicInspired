//
//  SearchView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var value: String = ""
    private var categories = Category.categoriesPoints()

    var body: some View {

        //  ScrollView(.vertical, showsIndicators: false) {
        NavigationStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .backgroundStyle(.gray)
                TextField("Your Library", text: $value)
                    .font(.system(size: 18))
            }
            .padding(10)
            .overlay(RoundedRectangle(cornerRadius: 20)
                .stroke( Color.gray, lineWidth: 0.5))
            .padding()

            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(categories, id: \.self) { category in

                    NavigationLink(destination: CategoryDetailView(category: category)) {
                            CategoryCell(cell: category)
                        }
                    }
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                }
                Spacer()
            }
        }
    }



#Preview {
    SearchView()
}
