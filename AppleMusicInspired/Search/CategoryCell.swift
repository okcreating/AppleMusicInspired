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
                   // .scaledToFit()
                    .frame(width: .infinity/2.2, height: 150)
                    .cornerRadius(3)
                    .padding(.leading, 5)
                Text(cell.name)
                    .foregroundStyle(.white)
                    .font(.title3)
                    .fontWeight(.bold)
                    .shadow(color: .black, radius: 1)
                    .padding(.leading)
                   // .padding(.bottom, 7)
            }

        }

    }



