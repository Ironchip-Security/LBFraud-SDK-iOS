// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LBFraudSDKiOS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LBFraudSDKiOS",
            targets: ["IronchipCommonsIos", "LBFraudSDKiOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
                     name: "IronchipCommonsIos",
                     url: "https://nexus6.kydom.net/repository/XCFrameworks/IronchipCommonsIos/IronchipCommonsIos.xcframework.zip",
                    checksum: "27baa6fad9007e3d7aa120d53bf4f823fdff02957b560b99209172e40b87eda4"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://nexus6.kydom.net/repository/XCFrameworks/LBFraudSDKiOS/LBFraudSDKiOS.xcframework.zip",
                     checksum: "ca813a2fa9c6f0b638e0f7a85712fdbad7fa7bc6286cf9d1027d0a79a4460d70")
    ]
)
