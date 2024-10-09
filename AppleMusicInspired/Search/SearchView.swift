//
//  SearchView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI
import Observation

struct SearchView: View {
    @State private var value: String = ""
    @Environment(CategoriesContent.self) var categoriesContent

    var body: some View {

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

     //  ScrollView(.vertical, showsIndicators: false) {
            NavigationSplitView {
                LazyVGrid(columns: [GridItem(.fixed(200)), GridItem(.fixed(200))]) {
                    ForEach(categoriesContent.categories, id: \.self) { content in

                        NavigationLink {
                            CategoryDetailView()
                        } label: {
                            CategoryCell(cell: content)
                        }
                    }
                }
                Spacer()
            } detail: {
                Text("fhfh")
            }
            .padding(5)
//        }
//        .ignoresSafeArea()
        }
   }



#Preview {
    SearchView()
        .environment(CategoriesContent())
}
