// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mtlswift", 
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(name: "mtlswift",
                    targets: ["mtlswift"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            exact: "1.4.0"
        ),
        .package(
            url: "https://github.com/JohnSundell/Files",
            from: "4.2.0"
        )
    ],
    targets: [
        .executableTarget(
            name: "mtlswift",
            dependencies: [
                .product(
                    name: "ArgumentParser",
                    package: "swift-argument-parser"
                ),
                .product(
                    name: "Files",
                    package: "Files"
                )
            ]
        )
    ]
)
