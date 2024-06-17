// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ReactNativeSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ReactNativeSDK",
            targets: ["ReactNativeSDK.xcframework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
                    name: "ReactNativeSDK.xcframework",
                    url: "",
                    checksum: "e226ea30be566ea7310b833cb26616c5db1353f44edd312d14017e0936cf7bcc"
                )
    ]
)
