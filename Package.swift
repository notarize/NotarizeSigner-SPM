// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotarizeSigner",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NotarizeSigner",
            targets: ["Entities"]),
        .library(name: "NotarizeSignerWrapper", targets: ["NotarizeSignerWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .exact("6.2.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxSwiftExt", .exact("6.1.0")),
        .package(name: "Apollo",
                 url: "https://github.com/apollographql/apollo-ios",
                 .exact("0.48.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Entities",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities.xcframework.zip",
                      checksum: "777cc23077b5bd20c7ce9c07ac515f65de052ced99eb787f7dc49a421ee769c6"),
        .target(name: "NotarizeSignerWrapper", dependencies: [
            "RxSwift",
            "RxSwiftExt",
            "Apollo"
        ])
    ]
)
