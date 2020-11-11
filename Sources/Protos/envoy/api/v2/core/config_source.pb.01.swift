// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/api/v2/core/config_source.proto
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

/// xDS API version. This is used to describe both resource and transport
/// protocol versions (in distinct configuration fields).
public enum Envoy_Api_V2_Core_ApiVersion: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// When not specified, we assume v2, to ease migration to Envoy's stable API
  /// versioning. If a client does not support v2 (e.g. due to deprecation), this
  /// is an invalid value.
  case auto // = 0

  /// Use xDS v2 API.
  case v2 // = 1

  /// Use xDS v3 API.
  case v3 // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .auto
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .auto
    case 1: self = .v2
    case 2: self = .v3
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .auto: return 0
    case .v2: return 1
    case .v3: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Api_V2_Core_ApiVersion: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Api_V2_Core_ApiVersion] = [
    .auto,
    .v2,
    .v3,
  ]
}

#endif  // swift(>=4.2)

/// API configuration source. This identifies the API type and cluster that Envoy
/// will use to fetch an xDS API.
/// [#next-free-field: 9]
public struct Envoy_Api_V2_Core_ApiConfigSource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// API type (gRPC, REST, delta gRPC)
  public var apiType: Envoy_Api_V2_Core_ApiConfigSource.ApiType = .unsupportedRestLegacy

  /// API version for xDS transport protocol. This describes the xDS gRPC/REST
  /// endpoint and version of [Delta]DiscoveryRequest/Response used on the wire.
  public var transportApiVersion: Envoy_Api_V2_Core_ApiVersion = .auto

  /// Cluster names should be used only with REST. If > 1
  /// cluster is defined, clusters will be cycled through if any kind of failure
  /// occurs.
  ///
  /// .. note::
  ///
  ///  The cluster with name ``cluster_name`` must be statically defined and its
  ///  type must not be ``EDS``.
  public var clusterNames: [String] = []

  /// Multiple gRPC services be provided for GRPC. If > 1 cluster is defined,
  /// services will be cycled through if any kind of failure occurs.
  public var grpcServices: [Envoy_Api_V2_Core_GrpcService] = []

  /// For REST APIs, the delay between successive polls.
  public var refreshDelay: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _refreshDelay ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_refreshDelay = newValue}
  }
  /// Returns true if `refreshDelay` has been explicitly set.
  public var hasRefreshDelay: Bool {return self._refreshDelay != nil}
  /// Clears the value of `refreshDelay`. Subsequent reads from it will return its default value.
  public mutating func clearRefreshDelay() {self._refreshDelay = nil}

  /// For REST APIs, the request timeout. If not set, a default value of 1s will be used.
  public var requestTimeout: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _requestTimeout ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_requestTimeout = newValue}
  }
  /// Returns true if `requestTimeout` has been explicitly set.
  public var hasRequestTimeout: Bool {return self._requestTimeout != nil}
  /// Clears the value of `requestTimeout`. Subsequent reads from it will return its default value.
  public mutating func clearRequestTimeout() {self._requestTimeout = nil}

  /// For GRPC APIs, the rate limit settings. If present, discovery requests made by Envoy will be
  /// rate limited.
  public var rateLimitSettings: Envoy_Api_V2_Core_RateLimitSettings {
    get {return _rateLimitSettings ?? Envoy_Api_V2_Core_RateLimitSettings()}
    set {_rateLimitSettings = newValue}
  }
  /// Returns true if `rateLimitSettings` has been explicitly set.
  public var hasRateLimitSettings: Bool {return self._rateLimitSettings != nil}
  /// Clears the value of `rateLimitSettings`. Subsequent reads from it will return its default value.
  public mutating func clearRateLimitSettings() {self._rateLimitSettings = nil}

  /// Skip the node identifier in subsequent discovery requests for streaming gRPC config types.
  public var setNodeOnFirstMessageOnly: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// APIs may be fetched via either REST or gRPC.
  public enum ApiType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Ideally this would be 'reserved 0' but one can't reserve the default
    /// value. Instead we throw an exception if this is ever used.
    case unsupportedRestLegacy // = 0

    /// REST-JSON v2 API. The `canonical JSON encoding
    /// <https://developers.google.com/protocol-buffers/docs/proto3#json>`_ for
    /// the v2 protos is used.
    case rest // = 1

    /// gRPC v2 API.
    case grpc // = 2

    /// Using the delta xDS gRPC service, i.e. DeltaDiscovery{Request,Response}
    /// rather than Discovery{Request,Response}. Rather than sending Envoy the entire state
    /// with every update, the xDS server only sends what has changed since the last update.
    case deltaGrpc // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unsupportedRestLegacy
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unsupportedRestLegacy
      case 1: self = .rest
      case 2: self = .grpc
      case 3: self = .deltaGrpc
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unsupportedRestLegacy: return 0
      case .rest: return 1
      case .grpc: return 2
      case .deltaGrpc: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _refreshDelay: SwiftProtobuf.Google_Protobuf_Duration? = nil
  fileprivate var _requestTimeout: SwiftProtobuf.Google_Protobuf_Duration? = nil
  fileprivate var _rateLimitSettings: Envoy_Api_V2_Core_RateLimitSettings? = nil
}

