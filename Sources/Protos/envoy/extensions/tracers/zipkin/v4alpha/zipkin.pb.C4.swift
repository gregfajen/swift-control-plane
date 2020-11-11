// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/tracers/zipkin/v4alpha/zipkin.proto
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

/// Configuration for the Zipkin tracer.
/// [#extension: envoy.tracers.zipkin]
/// [#next-free-field: 6]
public struct Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The cluster manager cluster that hosts the Zipkin collectors. Note that the
  /// Zipkin cluster must be defined in the :ref:`Bootstrap static cluster
  /// resources <envoy_api_field_config.bootstrap.v4alpha.Bootstrap.StaticResources.clusters>`.
  public var collectorCluster: String = String()

  /// The API endpoint of the Zipkin service where the spans will be sent. When
  /// using a standard Zipkin installation, the API endpoint is typically
  /// /api/v1/spans, which is the default value.
  public var collectorEndpoint: String = String()

  /// Determines whether a 128bit trace id will be used when creating a new
  /// trace instance. The default value is false, which will result in a 64 bit trace id being used.
  public var traceID128Bit: Bool = false

  /// Determines whether client and server spans will share the same span context.
  /// The default value is true.
  public var sharedSpanContext: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _sharedSpanContext ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_sharedSpanContext = newValue}
  }
  /// Returns true if `sharedSpanContext` has been explicitly set.
  public var hasSharedSpanContext: Bool {return self._sharedSpanContext != nil}
  /// Clears the value of `sharedSpanContext`. Subsequent reads from it will return its default value.
  public mutating func clearSharedSpanContext() {self._sharedSpanContext = nil}

  /// Determines the selected collector endpoint version. By default, the ``HTTP_JSON_V1`` will be
  /// used.
  public var collectorEndpointVersion: Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig.CollectorEndpointVersion = .deprecatedAndUnavailableDoNotUse

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Available Zipkin collector endpoint versions.
  public enum CollectorEndpointVersion: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Zipkin API v1, JSON over HTTP.
    /// [#comment: The default implementation of Zipkin client before this field is added was only v1
    /// and the way user configure this was by not explicitly specifying the version. Consequently,
    /// before this is added, the corresponding Zipkin collector expected to receive v1 payload.
    /// Hence the motivation of adding HTTP_JSON_V1 as the default is to avoid a breaking change when
    /// user upgrading Envoy with this change. Furthermore, we also immediately deprecate this field,
    /// since in Zipkin realm this v1 version is considered to be not preferable anymore.]
    case deprecatedAndUnavailableDoNotUse // = 0

    /// Zipkin API v2, JSON over HTTP.
    case httpJson // = 1

    /// Zipkin API v2, protobuf over HTTP.
    case httpProto // = 2

    /// [#not-implemented-hide:]
    case grpc // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .deprecatedAndUnavailableDoNotUse
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .deprecatedAndUnavailableDoNotUse
      case 1: self = .httpJson
      case 2: self = .httpProto
      case 3: self = .grpc
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .deprecatedAndUnavailableDoNotUse: return 0
      case .httpJson: return 1
      case .httpProto: return 2
      case .grpc: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _sharedSpanContext: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
}

#if swift(>=4.2)

extension Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig.CollectorEndpointVersion: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig.CollectorEndpointVersion] = [
    .deprecatedAndUnavailableDoNotUse,
    .httpJson,
    .httpProto,
    .grpc,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.tracers.zipkin.v4alpha"

extension Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ZipkinConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "collector_cluster"),
    2: .standard(proto: "collector_endpoint"),
    3: .standard(proto: "trace_id_128bit"),
    4: .standard(proto: "shared_span_context"),
    5: .standard(proto: "collector_endpoint_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.collectorCluster) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.collectorEndpoint) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.traceID128Bit) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._sharedSpanContext) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.collectorEndpointVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.collectorCluster.isEmpty {
      try visitor.visitSingularStringField(value: self.collectorCluster, fieldNumber: 1)
    }
    if !self.collectorEndpoint.isEmpty {
      try visitor.visitSingularStringField(value: self.collectorEndpoint, fieldNumber: 2)
    }
    if self.traceID128Bit != false {
      try visitor.visitSingularBoolField(value: self.traceID128Bit, fieldNumber: 3)
    }
    if let v = self._sharedSpanContext {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if self.collectorEndpointVersion != .deprecatedAndUnavailableDoNotUse {
      try visitor.visitSingularEnumField(value: self.collectorEndpointVersion, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig, rhs: Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig) -> Bool {
    if lhs.collectorCluster != rhs.collectorCluster {return false}
    if lhs.collectorEndpoint != rhs.collectorEndpoint {return false}
    if lhs.traceID128Bit != rhs.traceID128Bit {return false}
    if lhs._sharedSpanContext != rhs._sharedSpanContext {return false}
    if lhs.collectorEndpointVersion != rhs.collectorEndpointVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Tracers_Zipkin_V4alpha_ZipkinConfig.CollectorEndpointVersion: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE"),
    1: .same(proto: "HTTP_JSON"),
    2: .same(proto: "HTTP_PROTO"),
    3: .same(proto: "GRPC"),
  ]
}
