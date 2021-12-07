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
            url: "https://github.com/jeremyabannister/ErrorMessageType",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "UnwrapOrThrowOperator",
            dependencies: ["ErrorMessageType"]
        ),
        .testTarget(
            name: "UnwrapOrThrowOperator_tests",
            dependencies: ["UnwrapOrThrowOperator"]
        ),
    ]
)
