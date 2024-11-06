// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OSBarcodeLib",
    platforms: [
        .iOS(.v13) // Set the minimum iOS version
    ],
    products: [
        .library(
            name: "OSBarcodeLib",
            targets: ["OSBarcodeLib"]
        ),
    ],
    dependencies: [
        // Add any additional dependencies if required
    ],
    targets: [
        .target(
            name: "OSBarcodeLib",
            path: "Sources/OSBarcodeLib"
        ),
        .testTarget(
            name: "OSBarcodeLibTests",
            dependencies: ["OSBarcodeLib"],
            path: "Tests/OSBarcodeLibTests" // You can add tests here if needed
        )
    ]
)
