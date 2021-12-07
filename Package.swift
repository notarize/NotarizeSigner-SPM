// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotarizeSigner",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: "NotarizeSigner", targets: [
            "Entities",
            "UseCases",
            "Presentation",
            "NotarizeCommon",
            "NotarizeAuth",
            "NotarizeSigner"
        ])
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Entities",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities-99.0.0.xcframework.zip",
                      checksum: "c5dcf7ef9f46d3b2f96484281622326c5e075a9c44e48af49e9a868a16cbab3e"),
        .binaryTarget(name: "UseCases",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/UseCases-99.0.0.xcframework.zip",
                      checksum: "f5e4568061e95c2c6df0de5ce390bfad1d9bdf2dcea1f9971932b73f2c0f641e"),
        .binaryTarget(name: "Presentation",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Presentation-99.0.0.xcframework.zip",
                      checksum: "9472c56c25c32411a26509d477ed052aa1c83ea1afd36f452cc6f07dad8e6157"),
        .binaryTarget(name: "NotarizeCommon",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCommon-99.0.0.xcframework.zip",
                      checksum: "fc9ee49aabb40ca4fa4849f924ff45d7ede66421493e9b30a47d83e948b058f3"),
        .binaryTarget(name: "NotarizeAuth",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeAuth-99.0.0.xcframework.zip",
                      checksum: "de210d6d5942b1751b72e2ec5dc1df00d612c4db7ff7a6a5418d772c1e0a757e"),
        .binaryTarget(name: "NotarizeSigner",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeSigner-99.0.0.xcframework.zip",
                      checksum: "924cf60efdef94a8c03d1de1b6c2d5fbb299e9e5da48d03cd1e4ed0d06a28d13"),
    ]
)
