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
            LibraryView()
            .tabItem {
                Image(systemName: "play.square.stack.fill")
                Text("Library")
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
