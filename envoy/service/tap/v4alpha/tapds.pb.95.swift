// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/service/tap/v4alpha/tapds.proto
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

/// [#not-implemented-hide:] A tap resource is essentially a tap configuration with a name
/// The filter TapDS config references this name.
public struct Envoy_Service_Tap_V4alpha_TapResource {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the tap configuration.
  public var name: String = String()

  /// Tap config to apply
  public var config: Envoy_Config_Tap_V4alpha_TapConfig {
    get {return _config ?? Envoy_Config_Tap_V4alpha_TapConfig()}
    set {_config = newValue}
  }
  /// Returns true if `config` has been explicitly set.
  public var hasConfig: Bool {return self._config != nil}
  /// Clears the value of `config`. Subsequent reads from it will return its default value.
  public mutating func clearConfig() {self._config = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _config: Envoy_Config_Tap_V4alpha_TapConfig? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.service.tap.v4alpha"

extension Envoy_Service_Tap_V4alpha_TapResource: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TapResource"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularMessageField(value: &self._config)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._config {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Tap_V4alpha_TapResource, rhs: Envoy_Service_Tap_V4alpha_TapResource) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._config != rhs._config {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}