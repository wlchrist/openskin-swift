import Foundation

public enum OpenSkin {
    public static let productionBaseURL = "https://api-v2.openskin.dev"
    public static let v2TestBaseURL = "https://api-v2-v2-test.up.railway.app"

    /// Creates an isolated configuration for one OpenSkin Platform client.
    public static func configuration(
        apiKey: String,
        baseURL: String = productionBaseURL
    ) -> OpenSkinClientAPIConfiguration {
        OpenSkinClientAPIConfiguration(
            basePath: baseURL,
            customHeaders: ["X-API-Key": apiKey]
        )
    }
}
