// swift-tools-version:5.5

/**
*  Plot-SVG
*  Copyright (c) Vithanco 2023
*  MIT license, see LICENSE file for details
*/

import PackageDescription

let package = Package(
    name: "Plot-SVG",
    products: [
        .library(
            name: "Plot-SVG",
            targets: ["Plot-SVG"]
        )
    ],
    dependencies: [
        .package(name: "Plot", url: "https://github.com/johnsundell/plot.git", from: "0.14.0")
    ],
    targets: [
        .target(name: "Plot-SVG", dependencies: ["Plot"]),
        .testTarget(
            name: "Plot-SVG-Tests",
            dependencies: ["Plot", "Plot-SCG"]
        )
    ]
)
