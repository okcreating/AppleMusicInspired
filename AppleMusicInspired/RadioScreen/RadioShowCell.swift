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
        VStack(alignment: .leading, spacing: 7) {
            
            Text(cell.textMark ?? "")
                .frame(alignment: .leading)
                .font(.caption)
                .foregroundStyle(.gray)
                .textCase(.uppercase)
            Text(cell.name)
                .frame(alignment: .leading)
                .font(.headline)
            Text(cell.description)
                .frame(alignment: .leading)
                .font(.caption)
                .foregroundStyle(.gray)
            cell.image
                .resizable()
                //.scaledToFit()
                .frame(width: 370, height: 220, alignment: .leading)
        }
        .frame(width: 370)
        .padding()
    }
}

//struct Show_Previews: PreviewProvider {
//    static var previews: some View {
//        RadioshowCell(cell: CellView)
//    }
//
//
//}
