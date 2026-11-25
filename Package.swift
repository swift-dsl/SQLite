// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "SQLite",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "SQLite",
            targets: ["SQLite"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-lco/Errors.git", branch: "master"),
    ],
    targets: [
        // a thin wrapper over the system libsqlite3
        .target(
            name: "SQLite",
            dependencies: [
                .product(name: "Errors", package: "Errors"),
            ],
            linkerSettings: [
                .linkedLibrary("sqlite3"),
            ]
        ),
    ]
)
