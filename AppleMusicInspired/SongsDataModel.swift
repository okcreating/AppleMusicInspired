//
//  SongsDataModel.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI

enum CategoryName: String {
    case gold = "Gold Collection"
    case romantic = "Romantic"
    case releases = "Releases"
    case hiphop = "Focus"
    case classic = "Classic"
}

final class SongsContent: ObservableObject {
    let id = UUID()
    @Published var image: Image
    @Published var artist: String
    @Published var name: String
    @Published var category: CategoryName

    init(image: Image, artist: String, name: String, category: CategoryName) {
        self.image = image
        self.artist = artist
        self.name = name
        self.category = category
    }

    static func songsCollection() -> [SongsContent] {
        return [
            SongsContent(image: Image("song1"), artist: "John Denver", name: "Take me home", category: CategoryName.gold),
            SongsContent(image: Image("song2"), artist: "*NSYNC", name: "I'll never stop", category: CategoryName.gold),
            SongsContent(image: Image("song3"), artist: "ABBA", name: "Mama Mia", category: CategoryName.gold),
            SongsContent(image: Image("song4"), artist: "Rabbi", name: "Challa", category: CategoryName.romantic),
            SongsContent(image: Image("song5"), artist: "Avrile Lavigne", name: "Love Sux", category: CategoryName.romantic),
            SongsContent(image: Image("song6"), artist: "Red Hot Chili Peppers", name: "Unlimited Love", category: CategoryName.romantic),
            SongsContent(image: Image("song7"), artist: "Lily Pearson", name: "Guess I Already Knew", category: CategoryName.romantic),
            SongsContent(image: Image("song8"), artist: "Tate McRae", name: "Greedy", category: CategoryName.releases),
            SongsContent(image: Image("song9"), artist: "DJ Mix Featuring DJ Enimoney", name: "New Africa Now", category: CategoryName.releases),
            SongsContent(image: Image("song10"), artist: "Dexta Daps", name: "Forever", category: CategoryName.releases),
            SongsContent(image: Image("song11"), artist: "S Beater", name: "Na Na Na", category: CategoryName.hiphop),
            SongsContent(image: Image("song12"), artist: "Kilo Thug", name: "Love Hip Hop", category: CategoryName.hiphop),
            SongsContent(image: Image("song13"), artist: "MANJ Musik", name: "Desi Hiphop", category: CategoryName.hiphop),
            SongsContent(image: Image("song14"), artist: "Paula Kiete", name: "Symphony", category: CategoryName.classic),
            SongsContent(image: Image("song15"), artist: "Ludwig van Beethoven", name: "Piano Sonata No.14", category: CategoryName.classic),

        ]
     }
}

final class Category: ObservableObject {
    let id = UUID()
    @Published var name: String
    @Published var image: Image

    init(name: String, image: Image) {
        self.name = name
        self.image = image
    }

    static func categoriesPoints() -> [Category] {
        return [Category(name: CategoryName.gold.rawValue, image: Image("gold")),
                Category(name: CategoryName.romantic.rawValue, image: Image("romantic")),
                Category(name: CategoryName.releases.rawValue, image: Image("releases")),
                Category(name: CategoryName.hiphop.rawValue, image: Image("focus")),
                Category(name: CategoryName.classic.rawValue, image: Image("classic"))]
    }
}





