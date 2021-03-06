// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/api/auth.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// `Authentication` defines the authentication configuration for an API.
///
/// Example for an API targeted for external use:
///
///     name: calendar.googleapis.com
///     authentication:
///       providers:
///       - id: google_calendar_auth
///         jwks_uri: https://www.googleapis.com/oauth2/v1/certs
///         issuer: https://securetoken.google.com
///       rules:
///       - selector: "*"
///         requirements:
///           provider_id: google_calendar_auth
public struct Google_Api_Authentication {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of authentication rules that apply to individual API methods.
  ///
  /// **NOTE:** All service configuration rules follow "last one wins" order.
  public var rules: [Google_Api_AuthenticationRule] = []

  /// Defines a set of authentication providers that a service supports.
  public var providers: [Google_Api_AuthProvider] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Authentication rules for the service.
///
/// By default, if a method has any authentication requirements, every request
/// must include a valid credential matching one of the requirements.
/// It's an error to include more than one kind of credential in a single
/// request.
///
/// If a method doesn't have any auth requirements, request credentials will be
/// ignored.
public struct Google_Api_AuthenticationRule {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Selects the methods to which this rule applies.
  ///
  /// Refer to [selector][google.api.DocumentationRule.selector] for syntax details.
  public var selector: String = String()

  /// The requirements for OAuth credentials.
  public var oauth: Google_Api_OAuthRequirements {
    get {return _oauth ?? Google_Api_OAuthRequirements()}
    set {_oauth = newValue}
  }
  /// Returns true if `oauth` has been explicitly set.
  public var hasOauth: Bool {return self._oauth != nil}
  /// Clears the value of `oauth`. Subsequent reads from it will return its default value.
  public mutating func clearOauth() {self._oauth = nil}

  /// If true, the service accepts API keys without any other credential.
  /// This flag only applies to HTTP and gRPC requests.
  public var allowWithoutCredential: Bool = false

  /// Requirements for additional authentication providers.
  public var requirements: [Google_Api_AuthRequirement] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _oauth: Google_Api_OAuthRequirements? = nil
}

/// Specifies a location to extract JWT from an API request.
public struct Google_Api_JwtLocation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var `in`: Google_Api_JwtLocation.OneOf_In? = nil

  /// Specifies HTTP header name to extract JWT token.
  public var header: String {
    get {
      if case .header(let v)? = `in` {return v}
      return String()
    }
    set {`in` = .header(newValue)}
  }

  /// Specifies URL query parameter name to extract JWT token.
  public var query: String {
    get {
      if case .query(let v)? = `in` {return v}
      return String()
    }
    set {`in` = .query(newValue)}
  }

