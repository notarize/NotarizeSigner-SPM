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
        .library(name: "Entities", targets: ["Entities"]),
        .library(name: "UseCases", targets: ["UseCases"]),
        .library(name: "Presentation", targets: ["Presentation"]),
        .library(name: "NotarizeCommon", targets: ["NotarizeCommon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .exact("6.2.0")),
        .package(name: "Apollo",
                 url: "https://github.com/apollographql/apollo-ios",
                 .exact("0.48.0")),
        .package(name: "Reachability",
                 url: "https://github.com/ashleymills/Reachability.swift",
                 .exact("4.3.1")),
        .package(url: "https://github.com/SnapKit/SnapKit", .exact("5.0.1")),
        .package(name: "Sentry",
                 url: "https://github.com/getsentry/sentry-cocoa",
                 .exact("4.5.0")),
        .package(name: "Segment",
                 url: "https://github.com/segmentio/analytics-ios",
                 .exact("4.1.5")),
        .package(url: "https://github.com/devicekit/DeviceKit", .exact("4.3.0")),
        .package(url: "https://github.com/onevcat/Kingfisher", .exact("5.15.8")),
        .package(name: "JWTDecode",
                 url: "https://github.com/auth0/JWTDecode.swift",
                 .exact("2.6.2")),
        .package(url: "https://github.com/Swinject/Swinject", .exact("2.7.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Entities",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities.xcframework-spm-2.zip",
                      checksum: "a205f774f2e62c135af4bfb83cfdd622c5bac94cf43a95e37a06acf7621d8509"),
        .binaryTarget(name: "UseCases",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/UseCases.xcframework-spm.zip",
                      checksum: "7a5c9accbc94c3326f227b65fd6aef6f3e1f51b04db8ac42ae75f2c61e70109a"),
        .binaryTarget(name: "Presentation",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Presentation.xcframework-spm.zip",
                      checksum: "bc0517ea392f08c25175e66f9831307aa04805bbdcb68c86966ef5c9f38ee865"),
        .binaryTarget(name: "NotarizeCommon",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/NotarizeCommon.xcframework-spm.zip",
                      checksum: "20ee64140413db15ffd87eeece681d7aebc25ad42ba109bbbf7da8f37d7f251f"),
        .target(name: "NotarizeDeps", dependencies: [
            "RxSwift",
            .product(name: "RxCocoa", package: "RxSwift"),
            .product(name: "RxRelay", package: "RxSwift"),
            "Apollo",
            .product(name: "ApolloAPI", package: "Apollo"),
            .product(name: "ApolloUtils", package: "Apollo"),
            "Reachability",
            "SnapKit",
            "Sentry",
            "Segment",
            "DeviceKit",
            "Kingfisher",
            "JWTDecode",
            "Swinject"
        ])
    ]
)
