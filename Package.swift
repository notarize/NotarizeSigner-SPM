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
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities-97.0.0-deps.xcframework.zip",
                      checksum: "9905e4f044cc89fc9c278a7e579c5c8e72695a467265ef40d5d6f8efc08bfd2f"),
        .binaryTarget(name: "UseCases",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/UseCases-97.0.0.xcframework.zip",
                      checksum: "ef0dd5d13689ac5f3eccbbf24cf90c96c713110f39eab0d135260072c89aef80"),
        .binaryTarget(name: "Presentation",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Presentation-97.0.0.xcframework.zip",
                      checksum: "ea04061661d5698ae6da892ed915e92250778ec9c8dc59d9693c1a03a1a3fd1f"),
        .binaryTarget(name: "NotarizeCommon",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCommon-97.0.0-deps.xcframework.zip",
                      checksum: "ee237a0f124cf1a1af7744a86f29cd350e6a7169bcbef2668762eebee60eb65a"),
        .binaryTarget(name: "NotarizeAuth",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeAuth-97.0.0.xcframework.zip",
                      checksum: "d421e4f450fff69f3e5a904439933e49026d06a0db3a1eeadbc7eca09e6d03f9"),
        .binaryTarget(name: "NotarizeSigner",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeSigner.xcframework-97.0.0-deps.zip",
                      checksum: "4e3c6a31146d41c1021dcdc46797ff21551e10f44f73304374b2f422d73ef2ad"),
    ]
)
