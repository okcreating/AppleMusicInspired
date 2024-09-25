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

   static func radioShowPoints() -> [CollectionContent] {
        return [CollectionContent(image: Image("show1"), textMark: "Fresh wind", name: "Cool Music", description: "You don't even need an actual radio"),
                CollectionContent(image: Image("show2"), textMark: "Exlusive", name: "The road to rock", description: "Wednesday’s 9-11pm on Hot Radio"),
                CollectionContent(image: Image("show3"), textMark: "Guest Mix", name: "Bustian Bux", description: "Get ready for a journey"),
                CollectionContent(image: Image("show4"), textMark: "Live", name: "The Saturday Light Brigade", description: "On SLB Radio"),
                CollectionContent(image: Image("show5"), textMark: "Kids", name: "CBeebies BBC", description: "Listening activities for kids")]
    }

    static func radioStationPoints() -> [CollectionContent] {
         return [CollectionContent(image: Image("radio1"), name: "Harmony Radio", description: "Listen to find your harmony"),
                 CollectionContent(image: Image("radio2"), name: "Classic FM", description: "Listen live"),
                 CollectionContent(image: Image("radio3"), name: "LSA", description: "London's Best Underground Radio"),
                 CollectionContent(image: Image("radio4"), name: "BBC Radio 4", description: "Inform, educate and entertain"),
                 CollectionContent(image: Image("radio5"), name: "Kiss Radio", description: "The Beat Of The UK"),
                 CollectionContent(image: Image("radio6"), name: "Soul Radio UK", description: "london's No.1 Soul Radio Station"),
                 CollectionContent(image: Image("radio7"), name: "CountryRadio", description: "The Country Music Radio Station"),
                 CollectionContent(image: Image("radio8"), name: "Radio X", description: "Get Into The Music")]
     }
}

