// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/v3/hash_policy.proto
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

/// Specifies the hash policy
public struct Envoy_Type_V3_HashPolicy {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var policySpecifier: Envoy_Type_V3_HashPolicy.OneOf_PolicySpecifier? = nil

  public var sourceIp: Envoy_Type_V3_HashPolicy.SourceIp {
    get {
      if case .sourceIp(let v)? = policySpecifier {return v}
      return Envoy_Type_V3_HashPolicy.SourceIp()
    }
    set {policySpecifier = .sourceIp(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_PolicySpecifier: Equatable {
    case sourceIp(Envoy_Type_V3_HashPolicy.SourceIp)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Type_V3_HashPolicy.OneOf_PolicySpecifier, rhs: Envoy_Type_V3_HashPolicy.OneOf_PolicySpecifier) -> Bool {
      switch (lhs, rhs) {
      case (.sourceIp(let l), .sourceIp(let r)): return l == r
      }
    }
  #endif
  }

  /// The source IP will be used to compute the hash used by hash-based load balancing
  /// algorithms.
  public struct SourceIp {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.type.v3"

extension Envoy_Type_V3_HashPolicy: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HashPolicy"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "source_ip"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        var v: Envoy_Type_V3_HashPolicy.SourceIp?
        if let current = self.policySpecifier {
          try decoder.handleConflictingOneOf()
          if case .sourceIp(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.policySpecifier = .sourceIp(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .sourceIp(let v)? = self.policySpecifier {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_V3_HashPolicy, rhs: Envoy_Type_V3_HashPolicy) -> Bool {
    if lhs.policySpecifier != rhs.policySpecifier {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Type_V3_HashPolicy.SourceIp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Type_V3_HashPolicy.protoMessageName + ".SourceIp"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_V3_HashPolicy.SourceIp, rhs: Envoy_Type_V3_HashPolicy.SourceIp) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
