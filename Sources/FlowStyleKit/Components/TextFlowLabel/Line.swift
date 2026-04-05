//
//  Line.swift
//  FlowStyleKit
//
//  Created by MRhimi on 05/04/2026.
//

import UIKit

public enum Line {
    
    // Text 
    public static func text(
        _ text: String,
        font: UIFont = .systemFont(ofSize: 14),
        color: UIColor = .black,
        newLine: Bool = true,
        spacingAfter: CGFloat = 6
    ) -> LineConfig {
        
        LineConfig(
            text: text,
            image: nil,
            isNewLine: newLine,
            style: LineStyle(font: font, color: color),
            spacingAfter: spacingAfter
        )
    }
    
    // Icon
    public static func icon(
        _ icon: UIImage?,
        imageSize: CGSize = CGSize(width: 16, height: 16),
        newLine: Bool = true,
        spacingAfter: CGFloat = 6
    ) -> LineConfig {
        
        LineConfig(
            text: nil,
            image: icon,
            imageSize: imageSize,
            isNewLine: newLine,
            spacingAfter: spacingAfter
        )
    }
}
