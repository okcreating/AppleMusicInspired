//
//  CategoryCell.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI

struct CategoryCell: View {

    let cell: Category

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            cell.image
                .resizable()
                .frame(width: .infinity/2.2, height: 180)
                .cornerRadius(3)
           Text(cell.name)
                .backgroundStyle(.white)
        }
    }
}


