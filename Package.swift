// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://repo.maven.apache.org/maven2//Objective_SDK/objective-kmmbridge/0.3.1/objective-kmmbridge-0.3.1.zip"
let remoteKotlinChecksum = "9fa89ee89cb8acac3ab4afd9e40762380e8084897dd2c7c0ab14ff803315a852"
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