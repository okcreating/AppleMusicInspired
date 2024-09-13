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
            NavigationStack() {
                LibraryView()
                PlayingView()
            }
            .tabItem {
                Image(systemName: "play.square.stack.fill")
                Text("Library")
            }
            NavigationStack() {
                Spacer()
                Text("Radio will be appeared here")
                    .navigationTitle("Radio")
                Spacer()
                PlayingView()
            }
            .tabItem {
                Image(systemName: "dot.radiowaves.left.and.right")
                Text("Radio")
            }
            NavigationStack() {
                Spacer()
                Text("Search will be appeared here")
                    .navigationTitle("Search")
                Spacer()
                PlayingView()
            }
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
