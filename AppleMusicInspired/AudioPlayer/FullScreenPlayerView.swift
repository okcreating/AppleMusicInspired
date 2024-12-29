//
//  FullScreenPlayerView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI
import AVKit

struct FullScreenPlayerView: View {

     var song: SongDetales
    @State private var player: AVAudioPlayer?
    @State private var isPlaying = false
    @State private var songTotalTime: TimeInterval = 0.0
    @State private var songCurrentTime: TimeInterval = 0.0

    @Binding var expandSheet: Bool
    var animation: Namespace.ID
    @State private var animationContent = false

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

                    playerView(size)
                    //.offset(y: animationContent ? 0)
                }
                .padding(.top, safeArea.top + (safeArea.bottom == 0 ? 10 : 0))
                .padding(.bottom, safeArea.bottom + (safeArea.bottom == 0 ? 10 : safeArea.bottom))
                .padding(.horizontal, 25)
                .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: .top)
                .clipped()
            }
            .ignoresSafeArea(.container, edges: .all)
        }
        .onAppear(perform: {
            setupAudio()
        })
        .onReceive(Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()) { _ in
            updateProgress()
        }
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

    @ViewBuilder
    func playerView(_ mainSize: CGSize) -> some View {

        GeometryReader {
            let size = $0.size
            let spacing = size.height * 0.04

            VStack(spacing: spacing) {
                VStack(spacing: spacing) {
                    HStack(alignment: .center, spacing: 15) {
                        VStack(alignment: .leading) {
                            Text(song.name)
                                .fontWeight(.semibold)
                                .font(.title3)
                            Text(song.artist)
                                .foregroundStyle(.gray)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)

                        Button {
                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                                .padding(12)
                                .background {
                                    Circle()
                                        .fill(.ultraThinMaterial)
                                        .environment(\.colorScheme, .light)
                                }
                        }
                    }
                    Slider(value: Binding(get: {
                        songCurrentTime
                    }, set: { newValue in
                        seekAudio(to: newValue)
                    }), in: 0...songTotalTime)
                    .foregroundColor(.white)

                    HStack {
                        Text(timeStrirng(time: songCurrentTime))
                        Spacer()
                        Text(timeStrirng(time: songTotalTime))
                    }
                }
                .frame(height: size.height / 2.5, alignment: .top)

                HStack(spacing: size.width * 0.2) {
                    Button {
                    } label : {
                        Image(systemName: "backward.fill")
                            .font(size.height < 300 ? .title3 : .title)
                    }

                    Button {
                    } label : {
                        Image(systemName: isPlaying ? "pause.fill" : "play.fill")
                            .font(size.height < 300 ? .largeTitle : .system(size: 50))
                            .onTapGesture {
                                isPlaying ? stopPlaying() : playAudio()
                            }
                    }

                    Button {
                    } label : {
                        Image(systemName: "forward.fill")
                            .font(size.height < 300 ? .title3 : .title)
                    }
                }
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)

                VStack(spacing: spacing) {
                    HStack(spacing: 15){
                        Image(systemName: "speaker.fill")
                        Capsule()
                            .fill(.ultraThinMaterial)
                            .environment(\.colorScheme, .light)
                            .frame(height: 5)
                        Image(systemName: "speaker.wave.3.fill")
                    }
                    .foregroundColor(.white)

                    HStack(alignment: .top, spacing: size.width * 0.2) {

                        Button {
                        } label: {
                            Image(systemName: "quote.bubble")
                                .font(.title2)
                        }

                        Button {
                        } label: {
                            Image(systemName: "dot.radiowaves.left.and.right")
                                .font(.title2)
                        }

                        Button {
                        } label: {
                            Image(systemName: "list.bullet")
                                .font(.title2)
                        }
                    }
                    .foregroundColor(.white)
                    //.blendMode(.overlay)
                    .padding(.top, spacing)
                }
               .frame(height: size.height / 2.5, alignment: .bottom)
            }
        } .onTapGesture(count: 2) {
            expandSheet = false
        }
    }
}

#Preview {
    let randomSong = SongDetales.songsCollection()[.random(in: 0..<SongDetales.songsCollection().count)]

    return FullScreenPlayerView(song: randomSong, expandSheet: .constant(true), animation: Namespace().wrappedValue)

}

