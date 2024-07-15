// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "TBZTabBar",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "TBZTabBar",
            targets: ["TBZTabBar"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TBZTabBar",
            dependencies: [])
    ]
)
