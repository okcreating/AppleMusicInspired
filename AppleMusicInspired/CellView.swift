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
            Text(cell.name)
                .font(.title)
            Spacer()
            cell.threeLines
        }
    }
}
