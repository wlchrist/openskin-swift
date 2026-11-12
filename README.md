# OpenSkin Swift SDK

Swift 6 async client for the OpenSkin Platform API.

## Install

Add `https://github.com/wlchrist/openskin-swift` as a Swift Package dependency
and select version `0.2.0` or newer.

## Example

```swift
import Foundation
import OpenSkinClient

guard let apiKey = ProcessInfo.processInfo.environment["OPENSKIN_API_KEY"] else {
    fatalError("set OPENSKIN_API_KEY before running")
}
let configuration = OpenSkin.configuration(
    apiKey: apiKey
)
let account = try await PlatformV2API.getV2Principal(
    apiConfiguration: configuration
)
print(account.tier)
```

The client uses `https://api-v2.openskin.dev` by default. Create an API key in
the [OpenSkin dashboard](https://platform.openskin.dev/dashboard).

See the [API reference](https://platform.openskin.dev/docs/platform) for the
available operations. Requests and responses use typed `Codable` models.
Endpoints that require `Idempotency-Key` or `If-Match` expose those headers as
required method arguments.

Licensed under the MIT License.
