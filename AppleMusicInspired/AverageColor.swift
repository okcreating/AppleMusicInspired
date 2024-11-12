//
//  AverageColor.swift
//  AppleMusicInspired
//
//  Created by Oksana Kazarinova on 14/10/2024.
//

import Foundation
import SwiftUI
import UIKit

struct AverageColor {
    let averageColor: Color
}

extension AverageColor {
    static func generate(from image: UIImage) throws -> AverageColor {
            let baseColor = try getAverage(from: image)
            return AverageColor(averageColor: Color(uiColor: baseColor))
    }

    private static func isLight(_ color: UIColor) -> Bool {
        var white: CGFloat = 0
        var alpha: CGFloat = 0
        color.getWhite(&white, alpha: &alpha)
        return white >= 0.5
    }

    private static func getAverage(from image: UIImage) throws -> UIColor {
        let ciImage = CIImage(image: image)!
        let filtered = CIFilter(name: "CIAreaAverage", parameters: [
            kCIInputImageKey: ciImage,
            kCIInputExtentKey: CIVector(cgRect: ciImage.extent)
        ])!.outputImage!

        var pixel = [UInt8](repeating: 0, count: 4)
        let context = CIContext(options: [.workingColorSpace: kCFNull!])

        context.render(
            filtered,
            toBitmap: &pixel,
            rowBytes: 4,
            bounds: CGRect(x: 0, y: 0, width: 1, height: 1),
            format: .RGBA8,
            colorSpace: nil
        )

        return UIColor(
            red: CGFloat(pixel[0]) / 255,
            green: CGFloat(pixel[1]) / 255,
            blue: CGFloat(pixel[2]) / 255,
            alpha: 1
        )
    }
}
