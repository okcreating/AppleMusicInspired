//
//  PlayingView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 11/09/2024.
//

import SwiftUI

struct PlayingView: View {
    var body: some View {
        HStack {
            Image("ThisTown")
                .resizable()
                .frame(width: 60, height: 60, alignment: .leading)
                .cornerRadius(5)
                .padding(10)
            Text("Kygo - This Town feat. Sasha Sloan & Gucci Mane")
                .lineLimit(1)
                .truncationMode(.tail)
            Image(systemName: "play.fill")
            Image(systemName: "forward.fill")
                .padding(10)
        }

        .frame(height: 80)
        .background(Color(hue: 1.0, saturation: 0.005, brightness: 0.875))
        .padding(.bottom)
    }
}

#Preview {
    PlayingView()
}
