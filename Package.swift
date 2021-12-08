// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UnwrapOrThrowOperator",
    products: [
        .library(
            name: "UnwrapOrThrowOperator",
            targets: ["UnwrapOrThrowOperator"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/ErrorMessage",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "UnwrapOrThrowOperator",
            dependencies: ["ErrorMessage"]
        ),
        .testTarget(
            name: "UnwrapOrThrowOperator-tests",
            dependencies: ["UnwrapOrThrowOperator"]
        ),
    ]
)
