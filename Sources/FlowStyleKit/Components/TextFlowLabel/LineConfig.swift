//
//  LineConfig.swift
//  FlowStyleKit
//
//  Created by MRhimi on 05/04/2026.
//

import UIKit

public struct LineConfig {
    public var text: String? = nil
    public var image: UIImage? = nil
    public var imageSize: CGSize = CGSize(width: 16, height: 16)
    public var isNewLine: Bool = true
    public var style: LineStyle = LineStyle()
    public var spacingAfter: CGFloat = 6
}
