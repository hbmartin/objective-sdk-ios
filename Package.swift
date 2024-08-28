// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "file:/Users/runner/work/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/objective-sdk-kotlin-multiplatform/build/publish/staging/f0a1bc72-01eb-4ad8-9cd0-c2a930c53aeb//Objective_SDK/objective-kmmbridge/0.3.0/objective-kmmbridge-0.3.0.zip"
let remoteKotlinChecksum = "59a64d05b64e7df1e0caae1abcb7f151210ffcc9ce2c1ff08eac07445e7f911c"
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