#if swift(>=4.2)

extension Envoy_Api_V2_Core_ApiConfigSource.ApiType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Api_V2_Core_ApiConfigSource.ApiType] = [
    .unsupportedRestLegacy,
    .rest,
    .grpc,
    .deltaGrpc,
  ]
}

#endif  // swift(>=4.2)

/// Aggregated Discovery Service (ADS) options. This is currently empty, but when
/// set in :ref:`ConfigSource <envoy_api_msg_core.ConfigSource>` can be used to
/// specify that ADS is to be used.
public struct Envoy_Api_V2_Core_AggregatedConfigSource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// [#not-implemented-hide:]
/// Self-referencing config source options. This is currently empty, but when
/// set in :ref:`ConfigSource <envoy_api_msg_core.ConfigSource>` can be used to
/// specify that other data can be obtained from the same server.
public struct Envoy_Api_V2_Core_SelfConfigSource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// API version for xDS transport protocol. This describes the xDS gRPC/REST
  /// endpoint and version of [Delta]DiscoveryRequest/Response used on the wire.
  public var transportApiVersion: Envoy_Api_V2_Core_ApiVersion = .auto

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Rate Limit settings to be applied for discovery requests made by Envoy.
public struct Envoy_Api_V2_Core_RateLimitSettings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Maximum number of tokens to be used for rate limiting discovery request calls. If not set, a
  /// default value of 100 will be used.
  public var maxTokens: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _maxTokens ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_maxTokens = newValue}
  }
  /// Returns true if `maxTokens` has been explicitly set.
  public var hasMaxTokens: Bool {return self._maxTokens != nil}
  /// Clears the value of `maxTokens`. Subsequent reads from it will return its default value.
  public mutating func clearMaxTokens() {self._maxTokens = nil}

  /// Rate at which tokens will be filled per second. If not set, a default fill rate of 10 tokens
  /// per second will be used.
  public var fillRate: SwiftProtobuf.Google_Protobuf_DoubleValue {
    get {return _fillRate ?? SwiftProtobuf.Google_Protobuf_DoubleValue()}
    set {_fillRate = newValue}
  }
  /// Returns true if `fillRate` has been explicitly set.
  public var hasFillRate: Bool {return self._fillRate != nil}
  /// Clears the value of `fillRate`. Subsequent reads from it will return its default value.
  public mutating func clearFillRate() {self._fillRate = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _maxTokens: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _fillRate: SwiftProtobuf.Google_Protobuf_DoubleValue? = nil
}

