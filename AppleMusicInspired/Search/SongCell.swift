//
//  SongCell.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI

struct SongCell: View {

    let cell: SongDetales

    var body: some View {

        HStack {
            cell.image
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .leading)
                    .cornerRadius(5)
                    .padding(10)

            VStack(alignment: .leading) {
                Text(cell.name)
                    .font(.title2)
                    .lineLimit(1)
                Text(cell.artist)
                    .font(.subheadline)
                    .lineLimit(1)
            }

            Spacer()

            Button {
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.black)
                    .padding(20)
            }
        }
        .frame(width: .infinity, height: 80)
        .background(.ultraThinMaterial)
    }
}

#Preview {
    let randomSong = SongDetales.songsCollection()[.random(in: 0..<SongDetales.songsCollection().count)]

    return SongCell(cell: randomSong)

}
