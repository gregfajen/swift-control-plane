// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/ratelimit/v3/rate_limit.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

/// [#next-free-field: 10]
public struct Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The rate limit domain to use when calling the rate limit service.
  public var domain: String {
    get {return _storage._domain}
    set {_uniqueStorage()._domain = newValue}
  }

  /// Specifies the rate limit configurations to be applied with the same
  /// stage number. If not set, the default stage number is 0.
  ///
  /// .. note::
  ///
  ///  The filter supports a range of 0 - 10 inclusively for stage numbers.
  public var stage: UInt32 {
    get {return _storage._stage}
    set {_uniqueStorage()._stage = newValue}
  }

  /// The type of requests the filter should apply to. The supported
  /// types are *internal*, *external* or *both*. A request is considered internal if
  /// :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>` is set to true. If
  /// :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>` is not set or false, a
  /// request is considered external. The filter defaults to *both*, and it will apply to all request
  /// types.
  public var requestType: String {
    get {return _storage._requestType}
    set {_uniqueStorage()._requestType = newValue}
  }

  /// The timeout in milliseconds for the rate limit service RPC. If not
  /// set, this defaults to 20ms.
  public var timeout: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _storage._timeout ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_uniqueStorage()._timeout = newValue}
  }
  /// Returns true if `timeout` has been explicitly set.
  public var hasTimeout: Bool {return _storage._timeout != nil}
  /// Clears the value of `timeout`. Subsequent reads from it will return its default value.
  public mutating func clearTimeout() {_uniqueStorage()._timeout = nil}

  /// The filter's behaviour in case the rate limiting service does
  /// not respond back. When it is set to true, Envoy will not allow traffic in case of
  /// communication failure between rate limiting service and the proxy.
  public var failureModeDeny: Bool {
    get {return _storage._failureModeDeny}
    set {_uniqueStorage()._failureModeDeny = newValue}
  }

  /// Specifies whether a `RESOURCE_EXHAUSTED` gRPC code must be returned instead
  /// of the default `UNAVAILABLE` gRPC code for a rate limited gRPC call. The
  /// HTTP code will be 200 for a gRPC response.
  public var rateLimitedAsResourceExhausted: Bool {
    get {return _storage._rateLimitedAsResourceExhausted}
    set {_uniqueStorage()._rateLimitedAsResourceExhausted = newValue}
  }

  /// Configuration for an external rate limit service provider. If not
  /// specified, any calls to the rate limit service will immediately return
  /// success.
  public var rateLimitService: Envoy_Config_Ratelimit_V3_RateLimitServiceConfig {
    get {return _storage._rateLimitService ?? Envoy_Config_Ratelimit_V3_RateLimitServiceConfig()}
    set {_uniqueStorage()._rateLimitService = newValue}
  }
  /// Returns true if `rateLimitService` has been explicitly set.
  public var hasRateLimitService: Bool {return _storage._rateLimitService != nil}
  /// Clears the value of `rateLimitService`. Subsequent reads from it will return its default value.
  public mutating func clearRateLimitService() {_uniqueStorage()._rateLimitService = nil}

  /// Defines the standard version to use for X-RateLimit headers emitted by the filter:
  ///
  /// * ``X-RateLimit-Limit`` - indicates the request-quota associated to the
  ///   client in the current time-window followed by the description of the
  ///   quota policy. The values are returned by the rate limiting service in
  ///   :ref:`current_limit<envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.DescriptorStatus.current_limit>`
  ///   field. Example: `10, 10;w=1;name="per-ip", 1000;w=3600`.
  /// * ``X-RateLimit-Remaining`` - indicates the remaining requests in the
  ///   current time-window. The values are returned by the rate limiting service
  ///   in :ref:`limit_remaining<envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.DescriptorStatus.limit_remaining>`
  ///   field.
  /// * ``X-RateLimit-Reset`` - indicates the number of seconds until reset of
  ///   the current time-window. The values are returned by the rate limiting service
  ///   in :ref:`duration_until_reset<envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.DescriptorStatus.duration_until_reset>`
  ///   field.
  ///
  /// In case rate limiting policy specifies more then one time window, the values
  /// above represent the window that is closest to reaching its limit.
  ///
  /// For more information about the headers specification see selected version of
  /// the `draft RFC <https://tools.ietf.org/id/draft-polli-ratelimit-headers-03.html>`_.
  ///
  /// Disabled by default.
  public var enableXRatelimitHeaders: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit.XRateLimitHeadersRFCVersion {
    get {return _storage._enableXRatelimitHeaders}
    set {_uniqueStorage()._enableXRatelimitHeaders = newValue}
  }

  /// Disables emitting the :ref:`x-envoy-ratelimited<config_http_filters_router_x-envoy-ratelimited>` header
  /// in case of rate limiting (i.e. 429 responses).
  /// Having this header not present potentially makes the request retriable.
  public var disableXEnvoyRatelimitedHeader: Bool {
    get {return _storage._disableXEnvoyRatelimitedHeader}
    set {_uniqueStorage()._disableXEnvoyRatelimitedHeader = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Defines the version of the standard to use for X-RateLimit headers.
  public enum XRateLimitHeadersRFCVersion: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// X-RateLimit headers disabled.
    case off // = 0

    /// Use `draft RFC Version 03 <https://tools.ietf.org/id/draft-polli-ratelimit-headers-03.html>`_.
    case draftVersion03 // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .off
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .off
      case 1: self = .draftVersion03
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .off: return 0
      case .draftVersion03: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit.XRateLimitHeadersRFCVersion: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit.XRateLimitHeadersRFCVersion] = [
    .off,
    .draftVersion03,
  ]
}

