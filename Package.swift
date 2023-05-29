// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "blog-objects",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "BlogObjects", targets: ["BlogObjects"]),
    ],
    dependencies: [
       .package(url: "https://github.com/feathercms/feather-objects", .branch("main")),
    ],
    targets: [
        .target(name: "BlogObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects"),
        ]),
    ]
)
