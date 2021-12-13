// swift-tools-version:5.4

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
            from: "0.1.1"
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
