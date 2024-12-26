//
//  CategoryDetailView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 09/10/2024.
//

import SwiftUI

struct CategoryDetailView: View {
    let category: Category
    let songs = SongDetales.songsCollection()
    var filteredSongs = [SongDetales]()

    mutating func filterSongs(category: CategoryName) -> [SongDetales] {
        for song in songs {
            if song.category == category {
                filteredSongs.append(song)
                return filteredSongs
            }
        }
    }

    var body: some View {
        List {
            ForEach(filteredSongs) { content in
                SongCell(cell: content)
            }

        }
    }
}

#Preview {
    CategoryDetailView()
}
