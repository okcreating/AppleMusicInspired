//
//  RadioStationCell.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 20/09/2024.
//

import SwiftUI

struct RadioStationCell: View {

    let cell: CollectionContent
    
    var body: some View {
        HStack {
            cell.image
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .padding()
            VStack(alignment: .leading) {

                Text(cell.name)
                    .font(.headline)
                Text(cell.description)
                    .foregroundStyle(.gray)
                    .font(.caption)
            }
        }
    }
}

//#Preview {
//    RadioStationCell()
//}
