// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// For Binary Distribution

let package = Package(
  name: "MyLibraryA",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(
      name: "MyLibraryA",
      targets: ["MyLibraryAWrapper"]),
  ],
  dependencies: [
    .package(
      name: "MyLibraryB",
      url: "git@github.com:Ro-M/SPM-Versioning-LibraryB",
      .exact("1.0.0"))
  ],
  targets: [
    .target(
      name: "MyLibraryAWrapper",
      dependencies: [
        .product(name: "MyLibraryB", package: "MyLibraryB"),
        .target(name: "MyLibraryA")
      ]),
    .binaryTarget(
      name: "MyLibraryA",
      path: "MyLibraryA.xcframework")
  ]
)

// For Building From Source

//let package = Package(
//  name: "MyLibraryA",
//  platforms: [
//    .iOS(.v11)
//  ],
//  products: [
//    .library(
//      name: "MyLibraryA",
//      type: .dynamic,
//      targets: ["MyLibraryA"]),
//  ],
//  dependencies: [
//    .package(
//      name: "MyLibraryB",
//      url: "git@github.com:Ro-M/SPM-Versioning-LibraryB",
//      .exact("1.0.0"))
//  ],
//  targets: [
//    .target(
//      name: "MyLibraryA",
//      dependencies: [.product(name: "MyLibraryB", package: "MyLibraryB")]),
//  ]
//)
