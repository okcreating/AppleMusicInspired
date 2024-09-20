//
//  ListDataModel.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 12/09/2024.
//

import SwiftUI

struct CellContent: Identifiable, Hashable {
    let id = UUID()
    var icon: Image
    var name: String
    var isSelected: Bool
    //var threeLines = Image(systemName: "line.3.horizontal")

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
   static func libraryPoints() -> [CellContent] {
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


//let pointNames = ["Playlists", "Artists", "Albums", "Songs", "Music Videos", "Genres", "Compilations", "Composers", "Downloaded music"]
//let symbolNames = ["music.note.list", "music.mic", "square.stack", "music.note", "music.note.tv", "guitars", "music.quarternote.3", "person.2.crop.square.stack", "arrow.down.circle"]
