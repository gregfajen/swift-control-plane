// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/containeranalysis/v1beta1/cvss/cvss.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018 The Grafeas Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

/// Common Vulnerability Scoring System version 3.
/// For details, see https://www.first.org/cvss/specification-document
public struct Grafeas_V1beta1_Vulnerability_CVSSv3 {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The base score is a function of the base metric scores.
  public var baseScore: Float = 0

  public var exploitabilityScore: Float = 0

  public var impactScore: Float = 0

  /// Base Metrics
  /// Represents the intrinsic characteristics of a vulnerability that are
  /// constant over time and across user environments.
  public var attackVector: Grafeas_V1beta1_Vulnerability_CVSSv3.AttackVector = .unspecified

  public var attackComplexity: Grafeas_V1beta1_Vulnerability_CVSSv3.AttackComplexity = .unspecified

  public var privilegesRequired: Grafeas_V1beta1_Vulnerability_CVSSv3.PrivilegesRequired = .unspecified

  public var userInteraction: Grafeas_V1beta1_Vulnerability_CVSSv3.UserInteraction = .unspecified

  public var scope: Grafeas_V1beta1_Vulnerability_CVSSv3.Scope = .unspecified

  public var confidentialityImpact: Grafeas_V1beta1_Vulnerability_CVSSv3.Impact = .unspecified

  public var integrityImpact: Grafeas_V1beta1_Vulnerability_CVSSv3.Impact = .unspecified

