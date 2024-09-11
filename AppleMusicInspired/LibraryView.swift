//
//  ContentView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 06/09/2024.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView(content: {
           // NavigationLink(destination: Text("Destination")) {
                VStack {
                    Image("tunes")
                        .resizable()
                        .frame(width: 60, height: 60)
                    Text("Welcome to Apple Music")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding()
                    Text("The best way to enjoy all the songs you already have and all the ones you want.")
                        .font(.title3)
                }
                .padding()
                .foregroundColor(Color(hue: 1.0, saturation: 0.078, brightness: 0.252))
                .navigationTitle("Library")

                .navigationBarItems(
                    trailing: NavigationLink("Edit", destination: ListView()))

        })
       // TabBarView()
    }

}




#Preview {
    LibraryView()
}
// play.fill
// forward.fill
// play.square.stack.fill
// dot.radiowaves.left.and.right
// music.note
// magnifyingglass

//music.note.list
// music.mic
// square.stack
// music.note
// tv
// music.note.tv
// guitars
//person.2.crop.square.stack
// music.quarternote.3 авторы
//arrow.down.circle

//line.3.horizontal
