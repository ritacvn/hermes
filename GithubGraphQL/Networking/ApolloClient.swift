import Apollo
import ApolloSQLite
import Foundation

private let kGitHubBearerToken = "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"
private let kGitHubURLPath = "https://api.github.com/graphql"


private let store = ApolloStore(cache: SQLiteNormalizedCache.local)
private var sharedClient = ApolloClient(
  networkTransport: RequestChainNetworkTransport(
    interceptorProvider: DefaultInterceptorProvider(store: store),
    endpointURL: URL(string: kGitHubURLPath)!,
    additionalHeaders: ["Authorization": "Bearer \(kGitHubBearerToken)"]
  ),
  store: store
)

extension ApolloClient {
  static var shared: ApolloClient { sharedClient }
}

// MARK: - Helpers

extension NormalizedCache where Self == SQLiteNormalizedCache {
  fileprivate static var local: Self {
    return try! .init(
      fileURL: try! FileManager.default
        .url(
          for: .cachesDirectory,
          in: .userDomainMask,
          appropriateFor: nil,
          create: true
        )
        .appendingPathComponent("github.cache")
    )
  }
}
