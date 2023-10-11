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
                     url: "https://github.com/Ironchip-Security/Commons-IOS/releases/download/v1.2.10/IronchipCommonsIos.xcframework.zip",
                    checksum: "edc5821544df652380740240472eb742ae0ed866f35242823371192658f2cdd0"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://github.com/Ironchip-Security/LBFraud-IOS/releases/download/v1.2.10/LBFraudSDKiOS.xcframework.zip",
                     checksum: "b913dc6191ec525423985cd63e726189792fa3199e7c19cffe1ec0482c624a25")
    ]
)
