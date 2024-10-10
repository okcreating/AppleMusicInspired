//
//  CellView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 12/09/2024.
//

import SwiftUI

struct CellView: View {

    let cell: CellContent

    var body: some View {
        HStack {
            cell.icon
                .foregroundColor(.red)
                
                     .scaledToFit()
                     .frame(width: 24, height: 24)
            Text(cell.name)
                .font(.subheadline)
//            Spacer()
//            cell.threeLines
//                .tint(.gray)

        }
    }
}
