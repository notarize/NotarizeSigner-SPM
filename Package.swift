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
        .library(name: "Entities", targets: ["Entities"]),
        .library(name: "Apollo", targets: ["Apollo"]),
        .library(name: "ApolloAPI", targets: ["ApolloAPI"]),
        .library(name: "ApolloUtils", targets: ["ApolloUtils"]),
        .library(name: "RxSwift", targets: ["RxSwift"]),
        .library(name: "RxSwiftExt", targets: ["RxSwiftExt"]),
        .library(name: "RxRelay", targets: ["RxRelay"]),
        .library(name: "RxCocoa", targets: ["RxCocoa"])
    ],
    dependencies: [],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "Entities",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Entities.xcframework-beta2.zip",
                      checksum: "fd77c4c56b6d8d6f92a226b66beed2990da113f2efdfaec4c129a3d63c64dcbf"),
        .binaryTarget(name: "Apollo",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/Apollo.xcframework-0.48.0.zip",
                      checksum: "bf90d76f10dcb2ebdfc837070c90c93afb9d41528cc9577f060add5a34f212ef"),
        .binaryTarget(name: "ApolloAPI",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ApolloAPI.xcframework-0.48.0.zip",
                      checksum: "9f1b70852bfbceb6b476406ff06b29340424b54dba6b739a000937d16fec2747"),
        .binaryTarget(name: "ApolloUtils",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/ApolloUtils.xcframework-0.48.0.zip",
                      checksum: "d3050a0f9ecc3b244e7a77dd371bb1756e9786e6713e1e5555d0b5dd01179d67"),
        .binaryTarget(name: "RxSwift",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwift.xcframework-6.2.0.zip",
                      checksum: "d93229c90c09d1c0c23c5a7f1281bf2373652e8fce21e7579eb9af077fc4ce45"),
        .binaryTarget(name: "RxSwiftExt",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxSwiftExt.xcframework-6.1.0.zip",
                      checksum: "6d0bd8a5e636c84d0bd07967fa3dc188a0c598db0026a2fa75b3c73e19117b06"),
        .binaryTarget(name: "RxRelay",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxRelay.xcframework-6.2.0.zip",
                      checksum: "84a7f046aba9696bf18a1022f6cff173c7678910d805833c5e92cf55c220caa0"),
        .binaryTarget(name: "RxCocoa",
                      url: "https://ios-notarize-signer-sdk.s3.us-west-1.amazonaws.com/RxCocoa.xcframework-6.2.0.zip",
                      checksum: "627004a684f15e63f8ba62bc8d414aef58368ef18b17881df375817a6fcb5150")
    ]
)