#endif  // swift(>=4.2)

public struct Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies if the rate limit filter should include the virtual host rate limits.
  public var vhRateLimits: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute.VhRateLimitsOptions = .override

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum VhRateLimitsOptions: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Use the virtual host rate limits unless the route has a rate limit policy.
    case override // = 0

    /// Use the virtual host rate limits even if the route has a rate limit policy.
    case include // = 1

    /// Ignore the virtual host rate limits even if the route does not have a rate limit policy.
    case ignore // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .override
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .override
      case 1: self = .include
      case 2: self = .ignore
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .override: return 0
      case .include: return 1
      case .ignore: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute.VhRateLimitsOptions: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute.VhRateLimitsOptions] = [
    .override,
    .include,
    .ignore,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.ratelimit.v3"

extension Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RateLimit"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "domain"),
    2: .same(proto: "stage"),
    3: .standard(proto: "request_type"),
    4: .same(proto: "timeout"),
    5: .standard(proto: "failure_mode_deny"),
    6: .standard(proto: "rate_limited_as_resource_exhausted"),
    7: .standard(proto: "rate_limit_service"),
    8: .standard(proto: "enable_x_ratelimit_headers"),
    9: .standard(proto: "disable_x_envoy_ratelimited_header"),
  ]

  fileprivate class _StorageClass {
    var _domain: String = String()
    var _stage: UInt32 = 0
    var _requestType: String = String()
    var _timeout: SwiftProtobuf.Google_Protobuf_Duration? = nil
    var _failureModeDeny: Bool = false
    var _rateLimitedAsResourceExhausted: Bool = false
    var _rateLimitService: Envoy_Config_Ratelimit_V3_RateLimitServiceConfig? = nil
    var _enableXRatelimitHeaders: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit.XRateLimitHeadersRFCVersion = .off
    var _disableXEnvoyRatelimitedHeader: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _domain = source._domain
      _stage = source._stage
      _requestType = source._requestType
      _timeout = source._timeout
      _failureModeDeny = source._failureModeDeny
      _rateLimitedAsResourceExhausted = source._rateLimitedAsResourceExhausted
      _rateLimitService = source._rateLimitService
      _enableXRatelimitHeaders = source._enableXRatelimitHeaders
      _disableXEnvoyRatelimitedHeader = source._disableXEnvoyRatelimitedHeader
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._domain) }()
        case 2: try { try decoder.decodeSingularUInt32Field(value: &_storage._stage) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._requestType) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._timeout) }()
        case 5: try { try decoder.decodeSingularBoolField(value: &_storage._failureModeDeny) }()
        case 6: try { try decoder.decodeSingularBoolField(value: &_storage._rateLimitedAsResourceExhausted) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._rateLimitService) }()
        case 8: try { try decoder.decodeSingularEnumField(value: &_storage._enableXRatelimitHeaders) }()
        case 9: try { try decoder.decodeSingularBoolField(value: &_storage._disableXEnvoyRatelimitedHeader) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._domain.isEmpty {
        try visitor.visitSingularStringField(value: _storage._domain, fieldNumber: 1)
      }
      if _storage._stage != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._stage, fieldNumber: 2)
      }
      if !_storage._requestType.isEmpty {
        try visitor.visitSingularStringField(value: _storage._requestType, fieldNumber: 3)
      }
      if let v = _storage._timeout {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._failureModeDeny != false {
        try visitor.visitSingularBoolField(value: _storage._failureModeDeny, fieldNumber: 5)
      }
      if _storage._rateLimitedAsResourceExhausted != false {
        try visitor.visitSingularBoolField(value: _storage._rateLimitedAsResourceExhausted, fieldNumber: 6)
      }
      if let v = _storage._rateLimitService {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if _storage._enableXRatelimitHeaders != .off {
        try visitor.visitSingularEnumField(value: _storage._enableXRatelimitHeaders, fieldNumber: 8)
      }
      if _storage._disableXEnvoyRatelimitedHeader != false {
        try visitor.visitSingularBoolField(value: _storage._disableXEnvoyRatelimitedHeader, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit, rhs: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._domain != rhs_storage._domain {return false}
        if _storage._stage != rhs_storage._stage {return false}
        if _storage._requestType != rhs_storage._requestType {return false}
        if _storage._timeout != rhs_storage._timeout {return false}
        if _storage._failureModeDeny != rhs_storage._failureModeDeny {return false}
        if _storage._rateLimitedAsResourceExhausted != rhs_storage._rateLimitedAsResourceExhausted {return false}
        if _storage._rateLimitService != rhs_storage._rateLimitService {return false}
        if _storage._enableXRatelimitHeaders != rhs_storage._enableXRatelimitHeaders {return false}
        if _storage._disableXEnvoyRatelimitedHeader != rhs_storage._disableXEnvoyRatelimitedHeader {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit.XRateLimitHeadersRFCVersion: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OFF"),
    1: .same(proto: "DRAFT_VERSION_03"),
  ]
}

extension Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RateLimitPerRoute"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "vh_rate_limits"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.vhRateLimits) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.vhRateLimits != .override {
      try visitor.visitSingularEnumField(value: self.vhRateLimits, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute, rhs: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute) -> Bool {
    if lhs.vhRateLimits != rhs.vhRateLimits {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimitPerRoute.VhRateLimitsOptions: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OVERRIDE"),
    1: .same(proto: "INCLUDE"),
    2: .same(proto: "IGNORE"),
  ]
}
