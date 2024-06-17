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
                    url: "https://github.com/M4rkB4d/react-native-ios-sdk/releases/download/1.0.0/ReactNativeSDK.xcframework.zip",
                    checksum: "2d73ed17184f16bc980830b3cff37f31267e9052d6e758a237ad33f379fce595"
                )
    ]
)
