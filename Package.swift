// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "yrs-swift-experiment",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_10),
    ],
    products: [
        .library(
            name: "yrs-swift-experiment",
            targets: ["yrs-swift-experiment"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/heckj/YrsC", from: "0.11.2-alpha1"),
    ],
    targets: [
        .target(
            name: "yrs-swift-experiment",
            dependencies: [
                .product(name: "YrsC", package: "YrsC"),
            ]
        ),
        .testTarget(
            name: "yrs-swift-experimentTests",
            dependencies: [
                .product(name: "YrsC", package: "YrsC"),
                "yrs-swift-experiment",
            ]
        ),
    ]
)
