# FlowStyleKit

A lightweight UILabel extension for flexible text flow with inline and multiline support.

## Features
- Multi-line / inline text control
- Image + text support
- Per-line styling

## Installation

Swift Package Manager:

https://github.com/MRhimi/FlowStyleKit.git

## Usage

```swift
import UIKit
import FlowStyleKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = TextFlowLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.setLines {
            
            Line.icon(
                UIImage(systemName: "star.fill"),
                imageSize: CGSize(width: 25, height: 25),
            )
            
            Line.text(
                "Premium",
                color: .secondaryLabel,
                newLine: false,
                spacingAfter: 6
            )
            
            Line.text(
                "Active subscription",
                font: .boldSystemFont(ofSize: 17),
                color: .black,
                spacingAfter: 6
            )
            
            Line.text(
                "Inline",
                color: .secondaryLabel,
                spacingAfter: 6
            )
            
            Line.text(
                "Text",
                font: .boldSystemFont(ofSize: 17),
                color: .black,
            )
            
        }
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }


}
```
