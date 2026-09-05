# OpenSkin Swift SDK

Swift 6 async client for the OpenSkin Platform API.

## Install

Add `https://github.com/wlchrist/openskin-swift` as a Swift Package dependency
and select version `0.1.0` or newer.

## Example

```swift
import OpenSkinClient

let configuration = OpenSkin.configuration(
    apiKey: ProcessInfo.processInfo.environment["OPENSKIN_API_KEY"]!
)
let health = try await PlatformV2API.getV2Health(
    apiConfiguration: configuration
)
print(health.status)
```

The client uses `https://api-v2.openskin.dev` by default. Create an API key in
the [OpenSkin dashboard](https://platform.openskin.dev/dashboard).

Requests and responses use typed `Codable` models. Required headers such as
`Idempotency-Key` and `If-Match` are method arguments.

Licensed under the MIT License.
