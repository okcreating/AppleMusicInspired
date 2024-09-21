//
//  RadioshowsCell.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 20/09/2024.
//

import SwiftUI

struct RadioshowCell: View {

    let cell: CollectionContent

    var body: some View {
        VStack {
            Text(cell.textMark ?? "")
                .font(.caption)
                .foregroundStyle(.gray)
                .textCase(.uppercase)
            Text(cell.name)
                .font(.title)
            Text(cell.description)
                .font(.caption)
                .foregroundStyle(.gray)
                .padding()
            cell.image
                .scaledToFill()
                .frame(width: .infinity - 60, height: 200)
        }
    }
}

#Preview {
    RadioshowCell()
}
