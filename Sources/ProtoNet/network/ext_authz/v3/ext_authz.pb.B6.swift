// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/network/ext_authz/v3/ext_authz.proto
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

/// External Authorization filter calls out to an external service over the
/// gRPC Authorization API defined by
/// :ref:`CheckRequest <envoy_api_msg_service.auth.v3.CheckRequest>`.
/// A failed check will cause this filter to close the TCP connection.
public struct Envoy_Extensions_Filters_Network_ExtAuthz_V3_ExtAuthz {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The prefix to use when emitting statistics.
  public var statPrefix: String = String()

  /// The external authorization gRPC service configuration.
  /// The default timeout is set to 200ms by this filter.
  public var grpcService: Envoy_Config_Core_V3_GrpcService {
    get {return _grpcService ?? Envoy_Config_Core_V3_GrpcService()}
    set {_grpcService = newValue}
  }
  /// Returns true if `grpcService` has been explicitly set.
  public var hasGrpcService: Bool {return self._grpcService != nil}
  /// Clears the value of `grpcService`. Subsequent reads from it will return its default value.
  public mutating func clearGrpcService() {self._grpcService = nil}

  /// The filter's behaviour in case the external authorization service does
  /// not respond back. When it is set to true, Envoy will also allow traffic in case of
  /// communication failure between authorization service and the proxy.
  /// Defaults to false.
  public var failureModeAllow: Bool = false

  /// Specifies if the peer certificate is sent to the external service.
  ///
  /// When this field is true, Envoy will include the peer X.509 certificate, if available, in the
  /// :ref:`certificate<envoy_api_field_service.auth.v3.AttributeContext.Peer.certificate>`.
  public var includePeerCertificate: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _grpcService: Envoy_Config_Core_V3_GrpcService? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.network.ext_authz.v3"

extension Envoy_Extensions_Filters_Network_ExtAuthz_V3_ExtAuthz: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ExtAuthz"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stat_prefix"),
    2: .standard(proto: "grpc_service"),
    3: .standard(proto: "failure_mode_allow"),
    4: .standard(proto: "include_peer_certificate"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.statPrefix)
      case 2: try decoder.decodeSingularMessageField(value: &self._grpcService)
      case 3: try decoder.decodeSingularBoolField(value: &self.failureModeAllow)
      case 4: try decoder.decodeSingularBoolField(value: &self.includePeerCertificate)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.statPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.statPrefix, fieldNumber: 1)
    }
    if let v = self._grpcService {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.failureModeAllow != false {
      try visitor.visitSingularBoolField(value: self.failureModeAllow, fieldNumber: 3)
    }
    if self.includePeerCertificate != false {
      try visitor.visitSingularBoolField(value: self.includePeerCertificate, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Network_ExtAuthz_V3_ExtAuthz, rhs: Envoy_Extensions_Filters_Network_ExtAuthz_V3_ExtAuthz) -> Bool {
    if lhs.statPrefix != rhs.statPrefix {return false}
    if lhs._grpcService != rhs._grpcService {return false}
    if lhs.failureModeAllow != rhs.failureModeAllow {return false}
    if lhs.includePeerCertificate != rhs.includePeerCertificate {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}