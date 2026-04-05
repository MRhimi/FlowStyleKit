//
//  TextFlowLabel.swift
//  FlowStyleKit
//
//  Created by MRhimi on 05/04/2026.
//

import UIKit

// MARK: - Label

public final class TextFlowLabel: UILabel {
    
    // MARK: - Public
    
    public var lines: [LineConfig] = [] {
        didSet { updateText() }
    }
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        numberOfLines = 0
    }
    
    // MARK: - Build
    
    private func updateText() {
        let result = NSMutableAttributedString()
        
        for (index, line) in lines.enumerated() {
            
            // MARK: - New line or space
            if index > 0 {
                result.append(NSAttributedString(string: line.isNewLine ? "\n" : " "))
            }
            
            // MARK: - Build current line
            let lineAttr = NSMutableAttributedString()
            
            // Image
            if let image = line.image {
                let attachment = NSTextAttachment()
                attachment.image = image
                
                let yOffset = (line.style.font.capHeight - line.imageSize.height) / 2
                
                attachment.bounds = CGRect(
                    x: 0,
                    y: yOffset,
                    width: line.imageSize.width,
                    height: line.imageSize.height
                )
                
                lineAttr.append(NSAttributedString(attachment: attachment))
                
                if let text = line.text, !text.isEmpty {
                    lineAttr.append(NSAttributedString(string: " "))
                }
            }
            
            // Text
            if let text = line.text, !text.isEmpty {
                let attributes: [NSAttributedString.Key: Any] = [
                    .font: line.style.font,
                    .foregroundColor: line.style.color
                ]
                
                lineAttr.append(NSAttributedString(string: text, attributes: attributes))
            }
            
            // MARK: - Apply spacing ONLY if new line
            
            if line.isNewLine && line.spacingAfter > 0 {
                let paragraphStyle = NSMutableParagraphStyle()
                paragraphStyle.lineSpacing = line.spacingAfter
                //                paragraphStyle.alignment =
                lineAttr.addAttribute(
                    .paragraphStyle,
                    value: paragraphStyle,
                    range: NSRange(location: 0, length: lineAttr.length)
                )
            }
            
            result.append(lineAttr)
        }
        
        attributedText = result
    }
}

public extension TextFlowLabel {
    
    func setLines(@LineBuilder _ builder: () -> [LineConfig]) {
        self.lines = builder()
    }
}
