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
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities-98.0.0.xcframework.zip",
                      checksum: "1900237b4f261844523bc2bfc54a72f567ac4e05a3c34c7458f797e29f8477a4"),
        .binaryTarget(name: "UseCases",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/UseCases-98.0.0.xcframework.zip",
                      checksum: "a0107a0559ed0052e6c4adcff893a6041b41ed5fd1f979b2b3d5e4d8236cfa7b"),
        .binaryTarget(name: "Presentation",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Presentation-98.0.0.xcframework.zip",
                      checksum: "388c224968ab55e11e77fc9cd44a1538f8c0f93e793eef9b42510987474b1abb"),
        .binaryTarget(name: "NotarizeCommon",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCommon-98.0.0.xcframework.zip",
                      checksum: "83fa1dc7d2d1e49f9a53b355578089d77d627fd6d5f037ad8cbbfd1a3c7a1830"),
        .binaryTarget(name: "NotarizeAuth",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeAuth-98.0.0.xcframework.zip",
                      checksum: "6dd6bdfb60d91e43bb265940737e757ae4e2ed3741edf44e2007610ebc952527"),
        .binaryTarget(name: "NotarizeSigner",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeSigner-98.0.0.xcframework.zip",
                      checksum: "7f798784ee48652334075c580a84ce49dfd8efd4ec1027ec766bf725c2b89546"),
    ]
)
