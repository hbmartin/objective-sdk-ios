// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "file:/Users/runner/work/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/build/publish/staging/d169dad3-e7df-490f-8106-7f793c99d66e//Objective_SDK/objective-kmmbridge/unspecified/objective-kmmbridge-unspecified.zip"
let remoteKotlinChecksum = "d1018b20a920dee29b0959ee064efbe49a9e0776daa527452d1ec9e2586b07f1"
let packageName = "objective"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)