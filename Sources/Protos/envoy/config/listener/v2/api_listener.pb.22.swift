// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/listener/v2/api_listener.proto
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

/// Describes a type of API listener, which is used in non-proxy clients. The type of API
/// exposed to the non-proxy application depends on the type of API listener.
public struct Envoy_Config_Listener_V2_ApiListener {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The type in this field determines the type of API listener. At present, the following
  /// types are supported:
  /// envoy.config.filter.network.http_connection_manager.v2.HttpConnectionManager (HTTP)
  /// [#next-major-version: In the v3 API, replace this Any field with a oneof containing the
  /// specific config message for each type of API listener. We could not do this in v2 because
  /// it would have caused circular dependencies for go protos: lds.proto depends on this file,
  /// and http_connection_manager.proto depends on rds.proto, which is in the same directory as
  /// lds.proto, so lds.proto cannot depend on this file.]
  public var apiListener: SwiftProtobuf.Google_Protobuf_Any {
    get {return _apiListener ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_apiListener = newValue}
  }
  /// Returns true if `apiListener` has been explicitly set.
  public var hasApiListener: Bool {return self._apiListener != nil}
  /// Clears the value of `apiListener`. Subsequent reads from it will return its default value.
  public mutating func clearApiListener() {self._apiListener = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _apiListener: SwiftProtobuf.Google_Protobuf_Any? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.listener.v2"

extension Envoy_Config_Listener_V2_ApiListener: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ApiListener"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "api_listener"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._apiListener) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._apiListener {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Listener_V2_ApiListener, rhs: Envoy_Config_Listener_V2_ApiListener) -> Bool {
    if lhs._apiListener != rhs._apiListener {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
