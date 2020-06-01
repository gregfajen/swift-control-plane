// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/trace/v4alpha/http_tracer.proto
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

/// The tracing configuration specifies settings for an HTTP tracer provider used by Envoy.
///
/// Envoy may support other tracers in the future, but right now the HTTP tracer is the only one
/// supported.
///
/// .. attention::
///
///   Use of this message type has been deprecated in favor of direct use of
///   :ref:`Tracing.Http <envoy_api_msg_config.trace.v4alpha.Tracing.Http>`.
public struct Envoy_Config_Trace_V4alpha_Tracing {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Provides configuration for the HTTP tracer.
  public var http: Envoy_Config_Trace_V4alpha_Tracing.Http {
    get {return _http ?? Envoy_Config_Trace_V4alpha_Tracing.Http()}
    set {_http = newValue}
  }
  /// Returns true if `http` has been explicitly set.
  public var hasHTTP: Bool {return self._http != nil}
  /// Clears the value of `http`. Subsequent reads from it will return its default value.
  public mutating func clearHTTP() {self._http = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Configuration for an HTTP tracer provider used by Envoy.
  ///
  /// The configuration is defined by the
  /// :ref:`HttpConnectionManager.Tracing <envoy_api_msg_extensions.filters.network.http_connection_manager.v4alpha.HttpConnectionManager.Tracing>`
  /// :ref:`provider <envoy_api_field_extensions.filters.network.http_connection_manager.v4alpha.HttpConnectionManager.Tracing.provider>`
  /// field.
  public struct Http {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The name of the HTTP trace driver to instantiate. The name must match a
    /// supported HTTP trace driver. Built-in trace drivers:
    ///
    /// - *envoy.tracers.lightstep*
    /// - *envoy.tracers.zipkin*
    /// - *envoy.tracers.dynamic_ot*
    /// - *envoy.tracers.datadog*
    /// - *envoy.tracers.opencensus*
    /// - *envoy.tracers.xray*
    public var name: String = String()

    /// Trace driver specific configuration which depends on the driver being instantiated.
    /// See the trace drivers for examples:
    ///
    /// - :ref:`LightstepConfig <envoy_api_msg_extensions.tracers.lightstep.v4alpha.LightstepConfig>`
    /// - :ref:`ZipkinConfig <envoy_api_msg_extensions.tracers.zipkin.v4alpha.ZipkinConfig>`
    /// - :ref:`DynamicOtConfig <envoy_api_msg_extensions.tracers.dynamic_ot.v4alpha.DynamicOtConfig>`
    /// - :ref:`DatadogConfig <envoy_api_msg_extensions.tracers.datadog.v4alpha.DatadogConfig>`
    /// - :ref:`OpenCensusConfig <envoy_api_msg_extensions.tracers.opencensus.v4alpha.OpenCensusConfig>`
    /// - :ref:`AWS X-Ray <envoy_api_msg_extensions.tracers.xray.v4alpha.XRayConfig>`
    public var configType: Envoy_Config_Trace_V4alpha_Tracing.Http.OneOf_ConfigType? = nil

    public var typedConfig: SwiftProtobuf.Google_Protobuf_Any {
      get {
        if case .typedConfig(let v)? = configType {return v}
        return SwiftProtobuf.Google_Protobuf_Any()
      }
      set {configType = .typedConfig(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Trace driver specific configuration which depends on the driver being instantiated.
    /// See the trace drivers for examples:
    ///
    /// - :ref:`LightstepConfig <envoy_api_msg_extensions.tracers.lightstep.v4alpha.LightstepConfig>`
    /// - :ref:`ZipkinConfig <envoy_api_msg_extensions.tracers.zipkin.v4alpha.ZipkinConfig>`
    /// - :ref:`DynamicOtConfig <envoy_api_msg_extensions.tracers.dynamic_ot.v4alpha.DynamicOtConfig>`
    /// - :ref:`DatadogConfig <envoy_api_msg_extensions.tracers.datadog.v4alpha.DatadogConfig>`
    /// - :ref:`OpenCensusConfig <envoy_api_msg_extensions.tracers.opencensus.v4alpha.OpenCensusConfig>`
    /// - :ref:`AWS X-Ray <envoy_api_msg_extensions.tracers.xray.v4alpha.XRayConfig>`
    public enum OneOf_ConfigType: Equatable {
      case typedConfig(SwiftProtobuf.Google_Protobuf_Any)

    #if !swift(>=4.1)
      public static func ==(lhs: Envoy_Config_Trace_V4alpha_Tracing.Http.OneOf_ConfigType, rhs: Envoy_Config_Trace_V4alpha_Tracing.Http.OneOf_ConfigType) -> Bool {
        switch (lhs, rhs) {
        case (.typedConfig(let l), .typedConfig(let r)): return l == r
        }
      }
    #endif
    }

    public init() {}
  }

  public init() {}

  fileprivate var _http: Envoy_Config_Trace_V4alpha_Tracing.Http? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.trace.v4alpha"

extension Envoy_Config_Trace_V4alpha_Tracing: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Tracing"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "http"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._http)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._http {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Trace_V4alpha_Tracing, rhs: Envoy_Config_Trace_V4alpha_Tracing) -> Bool {
    if lhs._http != rhs._http {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Trace_V4alpha_Tracing.Http: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Trace_V4alpha_Tracing.protoMessageName + ".Http"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    3: .standard(proto: "typed_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 3:
        var v: SwiftProtobuf.Google_Protobuf_Any?
        if let current = self.configType {
          try decoder.handleConflictingOneOf()
          if case .typedConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configType = .typedConfig(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if case .typedConfig(let v)? = self.configType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Trace_V4alpha_Tracing.Http, rhs: Envoy_Config_Trace_V4alpha_Tracing.Http) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.configType != rhs.configType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
