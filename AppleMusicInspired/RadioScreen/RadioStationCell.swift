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
                .scaledToFit()
                .frame(width: 60, height: 60)
                .padding()
            VStack {
                Text(cell.name)
                    .font(.title)
                Text(cell.description)
                    .foregroundStyle(.gray)
                    .font(.caption)
            }
        }
    }
}

#Preview {
    RadioStationCell()
}
