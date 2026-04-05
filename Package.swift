// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FlowStyleKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "FlowStyleKit",
            targets: ["FlowStyleKit"]
        ),
    ],
    targets: [
        .target(
            name: "FlowStyleKit",
            path: "Sources/FlowStyleKit"
        ),
        .testTarget(
            name: "FlowStyleKitTests",
            dependencies: ["FlowStyleKit"]
        ),
    ]
)
