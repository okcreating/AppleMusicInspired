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
            GeometryReader { proxy in
                let size = proxy.size

                Image("ThisTown")
                    .resizable()
                    .frame(width: 60, height: 60, alignment: .leading)
                    .cornerRadius(5)
                    .padding(10)
            }

            Animation(text: "Kygo - This Town feat. Sasha Sloan & Gucci Mane", font: .systemFont(ofSize: 16, weight: .regular))
                //                .lineLimit(1)
                //                .truncationMode(.tail)
                .frame(width: 230)
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


struct Animation: View {
    @State var text: String
    var font: UIFont
    @State var storedSize: CGSize = .zero
    @State var offset: CGFloat = 0
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            Text(text)
                .font(Font(font))
                .offset(x: offset)
        }
        .disabled(true)
        .onAppear {
            let baseText = text
            (1...15).forEach { _ in
                text.append(" ")
            }
            storedSize = textSize()
            text.append(baseText)
            
            let timing: Double = (0.02 * storedSize.width)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                withAnimation(.linear(duration: timing)) {
                    offset = -storedSize.width
                }
            }
        }
        .onReceive(Timer.publish(every: ((0.02 * storedSize.width)), on: .main, in: .default).autoconnect()) { _ in
            offset = 0
            withAnimation(.linear(duration: (0.02 * storedSize.width))) {
                offset = -storedSize.width
            }
        }
    }

        func textSize() -> CGSize {
            let attributes = [NSAttributedString.Key.font: font]
            let size = (text as NSString).size(withAttributes: attributes)
            return size
        }
    }




