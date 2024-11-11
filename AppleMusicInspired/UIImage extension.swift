//
//  UIImage extension.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 14/10/2024.
//

import Foundation
import UIKit
import SwiftUI

extension View {
    /// Usually you would pass  `@Environment(\.displayScale) var displayScale`
    @MainActor func render(scale displayScale: CGFloat = 1.0) -> UIImage? {
        let renderer = ImageRenderer(content: self)

        renderer.scale = displayScale

        return renderer.uiImage
    }
}
