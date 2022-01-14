// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RSAKeyLoader",
    products: [
        .library(
            name: "RSAKeyLoader",
            targets: ["RSAKeyLoader"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RSAKeyLoader",
            dependencies: []),
    ]
)
