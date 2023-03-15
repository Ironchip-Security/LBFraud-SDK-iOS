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
                     url: "https://github.com/Ironchip-Security/Commons-IOS/releases/download/v1.2.6/IronchipCommonsIos.xcframework.zip",
                    checksum: "f704b9fa54ef5f987ab96faffc12f0a6364abb340b4914a524887e9269d2348f"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://github.com/Ironchip-Security/LBFraud-IOS/releases/download/v1.2.6/LBFraudSDKiOS.xcframework.zip",
                     checksum: "b268d6c14958d8d4b85946f1d279fd139fede6ce65603cdfcba6ee1faa303368")
    ]
)
