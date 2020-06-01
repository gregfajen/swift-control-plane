// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/network/local_ratelimit/v3/local_rate_limit.proto
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

public struct Envoy_Extensions_Filters_Network_LocalRatelimit_V3_LocalRateLimit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The prefix to use when emitting :ref:`statistics
  /// <config_network_filters_local_rate_limit_stats>`.
  public var statPrefix: String = String()

  /// The token bucket configuration to use for rate limiting connections that are processed by the
  /// filter's filter chain. Each incoming connection processed by the filter consumes a single
  /// token. If the token is available, the connection will be allowed. If no tokens are available,
  /// the connection will be immediately closed.
  ///
  /// .. note::
  ///   In the current implementation each filter and filter chain has an independent rate limit.
  ///
  /// .. note::
  ///   In the current implementation the token bucket's :ref:`fill_interval
  ///   <envoy_api_field_type.v3.TokenBucket.fill_interval>` must be >= 50ms to avoid too aggressive
  ///   refills.
  public var tokenBucket: Envoy_Type_V3_TokenBucket {
    get {return _tokenBucket ?? Envoy_Type_V3_TokenBucket()}
    set {_tokenBucket = newValue}
  }
  /// Returns true if `tokenBucket` has been explicitly set.
  public var hasTokenBucket: Bool {return self._tokenBucket != nil}
  /// Clears the value of `tokenBucket`. Subsequent reads from it will return its default value.
  public mutating func clearTokenBucket() {self._tokenBucket = nil}

  /// Runtime flag that controls whether the filter is enabled or not. If not specified, defaults
  /// to enabled.
  public var runtimeEnabled: Envoy_Config_Core_V3_RuntimeFeatureFlag {
    get {return _runtimeEnabled ?? Envoy_Config_Core_V3_RuntimeFeatureFlag()}
    set {_runtimeEnabled = newValue}
  }
  /// Returns true if `runtimeEnabled` has been explicitly set.
  public var hasRuntimeEnabled: Bool {return self._runtimeEnabled != nil}
  /// Clears the value of `runtimeEnabled`. Subsequent reads from it will return its default value.
  public mutating func clearRuntimeEnabled() {self._runtimeEnabled = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _tokenBucket: Envoy_Type_V3_TokenBucket? = nil
  fileprivate var _runtimeEnabled: Envoy_Config_Core_V3_RuntimeFeatureFlag? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.network.local_ratelimit.v3"

extension Envoy_Extensions_Filters_Network_LocalRatelimit_V3_LocalRateLimit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LocalRateLimit"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stat_prefix"),
    2: .standard(proto: "token_bucket"),
    3: .standard(proto: "runtime_enabled"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.statPrefix)
      case 2: try decoder.decodeSingularMessageField(value: &self._tokenBucket)
      case 3: try decoder.decodeSingularMessageField(value: &self._runtimeEnabled)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.statPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.statPrefix, fieldNumber: 1)
    }
    if let v = self._tokenBucket {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._runtimeEnabled {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Network_LocalRatelimit_V3_LocalRateLimit, rhs: Envoy_Extensions_Filters_Network_LocalRatelimit_V3_LocalRateLimit) -> Bool {
    if lhs.statPrefix != rhs.statPrefix {return false}
    if lhs._tokenBucket != rhs._tokenBucket {return false}
    if lhs._runtimeEnabled != rhs._runtimeEnabled {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