  /// The value prefix. The value format is "value_prefix{token}"
  /// Only applies to "in" header type. Must be empty for "in" query type.
  /// If not empty, the header value has to match (case sensitive) this prefix.
  /// If not matched, JWT will not be extracted. If matched, JWT will be
  /// extracted after the prefix is removed.
  ///
  /// For example, for "Authorization: Bearer {JWT}",
  /// value_prefix="Bearer " with a space at the end.
  public var valuePrefix: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_In: Equatable {
    /// Specifies HTTP header name to extract JWT token.
    case header(String)
    /// Specifies URL query parameter name to extract JWT token.
    case query(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Api_JwtLocation.OneOf_In, rhs: Google_Api_JwtLocation.OneOf_In) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.header, .header): return {
        guard case .header(let l) = lhs, case .header(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.query, .query): return {
        guard case .query(let l) = lhs, case .query(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Configuration for an authentication provider, including support for
/// [JSON Web Token
/// (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
public struct Google_Api_AuthProvider {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The unique identifier of the auth provider. It will be referred to by
  /// `AuthRequirement.provider_id`.
  ///
  /// Example: "bookstore_auth".
  public var id: String = String()

  /// Identifies the principal that issued the JWT. See
  /// https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.1
  /// Usually a URL or an email address.
  ///
  /// Example: https://securetoken.google.com
  /// Example: 1234567-compute@developer.gserviceaccount.com
  public var issuer: String = String()

  /// URL of the provider's public key set to validate signature of the JWT. See
  /// [OpenID
  /// Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html#ProviderMetadata).
  /// Optional if the key set document:
  ///  - can be retrieved from
  ///    [OpenID
  ///    Discovery](https://openid.net/specs/openid-connect-discovery-1_0.html of
  ///    the issuer.
  ///  - can be inferred from the email domain of the issuer (e.g. a Google
  ///  service account).
  ///
  /// Example: https://www.googleapis.com/oauth2/v1/certs
  public var jwksUri: String = String()

  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, JWTs with audiences:
  ///   - "https://[service.name]/[google.protobuf.Api.name]"
  ///   - "https://[service.name]/"
  /// will be accepted.
  /// For example, if no audiences are in the setting, LibraryService API will
  /// accept JWTs with the following audiences:
  ///   -
  ///   https://library-example.googleapis.com/google.example.library.v1.LibraryService
  ///   - https://library-example.googleapis.com/
  ///
  /// Example:
  ///
  ///     audiences: bookstore_android.apps.googleusercontent.com,
  ///                bookstore_web.apps.googleusercontent.com
  public var audiences: String = String()

  /// Redirect URL if JWT token is required but not present or is expired.
  /// Implement authorizationUrl of securityDefinitions in OpenAPI spec.
  public var authorizationURL: String = String()

  /// Defines the locations to extract the JWT.
  ///
  /// JWT locations can be either from HTTP headers or URL query parameters.
  /// The rule is that the first match wins. The checking order is: checking
  /// all headers first, then URL query parameters.
  ///
  /// If not specified,  default to use following 3 locations:
  ///    1) Authorization: Bearer
  ///    2) x-goog-iap-jwt-assertion
  ///    3) access_token query parameter
  ///
  /// Default locations can be specified as followings:
  ///    jwt_locations:
  ///    - header: Authorization
  ///      value_prefix: "Bearer "
  ///    - header: x-goog-iap-jwt-assertion
  ///    - query: access_token
  public var jwtLocations: [Google_Api_JwtLocation] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// OAuth scopes are a way to define data and permissions on data. For example,
/// there are scopes defined for "Read-only access to Google Calendar" and
/// "Access to Cloud Platform". Users can consent to a scope for an application,
/// giving it permission to access that data on their behalf.
///
/// OAuth scope specifications should be fairly coarse grained; a user will need
/// to see and understand the text description of what your scope means.
///
/// In most cases: use one or at most two OAuth scopes for an entire family of
/// products. If your product has multiple APIs, you should probably be sharing
/// the OAuth scope across all of those APIs.
///
/// When you need finer grained OAuth consent screens: talk with your product
/// management about how developers will use them in practice.
///
/// Please note that even though each of the canonical scopes is enough for a
/// request to be accepted and passed to the backend, a request can still fail
/// due to the backend requiring additional scopes or permissions.
public struct Google_Api_OAuthRequirements {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of publicly documented OAuth scopes that are allowed access. An
  /// OAuth token containing any of these scopes will be accepted.
  ///
  /// Example:
  ///
  ///      canonical_scopes: https://www.googleapis.com/auth/calendar,
  ///                        https://www.googleapis.com/auth/calendar.read
  public var canonicalScopes: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// User-defined authentication requirements, including support for
/// [JSON Web Token
/// (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
public struct Google_Api_AuthRequirement {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// [id][google.api.AuthProvider.id] from authentication provider.
  ///
  /// Example:
  ///
  ///     provider_id: bookstore_auth
  public var providerID: String = String()

  /// NOTE: This will be deprecated soon, once AuthProvider.audiences is
  /// implemented and accepted in all the runtime components.
  ///
  /// The list of JWT
  /// [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3).
  /// that are allowed to access. A JWT containing any of these audiences will
  /// be accepted. When this setting is absent, only JWTs with audience
  /// "https://[Service_name][google.api.Service.name]/[API_name][google.protobuf.Api.name]"
  /// will be accepted. For example, if no audiences are in the setting,
  /// LibraryService API will only accept JWTs with the following audience
  /// "https://library-example.googleapis.com/google.example.library.v1.LibraryService".
  ///
  /// Example:
  ///
  ///     audiences: bookstore_android.apps.googleusercontent.com,
  ///                bookstore_web.apps.googleusercontent.com
  public var audiences: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.api"

extension Google_Api_Authentication: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Authentication"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .same(proto: "rules"),
    4: .same(proto: "providers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.rules) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.providers) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.rules.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.rules, fieldNumber: 3)
    }
    if !self.providers.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.providers, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_Authentication, rhs: Google_Api_Authentication) -> Bool {
    if lhs.rules != rhs.rules {return false}
    if lhs.providers != rhs.providers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_AuthenticationRule: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuthenticationRule"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "selector"),
    2: .same(proto: "oauth"),
    5: .standard(proto: "allow_without_credential"),
    7: .same(proto: "requirements"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.selector) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._oauth) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.allowWithoutCredential) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.requirements) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.selector.isEmpty {
      try visitor.visitSingularStringField(value: self.selector, fieldNumber: 1)
    }
    if let v = self._oauth {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.allowWithoutCredential != false {
      try visitor.visitSingularBoolField(value: self.allowWithoutCredential, fieldNumber: 5)
    }
    if !self.requirements.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.requirements, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_AuthenticationRule, rhs: Google_Api_AuthenticationRule) -> Bool {
    if lhs.selector != rhs.selector {return false}
    if lhs._oauth != rhs._oauth {return false}
    if lhs.allowWithoutCredential != rhs.allowWithoutCredential {return false}
    if lhs.requirements != rhs.requirements {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_JwtLocation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".JwtLocation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "header"),
    2: .same(proto: "query"),
    3: .standard(proto: "value_prefix"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.`in` != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.`in` = .header(v)}
      }()
      case 2: try {
        if self.`in` != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.`in` = .query(v)}
      }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.valuePrefix) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.`in` {
    case .header?: try {
      guard case .header(let v)? = self.`in` else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }()
    case .query?: try {
      guard case .query(let v)? = self.`in` else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    if !self.valuePrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.valuePrefix, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_JwtLocation, rhs: Google_Api_JwtLocation) -> Bool {
    if lhs.`in` != rhs.`in` {return false}
    if lhs.valuePrefix != rhs.valuePrefix {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_AuthProvider: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuthProvider"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .same(proto: "issuer"),
    3: .standard(proto: "jwks_uri"),
    4: .same(proto: "audiences"),
    5: .standard(proto: "authorization_url"),
    6: .standard(proto: "jwt_locations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.issuer) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.jwksUri) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.audiences) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.authorizationURL) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.jwtLocations) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 1)
    }
    if !self.issuer.isEmpty {
      try visitor.visitSingularStringField(value: self.issuer, fieldNumber: 2)
    }
    if !self.jwksUri.isEmpty {
      try visitor.visitSingularStringField(value: self.jwksUri, fieldNumber: 3)
    }
    if !self.audiences.isEmpty {
      try visitor.visitSingularStringField(value: self.audiences, fieldNumber: 4)
    }
    if !self.authorizationURL.isEmpty {
      try visitor.visitSingularStringField(value: self.authorizationURL, fieldNumber: 5)
    }
    if !self.jwtLocations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.jwtLocations, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_AuthProvider, rhs: Google_Api_AuthProvider) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs.issuer != rhs.issuer {return false}
    if lhs.jwksUri != rhs.jwksUri {return false}
    if lhs.audiences != rhs.audiences {return false}
    if lhs.authorizationURL != rhs.authorizationURL {return false}
    if lhs.jwtLocations != rhs.jwtLocations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_OAuthRequirements: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OAuthRequirements"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "canonical_scopes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.canonicalScopes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.canonicalScopes.isEmpty {
      try visitor.visitSingularStringField(value: self.canonicalScopes, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_OAuthRequirements, rhs: Google_Api_OAuthRequirements) -> Bool {
    if lhs.canonicalScopes != rhs.canonicalScopes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Api_AuthRequirement: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AuthRequirement"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "provider_id"),
    2: .same(proto: "audiences"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.providerID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.audiences) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.providerID.isEmpty {
      try visitor.visitSingularStringField(value: self.providerID, fieldNumber: 1)
    }
    if !self.audiences.isEmpty {
      try visitor.visitSingularStringField(value: self.audiences, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Api_AuthRequirement, rhs: Google_Api_AuthRequirement) -> Bool {
    if lhs.providerID != rhs.providerID {return false}
    if lhs.audiences != rhs.audiences {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
