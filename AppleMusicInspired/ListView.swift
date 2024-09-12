//
//  ListView.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 11/09/2024.
//

import SwiftUI

struct ListView: View {

    @State private var multiselection = Set<UUID>()

    var body: some View {
        NavigationView {
            List {

            }
            .foregroundColor(Color(hue: 1.0, saturation: 0.078, brightness: 0.252))
            .navigationTitle("Library")
            .navigationBarItems(
                trailing: NavigationLink("Done", destination: TabBarView()))
            .listStyle
        }




           PlayingView()
            //TabBarView()
                }

    }



#Preview {
    ListView()
}
