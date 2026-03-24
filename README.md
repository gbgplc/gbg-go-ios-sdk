# GBG GO iOS SDK

GBGBridge is a lightweight iOS framework for embedding web-based GBG GO identity verification journeys inside native iOS applications. It provides a structured, type-safe messaging protocol between a `WKWebView` and your native code, enabling web content to request native device capabilities — camera capture, NFC chip reading, biometric capture — while giving you full control over how those requests are fulfilled.

## Features

- **Zero external dependencies** — uses only system frameworks (Foundation, WebKit, Combine, SwiftUI, AVFoundation)
- **Bidirectional messaging** — structured JSON protocol between native and web
- **Typed capability slots** — declare camera and document capture support with built-in busy rejection, result encoding, and capability query responses
- **Capability negotiation** — web journeys query available capabilities and permission state before use
- **Drop-in SwiftUI integration** — `BridgeWebView` handles WebView setup, script injection, and message routing
- **Extensible** — register custom capability handlers alongside typed slots

## Requirements

| Requirement  | Minimum |
|-------------|---------|
| iOS         | 15.0    |
| Swift       | 5.9     |
| Xcode       | 15.0    |
| Dependencies | None   |

## Installation

### Swift Package Manager (Recommended)

1. In Xcode, go to **File > Add Package Dependencies...**
2. Enter the package URL:
   ```
   https://github.com/gbgplc/gbg-go-ios-sdk
   ```
3. Select a version rule (e.g., **Up to Next Major Version**).
4. Add **GBGBridge** to your app target.

### Manual XCFramework

1. Download `GBGBridge.xcframework.zip` from the [latest release](https://github.com/gbgplc/gbg-go-ios-sdk/releases/latest).
2. Unzip and drag `GBGBridge.xcframework` into your Xcode project.
3. Set **Embed & Sign** in your target's Frameworks, Libraries, and Embedded Content.

## Quick Start

```swift
import GBGBridge
import SwiftUI

struct JourneyView: View {
    @StateObject private var host = BridgeHost(hostVersion: "1.0.0")

    var body: some View {
        BridgeWebView(
            url: URL(string: "https://journey.example.com")!,
            host: host
        )
        .onAppear {
            host.documentCapture.handler = { request in
                return await host.documentCapture.awaitCompletion()
            }
        }
    }
}
```

## Documentation

Full integration guides, API reference, and examples are available in the [GBG GO documentation](https://docs.gbgplc.com).

## License

See [LICENSE](LICENSE) for terms.
