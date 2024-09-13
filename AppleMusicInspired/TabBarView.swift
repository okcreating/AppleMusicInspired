//
//  TabBarView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 11/09/2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Library", systemImage: "play.square.stack.fill") {
                LibraryView()
            }
            .tabItem {
                Image(systemName: )
                Text()
            }
            Text("Radio will be appeared here")
            .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Radio")
            }
            Text("Search will be appeared here")
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
        }
        .accentColor(.red)
       
    }
}

#Preview {
    TabBarView()
}
