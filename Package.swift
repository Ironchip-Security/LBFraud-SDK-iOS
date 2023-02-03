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
                     url: "https://github.com/Ironchip-Security/Commons-IOS/releases/download/v1.2.5/IronchipCommonsIos.xcframework.zip",
                    checksum: "9ac371fac7a9a4cf0e5fb5f301c8726e60188703526d7641ac6b90428707edce"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://github.com/Ironchip-Security/LBFraud-IOS/releases/download/v1.2.5/LBFraudSDKiOS.xcframework.zip",
                     checksum: "4968275bff5bff58511b4b2fae49db0e37cdfd828278fdc48502047b0c870a5b")
    ]
)
