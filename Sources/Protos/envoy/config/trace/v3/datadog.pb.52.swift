// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/trace/v3/datadog.proto
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

/// Configuration for the Datadog tracer.
/// [#extension: envoy.tracers.datadog]
public struct Envoy_Config_Trace_V3_DatadogConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The cluster to use for submitting traces to the Datadog agent.
  public var collectorCluster: String = String()

  /// The name used for the service when traces are generated by envoy.
  public var serviceName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.trace.v3"

extension Envoy_Config_Trace_V3_DatadogConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DatadogConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "collector_cluster"),
    2: .standard(proto: "service_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.collectorCluster)
      case 2: try decoder.decodeSingularStringField(value: &self.serviceName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.collectorCluster.isEmpty {
      try visitor.visitSingularStringField(value: self.collectorCluster, fieldNumber: 1)
    }
    if !self.serviceName.isEmpty {
      try visitor.visitSingularStringField(value: self.serviceName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Trace_V3_DatadogConfig, rhs: Envoy_Config_Trace_V3_DatadogConfig) -> Bool {
    if lhs.collectorCluster != rhs.collectorCluster {return false}
    if lhs.serviceName != rhs.serviceName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
