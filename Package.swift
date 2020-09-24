// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "ViewPlus",
    platforms: [.macOS(.v10_10)],
    products: [
        .library(name: "ViewPlus", targets: ["ViewPlus"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "ViewPlus", dependencies: [], path: "ViewPlus/"),
        .testTarget(name: "ViewPlusTests", dependencies: ["ViewPlus"], path: "ViewPlusTests/"),
    ]
)
