// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "GBGBridge",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "GBGBridge", targets: ["GBGBridge"])
    ],
    targets: [
        .binaryTarget(
  name: "GBGBridge",
  url: "https://github.com/gbgplc/gbg-go-ios-sdk/releases/download/ios-bridge-v1.1.0/GBGBridge.xcframework.zip",
  checksum: "275a3be7d20d5618a872834c4c4b3af9a145eaea45c8f9d20e4604bfeb58bef8"
        )
    ]
)
