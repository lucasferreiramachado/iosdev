// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iosdev",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(
            name: "iosdev",
            targets: ["iosdev"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser", 
            from: "0.0.1"
        ),
        .package(
            url: "https://github.com/JohnSundell/ShellOut.git",
            from: "2.0.0"
        )
    ],
    targets: [
        .target(
            name: "iosdev",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "ShellOut", package: "ShellOut")
            ]),
        .testTarget(
            name: "iosdevTests",
            dependencies: ["iosdev"]),
    ]
)
