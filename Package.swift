// swift-tools-version:5.7

///
import PackageDescription

///
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
            url: "https://github.com/jeremyabannister/ErrorMessage-module",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/jeremyabannister/InfixOperator-PipeQuestionMark",
            from: "1.0.0"
        ),
        .package(
            url: "https://github.com/jeremyabannister/PostfixOperator-PipeQuestionMark",
            from: "1.0.0"
        ),
    ],
    targets: [
        .target(
            name: "UnwrapOrThrowOperator",
            dependencies: [
                "ErrorMessage-module",
                "InfixOperator-PipeQuestionMark",
                "PostfixOperator-PipeQuestionMark"
            ]
        ),
        .testTarget(
            name: "UnwrapOrThrowOperator-tests",
            dependencies: [
                "UnwrapOrThrowOperator",
            ]
        ),
    ]
)
