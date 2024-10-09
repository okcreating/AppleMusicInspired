//
//  AppleMusicInspiredApp.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 06/09/2024.
//

import SwiftUI

@main
struct AppleMusicInspiredApp: App {
    @State private var categoriesContent = CategoriesContent()
    
    var body: some Scene {
        WindowGroup {
           TabBarView()
                .environment(categoriesContent)
        }
    }
}
