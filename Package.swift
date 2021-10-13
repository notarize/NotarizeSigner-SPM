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
            "NotarizeCommon"
        ])
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Entities",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities.xcframework-97.0.0.zip",
                      checksum: "77590975848a42e030393ae349c322860bb0e72e4e161b046563740f8ec8a936"),
        .binaryTarget(name: "UseCases",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/UseCases-97.0.0.xcframework.zip",
                      checksum: "ddcd94a55b28552859a316bb559bfb63b873f95975caa5afdfe48ff9968cfc6d"),
        .binaryTarget(name: "Presentation",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Presentation-97.0.0.xcframework.zip",
                      checksum: "207792da749ef1ba53775dfbbe33d4534ca2d1e5a5c8296200b7a4fed543c71a"),
        .binaryTarget(name: "NotarizeCommon",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCommon-97.0.0.xcframework.zip",
                      checksum: "7b2af4cffd4110bb098d0732cf5c250217fd60c9c59cbba34142679b0e7f2b86"),
    ]
)
