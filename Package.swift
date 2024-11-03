// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "OSBarcodeLib",
    platforms: [
        .iOS(.v11) // Set the minimum iOS version
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
            path: "Sources/OSBarcodeLib",
            exclude: ["Info.plist"], // Exclude files that aren't needed
            resources: [
                .process("Resources") // If your library includes images or other resources, include them here
            ]
        ),
        .testTarget(
            name: "OSBarcodeLibTests",
            dependencies: ["OSBarcodeLib"],
            path: "Tests/OSBarcodeLibTests" // You can add tests here if needed
        )
    ]
)
