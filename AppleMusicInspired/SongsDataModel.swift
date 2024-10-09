//
//  SongsDataModel.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI
import Observation

enum CategoryName: String {
    case gold = "Gold Collection"
    case romantic = "Romantic"
    case releases = "Releases"
    case hiphop = "Focus"
    case classic = "Classic"
}

@Observable
class CategoriesContent {
    var categories: [Category] = Category.categoriesPoints()
}

struct SongDetales: Hashable {
     var id = UUID()
     var image: Image
     var artist: String
     var name: String
     var category: CategoryName

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

//    init(image: Image, artist: String, name: String, category: CategoryName) {
//        self.image = image
//        self.artist = artist
//        self.name = name
//        self.category = category
//    }

    static func songsCollection() -> [SongDetales] {
        return [
            SongDetales(image: Image("song1"), artist: "John Denver", name: "Take me home", category: CategoryName.gold),
            SongDetales(image: Image("song2"), artist: "*NSYNC", name: "I'll never stop", category: CategoryName.gold),
            SongDetales(image: Image("song3"), artist: "ABBA", name: "Mama Mia", category: CategoryName.gold),
            SongDetales(image: Image("song4"), artist: "Rabbi", name: "Challa", category: CategoryName.romantic),
            SongDetales(image: Image("song5"), artist: "Avrile Lavigne", name: "Love Sux", category: CategoryName.romantic),
            SongDetales(image: Image("song6"), artist: "Red Hot Chili Peppers", name: "Unlimited Love", category: CategoryName.romantic),
            SongDetales(image: Image("song7"), artist: "Lily Pearson", name: "Guess I Already Knew", category: CategoryName.romantic),
            SongDetales(image: Image("song8"), artist: "Tate McRae", name: "Greedy", category: CategoryName.releases),
            SongDetales(image: Image("song9"), artist: "DJ Mix Featuring DJ Enimoney", name: "New Africa Now", category: CategoryName.releases),
            SongDetales(image: Image("song10"), artist: "Dexta Daps", name: "Forever", category: CategoryName.releases),
            SongDetales(image: Image("song11"), artist: "S Beater", name: "Na Na Na", category: CategoryName.hiphop),
            SongDetales(image: Image("song12"), artist: "Kilo Thug", name: "Love Hip Hop", category: CategoryName.hiphop),
            SongDetales(image: Image("song13"), artist: "MANJ Musik", name: "Desi Hiphop", category: CategoryName.hiphop),
            SongDetales(image: Image("song14"), artist: "Paula Kiete", name: "Symphony", category: CategoryName.classic),
            SongDetales(image: Image("song15"), artist: "Ludwig van Beethoven", name: "Piano Sonata No.14", category: CategoryName.classic),
        ]
     }
}

struct Category: Hashable {
    let id = UUID()
    var name: String
    var image: Image

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    static func categoriesPoints() -> [Category] {
        return [Category(name: CategoryName.gold.rawValue, image: Image("gold")),
                Category(name: CategoryName.romantic.rawValue, image: Image("romantic")),
                Category(name: CategoryName.releases.rawValue, image: Image("releases")),
                Category(name: CategoryName.hiphop.rawValue, image: Image("focus")),
                Category(name: CategoryName.classic.rawValue, image: Image("classic"))]
    }
}





