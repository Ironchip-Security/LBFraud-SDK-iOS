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
                     url: "https://github.com/Ironchip-Security/Commons-IOS/releases/download/v1.2.7/IronchipCommonsIos.xcframework.zip",
                    checksum: "abc891d467cf12fa344ca773b86c7e073a866286d39af6936f92194bd3f81115"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://github.com/Ironchip-Security/LBFraud-IOS/releases/download/v1.2.7/LBFraudSDKiOS.xcframework.zip",
                     checksum: "b409d51467c0ded62906396bfdf386734461f71959dfbb624ea772c5759c1aba")
    ]
)
