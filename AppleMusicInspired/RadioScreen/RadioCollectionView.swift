//
//  RadioCollectionView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 22/09/2024.
//

import SwiftUI

struct RadioCollectionView: View {
    @State private var shoswContent = CollectionContent.radioShowPoints()

    @State private var stationsContent = CollectionContent.radioStationPoints()

//    var rows = [GridItem(.fixed(CGFloat(shoswContent.count)))]
//    var columns = [GridItem(.fixed(CGFloat(stationsContent.count)))]

    var body: some View {
        ScrollView(.vertical) {
            LazyHGrid(rows: [GridItem(.flexible())]) {
                ForEach(shoswContent) { content in
                    RadioshowCell(cell: content)
                }
            }

                Divider()
                    .padding()
                Text("Radio Stations")

            LazyVGrid(columns: [GridItem(.flexible())]) {
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
