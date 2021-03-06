// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/trace/v2/dynamic_ot.proto
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

/// DynamicOtConfig is used to dynamically load a tracer from a shared library
/// that implements the `OpenTracing dynamic loading API
/// <https://github.com/opentracing/opentracing-cpp>`_.
/// [#extension: envoy.tracers.dynamic_ot]
public struct Envoy_Config_Trace_V2_DynamicOtConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Dynamic library implementing the `OpenTracing API
  /// <https://github.com/opentracing/opentracing-cpp>`_.
  public var library: String = String()

  /// The configuration to use when creating a tracer from the given dynamic
  /// library.
  public var config: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _config ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_config = newValue}
  }
  /// Returns true if `config` has been explicitly set.
  public var hasConfig: Bool {return self._config != nil}
  /// Clears the value of `config`. Subsequent reads from it will return its default value.
  public mutating func clearConfig() {self._config = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _config: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.trace.v2"

extension Envoy_Config_Trace_V2_DynamicOtConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DynamicOtConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "library"),
    2: .same(proto: "config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.library) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._config) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.library.isEmpty {
      try visitor.visitSingularStringField(value: self.library, fieldNumber: 1)
    }
    if let v = self._config {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Trace_V2_DynamicOtConfig, rhs: Envoy_Config_Trace_V2_DynamicOtConfig) -> Bool {
    if lhs.library != rhs.library {return false}
    if lhs._config != rhs._config {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
