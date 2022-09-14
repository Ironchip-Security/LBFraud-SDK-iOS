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
                     checksum: "dc59673c497676fcbefb858601c51f45eafc51e7a7599a37173075581d0f81fc")
    ]
)
