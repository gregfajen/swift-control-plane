// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/common/ratelimit/v3/ratelimit.proto
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

/// A RateLimitDescriptor is a list of hierarchical entries that are used by the service to
/// determine the final rate limit key and overall allowed limit. Here are some examples of how
/// they might be used for the domain "envoy".
///
/// .. code-block:: cpp
///
///   ["authenticated": "false"], ["remote_address": "10.0.0.1"]
///
/// What it does: Limits all unauthenticated traffic for the IP address 10.0.0.1. The
/// configuration supplies a default limit for the *remote_address* key. If there is a desire to
/// raise the limit for 10.0.0.1 or block it entirely it can be specified directly in the
/// configuration.
///
/// .. code-block:: cpp
///
///   ["authenticated": "false"], ["path": "/foo/bar"]
///
/// What it does: Limits all unauthenticated traffic globally for a specific path (or prefix if
/// configured that way in the service).
///
/// .. code-block:: cpp
///
///   ["authenticated": "false"], ["path": "/foo/bar"], ["remote_address": "10.0.0.1"]
///
/// What it does: Limits unauthenticated traffic to a specific path for a specific IP address.
/// Like (1) we can raise/block specific IP addresses if we want with an override configuration.
///
/// .. code-block:: cpp
///
///   ["authenticated": "true"], ["client_id": "foo"]
///
/// What it does: Limits all traffic for an authenticated client "foo"
///
/// .. code-block:: cpp
///
///   ["authenticated": "true"], ["client_id": "foo"], ["path": "/foo/bar"]
///
/// What it does: Limits traffic to a specific path for an authenticated client "foo"
///
/// The idea behind the API is that (1)/(2)/(3) and (4)/(5) can be sent in 1 request if desired.
/// This enables building complex application scenarios with a generic backend.
///
/// Optionally the descriptor can contain a limit override under a "limit" key, that specifies
/// the number of requests per unit to use instead of the number configured in the
/// rate limiting service.
public struct Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Descriptor entries.
  public var entries: [Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.Entry] = []

  /// Optional rate limit override to supply to the ratelimit service.
  public var limit: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.RateLimitOverride {
    get {return _limit ?? Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.RateLimitOverride()}
    set {_limit = newValue}
  }
  /// Returns true if `limit` has been explicitly set.
  public var hasLimit: Bool {return self._limit != nil}
  /// Clears the value of `limit`. Subsequent reads from it will return its default value.
  public mutating func clearLimit() {self._limit = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Entry {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Descriptor key.
    public var key: String = String()

    /// Descriptor value.
    public var value: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Override rate limit to apply to this descriptor instead of the limit
  /// configured in the rate limit service. See :ref:`rate limit override
  /// <config_http_filters_rate_limit_rate_limit_override>` for more information.
  public struct RateLimitOverride {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The number of requests per unit of time.
    public var requestsPerUnit: UInt32 = 0

    /// The unit of time.
    public var unit: Envoy_Type_V3_RateLimitUnit = .unknown

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _limit: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.RateLimitOverride? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.common.ratelimit.v3"

extension Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RateLimitDescriptor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "entries"),
    2: .same(proto: "limit"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.entries) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._limit) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.entries.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.entries, fieldNumber: 1)
    }
    if let v = self._limit {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor, rhs: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor) -> Bool {
    if lhs.entries != rhs.entries {return false}
    if lhs._limit != rhs._limit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.Entry: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.protoMessageName + ".Entry"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
    2: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.key) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.key.isEmpty {
      try visitor.visitSingularStringField(value: self.key, fieldNumber: 1)
    }
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.Entry, rhs: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.Entry) -> Bool {
    if lhs.key != rhs.key {return false}
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.RateLimitOverride: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.protoMessageName + ".RateLimitOverride"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "requests_per_unit"),
    2: .same(proto: "unit"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.requestsPerUnit) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.unit) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.requestsPerUnit != 0 {
      try visitor.visitSingularUInt32Field(value: self.requestsPerUnit, fieldNumber: 1)
    }
    if self.unit != .unknown {
      try visitor.visitSingularEnumField(value: self.unit, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.RateLimitOverride, rhs: Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor.RateLimitOverride) -> Bool {
    if lhs.requestsPerUnit != rhs.requestsPerUnit {return false}
    if lhs.unit != rhs.unit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
