//
//  RadioCollectionView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 22/09/2024.
//

import SwiftUI

struct RadioCollectionView: View {
    @State private var showsContent = CollectionContent.radioShowPoints()

    @State private var stationsContent = CollectionContent.radioStationPoints()

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())]) {
                ForEach(showsContent) { content in
                    RadioshowCell(cell: content)
                }
            }
        }

            Divider()
                 .padding()
            HStack(content: {
                Text("Radio Stations")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(15)
                Spacer()
            })

            LazyVGrid(columns: [GridItem(.flexible(), alignment: .leading)]) {
                ForEach(stationsContent) { content in
                    RadioStationCell(cell: content)
                }
            }
          
        }
        .navigationTitle("Radio")
    }
}

#Preview {
    RadioCollectionView()
}
