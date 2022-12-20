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
                     url: "https://github.com/Ironchip-Security/Commons-IOS/releases/download/v1.2.4/IronchipCommonsIos.xcframework.zip",
                    checksum: "aeb5ca23cc3b9cd64b4e8fb219d638ed58006a84f2d2b41159cd081183d5ca8b"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://github.com/Ironchip-Security/LBFraud-IOS/releases/download/v1.2.4/LBFraudSDKiOS.xcframework.zip",
                     checksum: "f3fba317960c712663f25bd2272b4125690948d7fb8b75203ae538ae924fe042")
    ]
)