/// Configuration for :ref:`listeners <config_listeners>`, :ref:`clusters
/// <config_cluster_manager>`, :ref:`routes
/// <envoy_api_msg_RouteConfiguration>`, :ref:`endpoints
/// <arch_overview_service_discovery>` etc. may either be sourced from the
/// filesystem or from an xDS API source. Filesystem configs are watched with
/// inotify for updates.
/// [#next-free-field: 7]
public struct Envoy_Api_V2_Core_ConfigSource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var configSourceSpecifier: Envoy_Api_V2_Core_ConfigSource.OneOf_ConfigSourceSpecifier? = nil

  /// Path on the filesystem to source and watch for configuration updates.
  /// When sourcing configuration for :ref:`secret <envoy_api_msg_auth.Secret>`,
  /// the certificate and key files are also watched for updates.
  ///
  /// .. note::
  ///
  ///  The path to the source must exist at config load time.
  ///
  /// .. note::
  ///
  ///   Envoy will only watch the file path for *moves.* This is because in general only moves
  ///   are atomic. The same method of swapping files as is demonstrated in the
  ///   :ref:`runtime documentation <config_runtime_symbolic_link_swap>` can be used here also.
  public var path: String {
    get {
      if case .path(let v)? = configSourceSpecifier {return v}
      return String()
    }
    set {configSourceSpecifier = .path(newValue)}
  }

  /// API configuration source.
  public var apiConfigSource: Envoy_Api_V2_Core_ApiConfigSource {
    get {
      if case .apiConfigSource(let v)? = configSourceSpecifier {return v}
      return Envoy_Api_V2_Core_ApiConfigSource()
    }
    set {configSourceSpecifier = .apiConfigSource(newValue)}
  }

  /// When set, ADS will be used to fetch resources. The ADS API configuration
  /// source in the bootstrap configuration is used.
  public var ads: Envoy_Api_V2_Core_AggregatedConfigSource {
    get {
      if case .ads(let v)? = configSourceSpecifier {return v}
      return Envoy_Api_V2_Core_AggregatedConfigSource()
    }
    set {configSourceSpecifier = .ads(newValue)}
  }

  /// [#not-implemented-hide:]
  /// When set, the client will access the resources from the same server it got the
  /// ConfigSource from, although not necessarily from the same stream. This is similar to the
  /// :ref:`ads<envoy_api_field.ConfigSource.ads>` field, except that the client may use a
  /// different stream to the same server. As a result, this field can be used for things
  /// like LRS that cannot be sent on an ADS stream. It can also be used to link from (e.g.)
  /// LDS to RDS on the same server without requiring the management server to know its name
  /// or required credentials.
  /// [#next-major-version: In xDS v3, consider replacing the ads field with this one, since
  /// this field can implicitly mean to use the same stream in the case where the ConfigSource
  /// is provided via ADS and the specified data can also be obtained via ADS.]
  public var self_p: Envoy_Api_V2_Core_SelfConfigSource {
    get {
      if case .self_p(let v)? = configSourceSpecifier {return v}
      return Envoy_Api_V2_Core_SelfConfigSource()
    }
    set {configSourceSpecifier = .self_p(newValue)}
  }

  /// When this timeout is specified, Envoy will wait no longer than the specified time for first
  /// config response on this xDS subscription during the :ref:`initialization process
  /// <arch_overview_initialization>`. After reaching the timeout, Envoy will move to the next
  /// initialization phase, even if the first config is not delivered yet. The timer is activated
  /// when the xDS API subscription starts, and is disarmed on first config update or on error. 0
  /// means no timeout - Envoy will wait indefinitely for the first xDS config (unless another
  /// timeout applies). The default is 15s.
  public var initialFetchTimeout: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _initialFetchTimeout ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_initialFetchTimeout = newValue}
  }
  /// Returns true if `initialFetchTimeout` has been explicitly set.
  public var hasInitialFetchTimeout: Bool {return self._initialFetchTimeout != nil}
  /// Clears the value of `initialFetchTimeout`. Subsequent reads from it will return its default value.
  public mutating func clearInitialFetchTimeout() {self._initialFetchTimeout = nil}

  /// API version for xDS resources. This implies the type URLs that the client
  /// will request for resources and the resource type that the client will in
  /// turn expect to be delivered.
  public var resourceApiVersion: Envoy_Api_V2_Core_ApiVersion = .auto

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_ConfigSourceSpecifier: Equatable {
    /// Path on the filesystem to source and watch for configuration updates.
    /// When sourcing configuration for :ref:`secret <envoy_api_msg_auth.Secret>`,
    /// the certificate and key files are also watched for updates.
    ///
    /// .. note::
    ///
    ///  The path to the source must exist at config load time.
    ///
    /// .. note::
    ///
    ///   Envoy will only watch the file path for *moves.* This is because in general only moves
    ///   are atomic. The same method of swapping files as is demonstrated in the
    ///   :ref:`runtime documentation <config_runtime_symbolic_link_swap>` can be used here also.
    case path(String)
    /// API configuration source.
    case apiConfigSource(Envoy_Api_V2_Core_ApiConfigSource)
    /// When set, ADS will be used to fetch resources. The ADS API configuration
    /// source in the bootstrap configuration is used.
    case ads(Envoy_Api_V2_Core_AggregatedConfigSource)
    /// [#not-implemented-hide:]
    /// When set, the client will access the resources from the same server it got the
    /// ConfigSource from, although not necessarily from the same stream. This is similar to the
    /// :ref:`ads<envoy_api_field.ConfigSource.ads>` field, except that the client may use a
    /// different stream to the same server. As a result, this field can be used for things
    /// like LRS that cannot be sent on an ADS stream. It can also be used to link from (e.g.)
    /// LDS to RDS on the same server without requiring the management server to know its name
    /// or required credentials.
    /// [#next-major-version: In xDS v3, consider replacing the ads field with this one, since
    /// this field can implicitly mean to use the same stream in the case where the ConfigSource
    /// is provided via ADS and the specified data can also be obtained via ADS.]
    case self_p(Envoy_Api_V2_Core_SelfConfigSource)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Api_V2_Core_ConfigSource.OneOf_ConfigSourceSpecifier, rhs: Envoy_Api_V2_Core_ConfigSource.OneOf_ConfigSourceSpecifier) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.path, .path): return {
        guard case .path(let l) = lhs, case .path(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.apiConfigSource, .apiConfigSource): return {
        guard case .apiConfigSource(let l) = lhs, case .apiConfigSource(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.ads, .ads): return {
        guard case .ads(let l) = lhs, case .ads(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.self_p, .self_p): return {
        guard case .self_p(let l) = lhs, case .self_p(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _initialFetchTimeout: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.api.v2.core"

extension Envoy_Api_V2_Core_ApiVersion: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "AUTO"),
    1: .same(proto: "V2"),
    2: .same(proto: "V3"),
  ]
}

extension Envoy_Api_V2_Core_ApiConfigSource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ApiConfigSource"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "api_type"),
    8: .standard(proto: "transport_api_version"),
    2: .standard(proto: "cluster_names"),
    4: .standard(proto: "grpc_services"),
    3: .standard(proto: "refresh_delay"),
    5: .standard(proto: "request_timeout"),
    6: .standard(proto: "rate_limit_settings"),
    7: .standard(proto: "set_node_on_first_message_only"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.apiType) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.clusterNames) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._refreshDelay) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.grpcServices) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._requestTimeout) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._rateLimitSettings) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.setNodeOnFirstMessageOnly) }()
      case 8: try { try decoder.decodeSingularEnumField(value: &self.transportApiVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.apiType != .unsupportedRestLegacy {
      try visitor.visitSingularEnumField(value: self.apiType, fieldNumber: 1)
    }
    if !self.clusterNames.isEmpty {
      try visitor.visitRepeatedStringField(value: self.clusterNames, fieldNumber: 2)
    }
    if let v = self._refreshDelay {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.grpcServices.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.grpcServices, fieldNumber: 4)
    }
    if let v = self._requestTimeout {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._rateLimitSettings {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if self.setNodeOnFirstMessageOnly != false {
      try visitor.visitSingularBoolField(value: self.setNodeOnFirstMessageOnly, fieldNumber: 7)
    }
    if self.transportApiVersion != .auto {
      try visitor.visitSingularEnumField(value: self.transportApiVersion, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Api_V2_Core_ApiConfigSource, rhs: Envoy_Api_V2_Core_ApiConfigSource) -> Bool {
    if lhs.apiType != rhs.apiType {return false}
    if lhs.transportApiVersion != rhs.transportApiVersion {return false}
    if lhs.clusterNames != rhs.clusterNames {return false}
    if lhs.grpcServices != rhs.grpcServices {return false}
    if lhs._refreshDelay != rhs._refreshDelay {return false}
    if lhs._requestTimeout != rhs._requestTimeout {return false}
    if lhs._rateLimitSettings != rhs._rateLimitSettings {return false}
    if lhs.setNodeOnFirstMessageOnly != rhs.setNodeOnFirstMessageOnly {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Api_V2_Core_ApiConfigSource.ApiType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSUPPORTED_REST_LEGACY"),
    1: .same(proto: "REST"),
    2: .same(proto: "GRPC"),
    3: .same(proto: "DELTA_GRPC"),
  ]
}

extension Envoy_Api_V2_Core_AggregatedConfigSource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AggregatedConfigSource"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Api_V2_Core_AggregatedConfigSource, rhs: Envoy_Api_V2_Core_AggregatedConfigSource) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Api_V2_Core_SelfConfigSource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SelfConfigSource"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "transport_api_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.transportApiVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.transportApiVersion != .auto {
      try visitor.visitSingularEnumField(value: self.transportApiVersion, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Api_V2_Core_SelfConfigSource, rhs: Envoy_Api_V2_Core_SelfConfigSource) -> Bool {
    if lhs.transportApiVersion != rhs.transportApiVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Api_V2_Core_RateLimitSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RateLimitSettings"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "max_tokens"),
    2: .standard(proto: "fill_rate"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._maxTokens) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._fillRate) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._maxTokens {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._fillRate {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Api_V2_Core_RateLimitSettings, rhs: Envoy_Api_V2_Core_RateLimitSettings) -> Bool {
    if lhs._maxTokens != rhs._maxTokens {return false}
    if lhs._fillRate != rhs._fillRate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Api_V2_Core_ConfigSource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConfigSource"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
    2: .standard(proto: "api_config_source"),
    3: .same(proto: "ads"),
    5: .same(proto: "self"),
    4: .standard(proto: "initial_fetch_timeout"),
    6: .standard(proto: "resource_api_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.configSourceSpecifier != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.configSourceSpecifier = .path(v)}
      }()
      case 2: try {
        var v: Envoy_Api_V2_Core_ApiConfigSource?
        if let current = self.configSourceSpecifier {
          try decoder.handleConflictingOneOf()
          if case .apiConfigSource(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configSourceSpecifier = .apiConfigSource(v)}
      }()
      case 3: try {
        var v: Envoy_Api_V2_Core_AggregatedConfigSource?
        if let current = self.configSourceSpecifier {
          try decoder.handleConflictingOneOf()
          if case .ads(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configSourceSpecifier = .ads(v)}
      }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._initialFetchTimeout) }()
      case 5: try {
        var v: Envoy_Api_V2_Core_SelfConfigSource?
        if let current = self.configSourceSpecifier {
          try decoder.handleConflictingOneOf()
          if case .self_p(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configSourceSpecifier = .self_p(v)}
      }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.resourceApiVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.configSourceSpecifier {
    case .path?: try {
      guard case .path(let v)? = self.configSourceSpecifier else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }()
    case .apiConfigSource?: try {
      guard case .apiConfigSource(let v)? = self.configSourceSpecifier else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .ads?: try {
      guard case .ads(let v)? = self.configSourceSpecifier else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    default: break
    }
    if let v = self._initialFetchTimeout {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if case .self_p(let v)? = self.configSourceSpecifier {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if self.resourceApiVersion != .auto {
      try visitor.visitSingularEnumField(value: self.resourceApiVersion, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Api_V2_Core_ConfigSource, rhs: Envoy_Api_V2_Core_ConfigSource) -> Bool {
    if lhs.configSourceSpecifier != rhs.configSourceSpecifier {return false}
    if lhs._initialFetchTimeout != rhs._initialFetchTimeout {return false}
    if lhs.resourceApiVersion != rhs.resourceApiVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
