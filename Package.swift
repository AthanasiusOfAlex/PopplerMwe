// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "PopplerMwe",
    platforms: [ .macOS(.v12) ],
    dependencies: [
        .package(
            url: "https://github.com/AthanasiusOfAlex/Poppler.git",
            branch: "master"
        )
    ],
    targets: [
        .executableTarget(
            name: "PopplerMwe",
            dependencies: ["Poppler"]),
        .testTarget(
            name: "PopplerMweTests",
            dependencies: ["PopplerMwe"]),
    ]
)
