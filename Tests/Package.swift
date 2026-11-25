// swift-tools-version: 6.2

import PackageDescription

let package = Package(
    name: "SQLiteTests",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .executable(
            name: "t_sqlite",
            targets: ["SQLiteTests"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-lco/Errors.git", branch: "master"),
        .package(url: "https://github.com/swift-tooling/Testing.git", branch: "master"),
        .package(path: ".."),
    ],
    targets: [

        .executableTarget(
            name: "SQLiteTests",
            dependencies: [
                .product(name: "SQLite", package: "SQLite"),
                .product(name: "Errors", package: "Errors"),
                .product(name: "Testing", package: "Testing"),
            ]
        ),
    ]
)
