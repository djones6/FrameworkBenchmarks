// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Kitura-TechEmpower",
    dependencies: [
//        .package(url: "https://github.com/IBM-Swift/CEpoll.git", .branch("pipeline")),
//        .package(url: "https://github.com/IBM-Swift/Kitura-net.git", .branch("pipeline2")),
        .package(url: "https://github.com/IBM-Swift/Kitura.git", from: "2.0.0"),
        .package(url: "https://github.com/IBM-Swift/HeliumLogger.git", from: "1.7.0"),
        .package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL", from: "0.0.0"),
        .package(url: "https://github.com/IBM-Swift/Kitura-StencilTemplateEngine.git", from: "1.8.0"),
        .package(url: "https://github.com/IBM-Swift/Kitura-MustacheTemplateEngine.git", from: "1.7.0"),
    ],
    targets: [
        .target(
            name: "TechEmpowerKuery",
            dependencies: ["Kitura", "HeliumLogger", "SwiftKueryPostgreSQL", "KituraStencil"]),
        .target(
            name: "TechEmpowerKueryMustache",
            dependencies: ["Kitura", "HeliumLogger", "SwiftKueryPostgreSQL", "KituraMustache"]),
    ]
)
