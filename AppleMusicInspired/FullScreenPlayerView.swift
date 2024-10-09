//
//  FullScreenPlayerView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI

struct FullScreenPlayerView: View {
    @State private var isPresenting = false
    let song: SongDetales
    var body: some View {
        Spacer()
        song.image
            .resizable()
            .frame(width: 260, height: 260, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 10))

Spacer()
        HStack {
            VStack(alignment: .leading) {
                Text(song.name)
                    .fontWeight(.bold)
                Text(song.artist)
            }
            .font(.title)
            .padding()
            Spacer()
        }
        ProgressView(value: 0.3)
            .progressViewStyle(.linear)
            .padding(.leading)
            .padding(.trailing)
        HStack {
            Text("0:00")
            Spacer()
            Text("3:24")
        }
        .padding(.leading)
        .padding(.trailing)
        .font(.system(size: 14))
Spacer()
        HStack {
            Image(systemName: "backward.fill")
            Spacer()
            Image(systemName: "play.fill")
            Spacer()
            Image(systemName: "forward.fill")
        }
        .font(.system(size: 50))
        .padding(30)

        Spacer()
        HStack {
            Image(systemName: "speaker.fill")
            ProgressView(value: 0.3)
            Image(systemName: "speaker.wave.3.fill")
        }
        .padding(.leading)
        .padding(.trailing)


        HStack {
            Image(systemName: "quote.bubble")
            Image(systemName: "airplay.audio.circle.fill")
            Image(systemName: "list.bullet.indent")
        }
        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
        Spacer()
    }

}

#Preview {
    FullScreenPlayerView(song: SongDetales.songsCollection()[0])
}
