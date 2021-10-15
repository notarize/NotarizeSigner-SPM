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
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities-97.0.0-van.xcframework.zip",
                      checksum: "81815ebddce8f282dbbea83760eba46a1465d13cb82b15deadb26f540420c775"),
        .binaryTarget(name: "UseCases",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/UseCases-97.0.0.xcframework.zip",
                      checksum: "ef0dd5d13689ac5f3eccbbf24cf90c96c713110f39eab0d135260072c89aef80"),
        .binaryTarget(name: "Presentation",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Presentation-97.0.0.xcframework.zip",
                      checksum: "ea04061661d5698ae6da892ed915e92250778ec9c8dc59d9693c1a03a1a3fd1f"),
        .binaryTarget(name: "NotarizeCommon",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCommon-97.0.0.xcframework.zip",
                      checksum: "496b59d18b898c0262e06c0390cb4607ad2e0fa1965ec9f3614ecb8c989c7f57"),
        .binaryTarget(name: "NotarizeAuth",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeAuth-97.0.0.xcframework.zip",
                      checksum: "e31b5e6beb9a97b5cd8fe95c86bbe1c085663e0a455dcafb11ef0bc87fdbdd99"),
        .binaryTarget(name: "NotarizeSigner",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeSigner-97.0.0.xcframework.zip",
                      checksum: "869fd798ca7cd4c6e53eea4fc94e589996c659e6abf6a4b69349817afa68c964"),
    ]
)
