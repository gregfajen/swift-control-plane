// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/tap/v4alpha/tap.proto
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

/// Top level configuration for the tap filter.
public struct Envoy_Extensions_Filters_Http_Tap_V4alpha_Tap {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Common configuration for the HTTP tap filter.
  public var commonConfig: Envoy_Extensions_Common_Tap_V4alpha_CommonExtensionConfig {
    get {return _commonConfig ?? Envoy_Extensions_Common_Tap_V4alpha_CommonExtensionConfig()}
    set {_commonConfig = newValue}
  }
  /// Returns true if `commonConfig` has been explicitly set.
  public var hasCommonConfig: Bool {return self._commonConfig != nil}
  /// Clears the value of `commonConfig`. Subsequent reads from it will return its default value.
  public mutating func clearCommonConfig() {self._commonConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _commonConfig: Envoy_Extensions_Common_Tap_V4alpha_CommonExtensionConfig? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.tap.v4alpha"

extension Envoy_Extensions_Filters_Http_Tap_V4alpha_Tap: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Tap"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "common_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._commonConfig)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._commonConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Tap_V4alpha_Tap, rhs: Envoy_Extensions_Filters_Http_Tap_V4alpha_Tap) -> Bool {
    if lhs._commonConfig != rhs._commonConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