  public var availabilityImpact: Grafeas_V1beta1_Vulnerability_CVSSv3.Impact = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum AttackVector: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0
    case network // = 1
    case adjacent // = 2
    case local // = 3
    case physical // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .network
      case 2: self = .adjacent
      case 3: self = .local
      case 4: self = .physical
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .network: return 1
      case .adjacent: return 2
      case .local: return 3
      case .physical: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum AttackComplexity: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0
    case low // = 1
    case high // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .low
      case 2: self = .high
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .low: return 1
      case .high: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum PrivilegesRequired: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0
    case none // = 1
    case low // = 2
    case high // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .none
      case 2: self = .low
      case 3: self = .high
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .none: return 1
      case .low: return 2
      case .high: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum UserInteraction: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0
    case none // = 1
    case `required` // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .none
      case 2: self = .required
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .none: return 1
      case .required: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum Scope: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0
    case unchanged // = 1
    case changed // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .unchanged
      case 2: self = .changed
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .unchanged: return 1
      case .changed: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public enum Impact: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0
    case high // = 1
    case low // = 2
    case none // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .high
      case 2: self = .low
      case 3: self = .none
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .high: return 1
      case .low: return 2
      case .none: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Grafeas_V1beta1_Vulnerability_CVSSv3.AttackVector: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Vulnerability_CVSSv3.AttackVector] = [
    .unspecified,
    .network,
    .adjacent,
    .local,
    .physical,
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.AttackComplexity: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Vulnerability_CVSSv3.AttackComplexity] = [
    .unspecified,
    .low,
    .high,
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.PrivilegesRequired: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Vulnerability_CVSSv3.PrivilegesRequired] = [
    .unspecified,
    .none,
    .low,
    .high,
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.UserInteraction: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Vulnerability_CVSSv3.UserInteraction] = [
    .unspecified,
    .none,
    .required,
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.Scope: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Vulnerability_CVSSv3.Scope] = [
    .unspecified,
    .unchanged,
    .changed,
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.Impact: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Vulnerability_CVSSv3.Impact] = [
    .unspecified,
    .high,
    .low,
    .none,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1beta1.vulnerability"

extension Grafeas_V1beta1_Vulnerability_CVSSv3: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CVSSv3"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "base_score"),
    2: .standard(proto: "exploitability_score"),
    3: .standard(proto: "impact_score"),
    5: .standard(proto: "attack_vector"),
    6: .standard(proto: "attack_complexity"),
    7: .standard(proto: "privileges_required"),
    8: .standard(proto: "user_interaction"),
    9: .same(proto: "scope"),
    10: .standard(proto: "confidentiality_impact"),
    11: .standard(proto: "integrity_impact"),
    12: .standard(proto: "availability_impact"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.baseScore) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.exploitabilityScore) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.impactScore) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.attackVector) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.attackComplexity) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.privilegesRequired) }()
      case 8: try { try decoder.decodeSingularEnumField(value: &self.userInteraction) }()
      case 9: try { try decoder.decodeSingularEnumField(value: &self.scope) }()
      case 10: try { try decoder.decodeSingularEnumField(value: &self.confidentialityImpact) }()
      case 11: try { try decoder.decodeSingularEnumField(value: &self.integrityImpact) }()
      case 12: try { try decoder.decodeSingularEnumField(value: &self.availabilityImpact) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.baseScore != 0 {
      try visitor.visitSingularFloatField(value: self.baseScore, fieldNumber: 1)
    }
    if self.exploitabilityScore != 0 {
      try visitor.visitSingularFloatField(value: self.exploitabilityScore, fieldNumber: 2)
    }
    if self.impactScore != 0 {
      try visitor.visitSingularFloatField(value: self.impactScore, fieldNumber: 3)
    }
    if self.attackVector != .unspecified {
      try visitor.visitSingularEnumField(value: self.attackVector, fieldNumber: 5)
    }
    if self.attackComplexity != .unspecified {
      try visitor.visitSingularEnumField(value: self.attackComplexity, fieldNumber: 6)
    }
    if self.privilegesRequired != .unspecified {
      try visitor.visitSingularEnumField(value: self.privilegesRequired, fieldNumber: 7)
    }
    if self.userInteraction != .unspecified {
      try visitor.visitSingularEnumField(value: self.userInteraction, fieldNumber: 8)
    }
    if self.scope != .unspecified {
      try visitor.visitSingularEnumField(value: self.scope, fieldNumber: 9)
    }
    if self.confidentialityImpact != .unspecified {
      try visitor.visitSingularEnumField(value: self.confidentialityImpact, fieldNumber: 10)
    }
    if self.integrityImpact != .unspecified {
      try visitor.visitSingularEnumField(value: self.integrityImpact, fieldNumber: 11)
    }
    if self.availabilityImpact != .unspecified {
      try visitor.visitSingularEnumField(value: self.availabilityImpact, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Vulnerability_CVSSv3, rhs: Grafeas_V1beta1_Vulnerability_CVSSv3) -> Bool {
    if lhs.baseScore != rhs.baseScore {return false}
    if lhs.exploitabilityScore != rhs.exploitabilityScore {return false}
    if lhs.impactScore != rhs.impactScore {return false}
    if lhs.attackVector != rhs.attackVector {return false}
    if lhs.attackComplexity != rhs.attackComplexity {return false}
    if lhs.privilegesRequired != rhs.privilegesRequired {return false}
    if lhs.userInteraction != rhs.userInteraction {return false}
    if lhs.scope != rhs.scope {return false}
    if lhs.confidentialityImpact != rhs.confidentialityImpact {return false}
    if lhs.integrityImpact != rhs.integrityImpact {return false}
    if lhs.availabilityImpact != rhs.availabilityImpact {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.AttackVector: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ATTACK_VECTOR_UNSPECIFIED"),
    1: .same(proto: "ATTACK_VECTOR_NETWORK"),
    2: .same(proto: "ATTACK_VECTOR_ADJACENT"),
    3: .same(proto: "ATTACK_VECTOR_LOCAL"),
    4: .same(proto: "ATTACK_VECTOR_PHYSICAL"),
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.AttackComplexity: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ATTACK_COMPLEXITY_UNSPECIFIED"),
    1: .same(proto: "ATTACK_COMPLEXITY_LOW"),
    2: .same(proto: "ATTACK_COMPLEXITY_HIGH"),
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.PrivilegesRequired: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PRIVILEGES_REQUIRED_UNSPECIFIED"),
    1: .same(proto: "PRIVILEGES_REQUIRED_NONE"),
    2: .same(proto: "PRIVILEGES_REQUIRED_LOW"),
    3: .same(proto: "PRIVILEGES_REQUIRED_HIGH"),
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.UserInteraction: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "USER_INTERACTION_UNSPECIFIED"),
    1: .same(proto: "USER_INTERACTION_NONE"),
    2: .same(proto: "USER_INTERACTION_REQUIRED"),
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.Scope: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SCOPE_UNSPECIFIED"),
    1: .same(proto: "SCOPE_UNCHANGED"),
    2: .same(proto: "SCOPE_CHANGED"),
  ]
}

extension Grafeas_V1beta1_Vulnerability_CVSSv3.Impact: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IMPACT_UNSPECIFIED"),
    1: .same(proto: "IMPACT_HIGH"),
    2: .same(proto: "IMPACT_LOW"),
    3: .same(proto: "IMPACT_NONE"),
  ]
}
