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
                     url: "https://nexus6.kydom.net/repository/FrameworkA/IronchipCommonsIos/IronchipCommonsIos.xcframework.zip",
                    checksum: "aa1455639d06e91a75f5754aadf9cb13dc6025aa1af2d53ecf844c2a575fea47"),
        .binaryTarget(
                     name: "LBFraudSDKiOS",
                     url: "https://nexus6.kydom.net/repository/FrameworkA/LBFraudSDKiOS/LBFraudSDKiOS.xcframework.zip",
                     checksum: "528c65775b1b668b08f225a481babeae2fa121feee710861fe8dc3de5cca0997")
    ]
)
