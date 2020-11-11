// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/filter/network/rbac/v2/rbac.proto
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

/// RBAC network filter config.
///
/// Header should not be used in rules/shadow_rules in RBAC network filter as
/// this information is only available in :ref:`RBAC http filter <config_http_filters_rbac>`.
public struct Envoy_Config_Filter_Network_Rbac_V2_RBAC {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specify the RBAC rules to be applied globally.
  /// If absent, no enforcing RBAC policy will be applied.
  public var rules: Envoy_Config_Rbac_V2_RBAC {
    get {return _rules ?? Envoy_Config_Rbac_V2_RBAC()}
    set {_rules = newValue}
  }
  /// Returns true if `rules` has been explicitly set.
  public var hasRules: Bool {return self._rules != nil}
  /// Clears the value of `rules`. Subsequent reads from it will return its default value.
  public mutating func clearRules() {self._rules = nil}

  /// Shadow rules are not enforced by the filter but will emit stats and logs
  /// and can be used for rule testing.
  /// If absent, no shadow RBAC policy will be applied.
  public var shadowRules: Envoy_Config_Rbac_V2_RBAC {
    get {return _shadowRules ?? Envoy_Config_Rbac_V2_RBAC()}
    set {_shadowRules = newValue}
  }
  /// Returns true if `shadowRules` has been explicitly set.
  public var hasShadowRules: Bool {return self._shadowRules != nil}
  /// Clears the value of `shadowRules`. Subsequent reads from it will return its default value.
  public mutating func clearShadowRules() {self._shadowRules = nil}

  /// The prefix to use when emitting statistics.
  public var statPrefix: String = String()

  /// RBAC enforcement strategy. By default RBAC will be enforced only once
  /// when the first byte of data arrives from the downstream. When used in
  /// conjunction with filters that emit dynamic metadata after decoding
  /// every payload (e.g., Mongo, MySQL, Kafka) set the enforcement type to
  /// CONTINUOUS to enforce RBAC policies on every message boundary.
  public var enforcementType: Envoy_Config_Filter_Network_Rbac_V2_RBAC.EnforcementType = .oneTimeOnFirstByte

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum EnforcementType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Apply RBAC policies when the first byte of data arrives on the connection.
    case oneTimeOnFirstByte // = 0

    /// Continuously apply RBAC policies as data arrives. Use this mode when
    /// using RBAC with message oriented protocols such as Mongo, MySQL, Kafka,
    /// etc. when the protocol decoders emit dynamic metadata such as the
    /// resources being accessed and the operations on the resources.
    case continuous // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .oneTimeOnFirstByte
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .oneTimeOnFirstByte
      case 1: self = .continuous
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .oneTimeOnFirstByte: return 0
      case .continuous: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _rules: Envoy_Config_Rbac_V2_RBAC? = nil
  fileprivate var _shadowRules: Envoy_Config_Rbac_V2_RBAC? = nil
}

#if swift(>=4.2)

extension Envoy_Config_Filter_Network_Rbac_V2_RBAC.EnforcementType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Config_Filter_Network_Rbac_V2_RBAC.EnforcementType] = [
    .oneTimeOnFirstByte,
    .continuous,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.filter.network.rbac.v2"

extension Envoy_Config_Filter_Network_Rbac_V2_RBAC: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RBAC"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "rules"),
    2: .standard(proto: "shadow_rules"),
    3: .standard(proto: "stat_prefix"),
    4: .standard(proto: "enforcement_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._rules) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._shadowRules) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.statPrefix) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.enforcementType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._rules {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._shadowRules {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.statPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.statPrefix, fieldNumber: 3)
    }
    if self.enforcementType != .oneTimeOnFirstByte {
      try visitor.visitSingularEnumField(value: self.enforcementType, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Network_Rbac_V2_RBAC, rhs: Envoy_Config_Filter_Network_Rbac_V2_RBAC) -> Bool {
    if lhs._rules != rhs._rules {return false}
    if lhs._shadowRules != rhs._shadowRules {return false}
    if lhs.statPrefix != rhs.statPrefix {return false}
    if lhs.enforcementType != rhs.enforcementType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Filter_Network_Rbac_V2_RBAC.EnforcementType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ONE_TIME_ON_FIRST_BYTE"),
    1: .same(proto: "CONTINUOUS"),
  ]
}
