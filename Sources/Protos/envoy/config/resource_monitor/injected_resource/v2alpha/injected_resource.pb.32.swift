// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/resource_monitor/injected_resource/v2alpha/injected_resource.proto
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

/// The injected resource monitor allows injecting a synthetic resource pressure into Envoy
/// via a text file, which must contain a floating-point number in the range [0..1] representing
/// the resource pressure and be updated atomically by a symbolic link swap.
/// This is intended primarily for integration tests to force Envoy into an overloaded state.
public struct Envoy_Config_ResourceMonitor_InjectedResource_V2alpha_InjectedResourceConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var filename: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.resource_monitor.injected_resource.v2alpha"

extension Envoy_Config_ResourceMonitor_InjectedResource_V2alpha_InjectedResourceConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InjectedResourceConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "filename"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.filename) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.filename.isEmpty {
      try visitor.visitSingularStringField(value: self.filename, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_ResourceMonitor_InjectedResource_V2alpha_InjectedResourceConfig, rhs: Envoy_Config_ResourceMonitor_InjectedResource_V2alpha_InjectedResourceConfig) -> Bool {
    if lhs.filename != rhs.filename {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
