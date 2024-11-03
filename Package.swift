// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "OSBarcodeLib-iOS",
    platforms: [
        .iOS(.v13)  // Specify the minimum iOS version you want to support
    ],
    dependencies: [
        .package(
            url: "https://github.com/OutSystems/OSBarcodeLib-iOS.git", 
            .upToNextMajor(from: "1.0.0") // Adjust the version according to the release you want
        )
    ],
    targets: [
        .target(
            name: "OSBarcodeLib-iOS",
            dependencies: [
                .product(name: "OSBarcodeLib-iOS", package: "OSBarcodeLib-iOS")
            ],
            path: "OSBarcodeLib"  // Specify the path to your source files here
        )
    ]
)
