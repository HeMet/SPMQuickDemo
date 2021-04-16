// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QuickSPMDemo",
    platforms: [.macOS(.v10_11)],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Quick/Quick.git", from: "3.1.2"),
        .package(url: "https://github.com/HeMet/Nimble.git", .branch("win-support"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "QuickSPMDemo",
            dependencies: []),
        .testTarget(
            name: "QuickSPMDemoTests",
            dependencies: ["QuickSPMDemo", "Quick", "Nimble"]),
    ]
)
