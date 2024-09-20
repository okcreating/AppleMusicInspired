//
//  CollectionDataModel.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 20/09/2024.
//

import SwiftUI

struct CollectionContent: Identifiable, Hashable {
    let id = UUID()
    var image: Image
    var textMark: String?
    var name: String
    var description: String
    //var isSelected: Bool


    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

   static func libraryPoints() -> [CollectionContent] {
        return [CellContent(icon: Image(systemName: "music.note.list"), name: "Playlists", isSelected: true),
                CellContent(icon: Image(systemName: "music.mic"), name: "Artists", isSelected: true),
                CellContent(icon: Image(systemName: "square.stack"), name: "Albums", isSelected: false),
                CellContent(icon: Image(systemName: "music.note"), name: "Songs", isSelected: true),
                CellContent(icon: Image(systemName: "music.note.tv"), name: "Music Videos", isSelected: false),
                CellContent(icon: Image(systemName: "guitars"), name: "Genres", isSelected: false),
                CellContent(icon: Image(systemName: "music.quarternote.3"), name: "Compilations", isSelected: false),
                CellContent(icon: Image(systemName: "person.2.crop.square.stack"), name: "Composers", isSelected: false),
                CellContent(icon: Image(systemName: "arrow.down.circle"), name: "Downloaded music", isSelected: true)]
    }
}

