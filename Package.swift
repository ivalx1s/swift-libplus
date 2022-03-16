// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GalenIT_CoreSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
//        .library(
//            name: "GalenitCoreUtils-Static",
//            type: .static,
//            targets: ["CoreUtils"]
//        ),
        .library(
            name: "GalenitCoreUtilsDynamic",
            type: .dynamic,
            targets: ["CoreUtils"]
        ),
    ],
    targets: [
        .target(
            name: "CoreUtils",
            path: "Sources",
            exclude: [
                "PhoneUtils/PhoneNumberKit/Resources/Metadata.md",
                "PhoneUtils/PhoneNumberKit/Resources/PhoneNumberMetadata.xml"
            ],
            resources: [.copy("PhoneUtils/PhoneNumberKit/Resources/PhoneNumberMetadata.json")],
            linkerSettings: [
                .linkedFramework("CoreTelephony")
            ]
        ),
        .testTarget(
            name: "CoreUtilsTests",
            dependencies: ["CoreUtils"],
            path: "Tests"
        ),
    ]
)
