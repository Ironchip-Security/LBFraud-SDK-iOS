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
                    checksum: "8472c17158cd57e683811f7f84590fff0100d9a1f777ad675ca36eb513835faa"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://nexus6.kydom.net/repository/XCFrameworks/LBFraudSDKiOS/LBFraudSDKiOS.xcframework.zip",
                     checksum: "d1395492749e4d851b8f33ebd564b23bf5b063b53470a10a4fca766ce162a7b0")
    ]
)
