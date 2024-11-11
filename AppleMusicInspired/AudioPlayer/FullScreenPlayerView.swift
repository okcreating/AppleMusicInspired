//
//  FullScreenPlayerView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI
import AVKit

struct FullScreenPlayerView: View {

    let song: SongDetales
    @State private var player: AVAudioPlayer?
    @State private var isPlaying = false
    @State private var songTotalTime: TimeInterval = 0.0
    @State private var songCurrentTime: TimeInterval = 0.0

    @Binding var expandSheet: Bool
    var animation: Namespace.ID
    @State private var animationContent = false
//    let color: AverageColor?

    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets

            ZStack {
                Rectangle()
                    .fill(.ultraThickMaterial)
                    .overlay(content: {
                        Rectangle()
                        song.image
                            .blur(radius: 55)
                          //  .opacity(animationContent ? 1 : 0)
                    })
                 //   .matchedGeometryEffect(id:"Background", in: animation)

                VStack(spacing: 15) {
                    GeometryReader {
                        let size = $0.size
                        song.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: size.width, height: size.height)
                            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
                    }
                    .frame(height: size.width - 50)
                    .padding(.vertical, size.height < 700 ? 10 : 30)
                    }
                    .padding(.top, safeArea.top + (safeArea.bottom == 0 ? 10 : 0))
                    .padding(.bottom, safeArea.bottom + (safeArea.bottom == 0 ? 10 : safeArea.bottom))
                    .padding(.horizontal, 25)
                    .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .top)
                    .clipped()

            }
        }

//            VStack {
//                Spacer()
//                song.image
//                    .resizable()
//                    .frame(width: 260, height: 260, alignment: .center)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//
//                Spacer()
//                HStack {
//                    VStack(alignment: .leading) {
//                        Text(song.name)
//                            .fontWeight(.bold)
//                        Text(song.artist)
//                    }
//                    .font(.title)
//                    .padding()
//                    Spacer()
//                }
//                ProgressView(value: 0.3)
//                    .progressViewStyle(.linear)
//                    .padding(.leading)
//                    .padding(.trailing)
//                HStack {
//                    Text("0:00")
//                    Spacer()
//                    Text("3:24")
//                }
//                .padding(.leading)
//                .padding(.trailing)
//                .font(.system(size: 14))
//                Spacer()
//                HStack {
//                    Image(systemName: "backward.fill")
//                    Spacer()
//                    Image(systemName: "play.fill")
//                    Spacer()
//                    Image(systemName: "forward.fill")
//                }
//                .font(.system(size: 50))
//                .padding(30)
//
//                Spacer()
//                HStack {
//                    Image(systemName: "speaker.fill")
//                    ProgressView(value: 0.3)
//                    Image(systemName: "speaker.wave.3.fill")
//                }
//                .padding(.leading)
//                .padding(.trailing)
//
//
//                HStack {
//                    Image(systemName: "quote.bubble")
//                    Image(systemName: "airplay.audio.circle.fill")
//                    Image(systemName: "list.bullet.indent")
//                }
//                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
//                Spacer()
//                   //.backgroundStyle(AverageColor.generate(from: song.image.render()!).averageColor)
//            }
    }

    private func setupAudio() {
        guard let url = Bundle.main.url(forResource: song.name, withExtension: "mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url )
            player?.prepareToPlay()
            songTotalTime = player?.duration ?? 0.0
        } catch {
            print("Loading error \(error)")
        }
    }

    private func playAudio() {
        player?.play()
        isPlaying = true
    }

    private func stopPlaying() {
        player?.pause()
        isPlaying = false
    }

    private func updateProgress() {
        guard let player = player else { return }
        songCurrentTime = player.currentTime
    }

    private func seekAudio(to time: TimeInterval) {
        player?.currentTime = time
    }

    private func timeStrirng(time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
return String(format: "%02d:%02d", minutes, seconds)
    }
}

#Preview {
    let randomSong = SongDetales.songsCollection()[.random(in: 0..<SongDetales.songsCollection().count)]

    return FullScreenPlayerView(song: randomSong, expandSheet: .constant(true), animation: Namespace().wrappedValue)

}