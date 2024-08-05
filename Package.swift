// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DesignSystem",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing",
            exact: "1.18.4"
        )
    ],
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: [],
            resources: []
        ),
        .testTarget(
            name: "DesignSystemTests",
            dependencies: [
                "DesignSystem",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing")
            ]
        )
    ]
)
