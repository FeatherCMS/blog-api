// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "blog-objects",
    platforms: [
       .macOS(.v10_15)
    ],
    products: [
        .library(name: "BlogObjects", targets: ["BlogObjects"]),
    ],
    dependencies: [
//		.package(path: "../feather-objects"),
        .package(url: "https://github.com/Rando-Coderissian/feather-objects", .branch("test-refactor-modules")),
//        .package(url: "https://github.com/feathercms/feather-objects", .branch("main")),
    ],
    targets: [
        .target(name: "BlogObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects"),
        ]),
    ]
)
