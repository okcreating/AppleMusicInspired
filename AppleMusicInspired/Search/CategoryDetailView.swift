//
//  CategoryDetailView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 09/10/2024.
//

import SwiftUI

struct CategoryDetailView: View {
    var category: Category
    
    var body: some View {
        NavigationView {
            List {
                ForEach(SongDetales.songsCollection().filter { $0.category.rawValue == category.name }) { content in
                    SongCell(cell: content)
                }
                
            }
        }
    }
}

//#Preview {
//    CategoryDetailView()
//}
