// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://repo.maven.apache.org/maven2//me/haroldmartin/objective-sdk-kmmbridge/0.3.2/objective-sdk-kmmbridge-0.3.2.zip"
let remoteKotlinChecksum = "757e0ae54581b74ef64212f19763172515c8bb80a6767a8f49eacc7df729ebd9"
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