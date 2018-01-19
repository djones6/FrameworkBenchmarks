// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KituraNet-TechEmpower",
    products: [
        .library(
            name: "KituraNet-TechEmpower",
            targets: ["TechEmpowerKuery"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/Kitura-net.git", from: "2.0.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.0.0"),
        .package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "TechEmpowerKuery",
            dependencies: ["KituraNet", "HeliumLogger", "SwiftKueryPostgreSQL"]),
    ]
)
