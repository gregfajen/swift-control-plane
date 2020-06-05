// DO NOT EDIT.
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

/// [#next-free-field: 8]
public struct Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The rate limit domain to use when calling the rate limit service.
  public var domain: String = String()

  /// Specifies the rate limit configurations to be applied with the same
  /// stage number. If not set, the default stage number is 0.
  ///
  /// .. note::
  ///
  ///  The filter supports a range of 0 - 10 inclusively for stage numbers.
  public var stage: UInt32 = 0

  /// The type of requests the filter should apply to. The supported
  /// types are *internal*, *external* or *both*. A request is considered internal if
  /// :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>` is set to true. If
  /// :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>` is not set or false, a
  /// request is considered external. The filter defaults to *both*, and it will apply to all request
  /// types.
  public var requestType: String = String()

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

  /// Specifies whether a `RESOURCE_EXHAUSTED` gRPC code must be returned instead
  /// of the default `UNAVAILABLE` gRPC code for a rate limited gRPC call. The
  /// HTTP code will be 200 for a gRPC response.
  public var rateLimitedAsResourceExhausted: Bool = false

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
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.domain)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.stage)
      case 3: try decoder.decodeSingularStringField(value: &self.requestType)
      case 4: try decoder.decodeSingularMessageField(value: &self._timeout)
      case 5: try decoder.decodeSingularBoolField(value: &self.failureModeDeny)
      case 6: try decoder.decodeSingularBoolField(value: &self.rateLimitedAsResourceExhausted)
      case 7: try decoder.decodeSingularMessageField(value: &self._rateLimitService)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.domain.isEmpty {
      try visitor.visitSingularStringField(value: self.domain, fieldNumber: 1)
    }
    if self.stage != 0 {
      try visitor.visitSingularUInt32Field(value: self.stage, fieldNumber: 2)
    }
    if !self.requestType.isEmpty {
      try visitor.visitSingularStringField(value: self.requestType, fieldNumber: 3)
    }
    if let v = self._timeout {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if self.failureModeDeny != false {
      try visitor.visitSingularBoolField(value: self.failureModeDeny, fieldNumber: 5)
    }
    if self.rateLimitedAsResourceExhausted != false {
      try visitor.visitSingularBoolField(value: self.rateLimitedAsResourceExhausted, fieldNumber: 6)
    }
    if let v = self._rateLimitService {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit, rhs: Envoy_Extensions_Filters_Http_Ratelimit_V3_RateLimit) -> Bool {
    if lhs.domain != rhs.domain {return false}
    if lhs.stage != rhs.stage {return false}
    if lhs.requestType != rhs.requestType {return false}
    if lhs._timeout != rhs._timeout {return false}
    if lhs.failureModeDeny != rhs.failureModeDeny {return false}
    if lhs.rateLimitedAsResourceExhausted != rhs.rateLimitedAsResourceExhausted {return false}
    if lhs._rateLimitService != rhs._rateLimitService {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}