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
  url: "https://github.com/gbgplc/gbg-go-ios-sdk/releases/download/ios-bridge-v1.0.0/GBGBridge.xcframework.zip",
  checksum: "aeda58c504a3f9263bdea8bafc02149ff471f3cf78318979ebc847a60f7e80af"
        )
    ]
)
