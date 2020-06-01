// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/v3/percent.proto
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

/// Identifies a percentage, in the range [0.0, 100.0].
public struct Envoy_Type_V3_Percent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var value: Double = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A fractional percentage is used in cases in which for performance reasons performing floating
/// point to integer conversions during randomness calculations is undesirable. The message includes
/// both a numerator and denominator that together determine the final fractional value.
///
/// * **Example**: 1/100 = 1%.
/// * **Example**: 3/10000 = 0.03%.
public struct Envoy_Type_V3_FractionalPercent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Specifies the numerator. Defaults to 0.
  public var numerator: UInt32 = 0

  /// Specifies the denominator. If the denominator specified is less than the numerator, the final
  /// fractional percentage is capped at 1 (100%).
  public var denominator: Envoy_Type_V3_FractionalPercent.DenominatorType = .hundred

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Fraction percentages support several fixed denominator values.
  public enum DenominatorType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// 100.
    ///
    /// **Example**: 1/100 = 1%.
    case hundred // = 0

    /// 10,000.
    ///
    /// **Example**: 1/10000 = 0.01%.
    case tenThousand // = 1

    /// 1,000,000.
    ///
    /// **Example**: 1/1000000 = 0.0001%.
    case million // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .hundred
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .hundred
      case 1: self = .tenThousand
      case 2: self = .million
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .hundred: return 0
      case .tenThousand: return 1
      case .million: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Envoy_Type_V3_FractionalPercent.DenominatorType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Type_V3_FractionalPercent.DenominatorType] = [
    .hundred,
    .tenThousand,
    .million,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.type.v3"

extension Envoy_Type_V3_Percent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Percent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularDoubleField(value: &self.value)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.value != 0 {
      try visitor.visitSingularDoubleField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_V3_Percent, rhs: Envoy_Type_V3_Percent) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Type_V3_FractionalPercent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FractionalPercent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "numerator"),
    2: .same(proto: "denominator"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.numerator)
      case 2: try decoder.decodeSingularEnumField(value: &self.denominator)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.numerator != 0 {
      try visitor.visitSingularUInt32Field(value: self.numerator, fieldNumber: 1)
    }
    if self.denominator != .hundred {
      try visitor.visitSingularEnumField(value: self.denominator, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_V3_FractionalPercent, rhs: Envoy_Type_V3_FractionalPercent) -> Bool {
    if lhs.numerator != rhs.numerator {return false}
    if lhs.denominator != rhs.denominator {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Type_V3_FractionalPercent.DenominatorType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "HUNDRED"),
    1: .same(proto: "TEN_THOUSAND"),
    2: .same(proto: "MILLION"),
  ]
}
