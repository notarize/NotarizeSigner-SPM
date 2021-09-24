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
        .library(name: "NotarizeDeps", type: .dynamic, targets: ["NotarizeDeps"]),
        .library(name: "Entities", targets: ["Entities"])
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .exact("6.2.0")),
        .package(name: "Apollo", url: "https://github.com/apollographql/apollo-ios", .exact("0.48.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Entities",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities.xcframework-spm-2.zip",
                      checksum: "a205f774f2e62c135af4bfb83cfdd622c5bac94cf43a95e37a06acf7621d8509"),
        .target(name: "NotarizeDeps", dependencies: [
            "RxSwift",
            .product(name: "RxCocoa", package: "RxSwift"),
            .product(name: "RxRelay", package: "RxSwift"),
            "Apollo",
            .product(name: "ApolloAPI", package: "Apollo"),
            .product(name: "ApolloUtils", package: "Apollo")
        ])
    ]
)
