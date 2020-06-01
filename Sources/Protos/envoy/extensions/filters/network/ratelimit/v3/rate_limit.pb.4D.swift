// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/network/ratelimit/v3/rate_limit.proto
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

/// [#next-free-field: 7]
public struct Envoy_Extensions_Filters_Network_Ratelimit_V3_RateLimit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The prefix to use when emitting :ref:`statistics <config_network_filters_rate_limit_stats>`.
  public var statPrefix: String = String()

  /// The rate limit domain to use in the rate limit service request.
  public var domain: String = String()

  /// The rate limit descriptor list to use in the rate limit service request.
  public var descriptors: [Envoy_Extensions_Common_Ratelimit_V3_RateLimitDescriptor] = []

  /// The timeout in milliseconds for the rate limit service RPC. If not
  /// set, this defaults to 20ms.
  public var timeout: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _timeout ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_timeout = newValue}
  }
  /// Returns true if `timeout` has been explicitly set.
  public var hasTimeout: Bool {return self._timeout != nil}
  /// Clears the value of `timeout`. Subsequent reads from it will return its default value.
  public mutating func clearTimeout() {self._timeout = nil}

  /// The filter's behaviour in case the rate limiting service does
  /// not respond back. When it is set to true, Envoy will not allow traffic in case of
  /// communication failure between rate limiting service and the proxy.
  /// Defaults to false.
  public var failureModeDeny: Bool = false

  /// Configuration for an external rate limit service provider. If not
  /// specified, any calls to the rate limit service will immediately return
  /// success.
  public var rateLimitService: Envoy_Config_Ratelimit_V3_RateLimitServiceConfig {
    get {return _rateLimitService ?? Envoy_Config_Ratelimit_V3_RateLimitServiceConfig()}
    set {_rateLimitService = newValue}
  }
  /// Returns true if `rateLimitService` has been explicitly set.
  public var hasRateLimitService: Bool {return self._rateLimitService != nil}
  /// Clears the value of `rateLimitService`. Subsequent reads from it will return its default value.
  public mutating func clearRateLimitService() {self._rateLimitService = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _timeout: SwiftProtobuf.Google_Protobuf_Duration? = nil
  fileprivate var _rateLimitService: Envoy_Config_Ratelimit_V3_RateLimitServiceConfig? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.network.ratelimit.v3"

extension Envoy_Extensions_Filters_Network_Ratelimit_V3_RateLimit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RateLimit"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stat_prefix"),
    2: .same(proto: "domain"),
    3: .same(proto: "descriptors"),
    4: .same(proto: "timeout"),
    5: .standard(proto: "failure_mode_deny"),
    6: .standard(proto: "rate_limit_service"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.statPrefix)
      case 2: try decoder.decodeSingularStringField(value: &self.domain)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.descriptors)
      case 4: try decoder.decodeSingularMessageField(value: &self._timeout)
      case 5: try decoder.decodeSingularBoolField(value: &self.failureModeDeny)
      case 6: try decoder.decodeSingularMessageField(value: &self._rateLimitService)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.statPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.statPrefix, fieldNumber: 1)
    }
    if !self.domain.isEmpty {
      try visitor.visitSingularStringField(value: self.domain, fieldNumber: 2)
    }
    if !self.descriptors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.descriptors, fieldNumber: 3)
    }
    if let v = self._timeout {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if self.failureModeDeny != false {
      try visitor.visitSingularBoolField(value: self.failureModeDeny, fieldNumber: 5)
    }
    if let v = self._rateLimitService {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Network_Ratelimit_V3_RateLimit, rhs: Envoy_Extensions_Filters_Network_Ratelimit_V3_RateLimit) -> Bool {
    if lhs.statPrefix != rhs.statPrefix {return false}
    if lhs.domain != rhs.domain {return false}
    if lhs.descriptors != rhs.descriptors {return false}
    if lhs._timeout != rhs._timeout {return false}
    if lhs.failureModeDeny != rhs.failureModeDeny {return false}
    if lhs._rateLimitService != rhs._rateLimitService {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
