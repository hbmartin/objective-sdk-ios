// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "file:/Users/runner/work/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/build/publish/staging/aeb28a03-0960-496c-a42a-f1103ee9a0be//Objective_SDK/objective-kmmbridge/0.1.7/objective-kmmbridge-0.1.7.zip"
let remoteKotlinChecksum = "8c7dae00cb7f5af220a2e6f2ed02a27b84f6c1330041e65fd10ee55e84f57a42"
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