// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: udpa/service/orca/v1/orca.proto
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

public struct Udpa_Service_Orca_V1_OrcaLoadReportRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Interval for generating Open RCA core metric responses.
  public var reportInterval: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _reportInterval ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_reportInterval = newValue}
  }
  /// Returns true if `reportInterval` has been explicitly set.
  public var hasReportInterval: Bool {return self._reportInterval != nil}
  /// Clears the value of `reportInterval`. Subsequent reads from it will return its default value.
  public mutating func clearReportInterval() {self._reportInterval = nil}

  /// Request costs to collect. If this is empty, all known requests costs tracked by
  /// the load reporting agent will be returned. This provides an opportunity for
  /// the client to selectively obtain a subset of tracked costs.
  public var requestCostNames: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _reportInterval: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "udpa.service.orca.v1"

extension Udpa_Service_Orca_V1_OrcaLoadReportRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OrcaLoadReportRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "report_interval"),
    2: .standard(proto: "request_cost_names"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._reportInterval) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.requestCostNames) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._reportInterval {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.requestCostNames.isEmpty {
      try visitor.visitRepeatedStringField(value: self.requestCostNames, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Udpa_Service_Orca_V1_OrcaLoadReportRequest, rhs: Udpa_Service_Orca_V1_OrcaLoadReportRequest) -> Bool {
    if lhs._reportInterval != rhs._reportInterval {return false}
    if lhs.requestCostNames != rhs.requestCostNames {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}