// swift-tools-version:4.0

import PackageDescription

let package = Package(
  name: "NetService",
  products: [
    .library(name: "Cifaddrs", targets: ["Cifaddrs"]),
    .library(name: "NetService", targets: ["NetService"]),
    ],
  dependencies: [
    .package(url: "https://github.com/Bouke/DNS.git", .branch("master")),
    .package(url: "https://github.com/IBM-Swift/BlueSocket.git", from: "1.0.0")
  ],
  targets: [
    .target(name: "Cifaddrs"),
    .target(name: "NetService", dependencies: ["Cifaddrs", "DNS", "Socket"])
  ],
  swiftLanguageVersions: [4]
)
