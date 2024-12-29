//
//  CategoryDetailView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 09/10/2024.
//

import SwiftUI

struct CategoryDetailView: View {
    var category: Category

    @State private var expandSheet = false

    var body: some View {
        NavigationView {
            List {
                ForEach(SongDetales.songsCollection().filter { $0.category.rawValue == category.name }) { content in
                    SongCell(cell: content)
                        .onTapGesture {
                            expandSheet = true
                        }
                        .sheet(isPresented: $expandSheet) {
                            FullScreenPlayerView(song: content, expandSheet: $expandSheet, animation: Namespace().wrappedValue)
                        }
                }
                
            }
        }
    }
}

//#Preview {
//    CategoryDetailView()
//}
