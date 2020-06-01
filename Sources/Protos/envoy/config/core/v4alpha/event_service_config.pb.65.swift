// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/core/v4alpha/event_service_config.proto
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

/// [#not-implemented-hide:]
/// Configuration of the event reporting service endpoint.
public struct Envoy_Config_Core_V4alpha_EventServiceConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var configSourceSpecifier: Envoy_Config_Core_V4alpha_EventServiceConfig.OneOf_ConfigSourceSpecifier? = nil

  /// Specifies the gRPC service that hosts the event reporting service.
  public var grpcService: Envoy_Config_Core_V4alpha_GrpcService {
    get {
      if case .grpcService(let v)? = configSourceSpecifier {return v}
      return Envoy_Config_Core_V4alpha_GrpcService()
    }
    set {configSourceSpecifier = .grpcService(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_ConfigSourceSpecifier: Equatable {
    /// Specifies the gRPC service that hosts the event reporting service.
    case grpcService(Envoy_Config_Core_V4alpha_GrpcService)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Core_V4alpha_EventServiceConfig.OneOf_ConfigSourceSpecifier, rhs: Envoy_Config_Core_V4alpha_EventServiceConfig.OneOf_ConfigSourceSpecifier) -> Bool {
      switch (lhs, rhs) {
      case (.grpcService(let l), .grpcService(let r)): return l == r
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.core.v4alpha"

extension Envoy_Config_Core_V4alpha_EventServiceConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EventServiceConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "grpc_service"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        var v: Envoy_Config_Core_V4alpha_GrpcService?
        if let current = self.configSourceSpecifier {
          try decoder.handleConflictingOneOf()
          if case .grpcService(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configSourceSpecifier = .grpcService(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .grpcService(let v)? = self.configSourceSpecifier {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Core_V4alpha_EventServiceConfig, rhs: Envoy_Config_Core_V4alpha_EventServiceConfig) -> Bool {
    if lhs.configSourceSpecifier != rhs.configSourceSpecifier {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
