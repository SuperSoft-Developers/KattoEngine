// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "KattoEngine",

    platforms: [
        .macOS(.v11)
    ],

    products: [
        .library(
            name: "KattoEngine",
            targets: ["KattoEngine"]
        ),

        .executable(
            name: "KattoEditor",
            targets: ["KattoEditor"]
        )
    ],

    dependencies: [
        // Dependências futuras
    ],

    targets: [

        .target(
            name: "KattoEngine",
            path: "Sources/Engine"
        ),

        .executableTarget(
            name: "KattoEditor",
            dependencies: [
                "KattoEngine"
            ],
            path: "Sources/Editor"
        ),

        .testTarget(
            name: "KattoEngineTests",
            dependencies: [
                "KattoEngine"
            ],
            path: "Tests"
        )
    ]
)
