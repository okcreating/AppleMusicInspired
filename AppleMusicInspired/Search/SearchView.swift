//
//  SearchView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 02/10/2024.
//

import SwiftUI

struct SearchView: View {
   @State private var value: String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .backgroundStyle(.gray)
            TextField("Your Library", text: $value)
                .font(.system(size: 18))
        }
        .padding(8)
        .overlay(RoundedRectangle(cornerRadius: 20)
            .stroke( Color.gray, lineWidth: 1))
        .padding()
Spacer()


    }

                     }




#Preview {
    SearchView()
}
