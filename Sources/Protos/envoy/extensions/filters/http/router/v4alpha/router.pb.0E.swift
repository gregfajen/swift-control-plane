// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/router/v4alpha/router.proto
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
public struct Envoy_Extensions_Filters_Http_Router_V4alpha_Router {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Whether the router generates dynamic cluster statistics. Defaults to
  /// true. Can be disabled in high performance scenarios.
  public var dynamicStats: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _dynamicStats ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_dynamicStats = newValue}
  }
  /// Returns true if `dynamicStats` has been explicitly set.
  public var hasDynamicStats: Bool {return self._dynamicStats != nil}
  /// Clears the value of `dynamicStats`. Subsequent reads from it will return its default value.
  public mutating func clearDynamicStats() {self._dynamicStats = nil}

  /// Whether to start a child span for egress routed calls. This can be
  /// useful in scenarios where other filters (auth, ratelimit, etc.) make
  /// outbound calls and have child spans rooted at the same ingress
  /// parent. Defaults to false.
  public var startChildSpan: Bool = false

  /// Configuration for HTTP upstream logs emitted by the router. Upstream logs
  /// are configured in the same way as access logs, but each log entry represents
  /// an upstream request. Presuming retries are configured, multiple upstream
  /// requests may be made for each downstream (inbound) request.
  public var upstreamLog: [Envoy_Config_Accesslog_V4alpha_AccessLog] = []

  /// Do not add any additional *x-envoy-* headers to requests or responses. This
  /// only affects the :ref:`router filter generated *x-envoy-* headers
  /// <config_http_filters_router_headers_set>`, other Envoy filters and the HTTP
  /// connection manager may continue to set *x-envoy-* headers.
  public var suppressEnvoyHeaders: Bool = false

  /// Specifies a list of HTTP headers to strictly validate. Envoy will reject a
  /// request and respond with HTTP status 400 if the request contains an invalid
  /// value for any of the headers listed in this field. Strict header checking
  /// is only supported for the following headers:
  ///
  /// Value must be a ','-delimited list (i.e. no spaces) of supported retry
  /// policy values:
  ///
  /// * :ref:`config_http_filters_router_x-envoy-retry-grpc-on`
  /// * :ref:`config_http_filters_router_x-envoy-retry-on`
  ///
  /// Value must be an integer:
  ///
  /// * :ref:`config_http_filters_router_x-envoy-max-retries`
  /// * :ref:`config_http_filters_router_x-envoy-upstream-rq-timeout-ms`
  /// * :ref:`config_http_filters_router_x-envoy-upstream-rq-per-try-timeout-ms`
  public var strictCheckHeaders: [String] = []

  /// If not set, ingress Envoy will ignore
  /// :ref:`config_http_filters_router_x-envoy-expected-rq-timeout-ms` header, populated by egress
  /// Envoy, when deriving timeout for upstream cluster.
  public var respectExpectedRqTimeout: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _dynamicStats: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.router.v4alpha"

extension Envoy_Extensions_Filters_Http_Router_V4alpha_Router: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Router"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "dynamic_stats"),
    2: .standard(proto: "start_child_span"),
    3: .standard(proto: "upstream_log"),
    4: .standard(proto: "suppress_envoy_headers"),
    5: .standard(proto: "strict_check_headers"),
    6: .standard(proto: "respect_expected_rq_timeout"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._dynamicStats)
      case 2: try decoder.decodeSingularBoolField(value: &self.startChildSpan)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.upstreamLog)
      case 4: try decoder.decodeSingularBoolField(value: &self.suppressEnvoyHeaders)
      case 5: try decoder.decodeRepeatedStringField(value: &self.strictCheckHeaders)
      case 6: try decoder.decodeSingularBoolField(value: &self.respectExpectedRqTimeout)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._dynamicStats {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.startChildSpan != false {
      try visitor.visitSingularBoolField(value: self.startChildSpan, fieldNumber: 2)
    }
    if !self.upstreamLog.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.upstreamLog, fieldNumber: 3)
    }
    if self.suppressEnvoyHeaders != false {
      try visitor.visitSingularBoolField(value: self.suppressEnvoyHeaders, fieldNumber: 4)
    }
    if !self.strictCheckHeaders.isEmpty {
      try visitor.visitRepeatedStringField(value: self.strictCheckHeaders, fieldNumber: 5)
    }
    if self.respectExpectedRqTimeout != false {
      try visitor.visitSingularBoolField(value: self.respectExpectedRqTimeout, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Router_V4alpha_Router, rhs: Envoy_Extensions_Filters_Http_Router_V4alpha_Router) -> Bool {
    if lhs._dynamicStats != rhs._dynamicStats {return false}
    if lhs.startChildSpan != rhs.startChildSpan {return false}
    if lhs.upstreamLog != rhs.upstreamLog {return false}
    if lhs.suppressEnvoyHeaders != rhs.suppressEnvoyHeaders {return false}
    if lhs.strictCheckHeaders != rhs.strictCheckHeaders {return false}
    if lhs.respectExpectedRqTimeout != rhs.respectExpectedRqTimeout {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
