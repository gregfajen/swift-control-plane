// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/matcher/v4alpha/number.proto
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

/// Specifies the way to match a double value.
public struct Envoy_Type_Matcher_V4alpha_DoubleMatcher {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var matchPattern: Envoy_Type_Matcher_V4alpha_DoubleMatcher.OneOf_MatchPattern? = nil

  /// If specified, the input double value must be in the range specified here.
  /// Note: The range is using half-open interval semantics [start, end).
  public var range: Envoy_Type_V3_DoubleRange {
    get {
      if case .range(let v)? = matchPattern {return v}
      return Envoy_Type_V3_DoubleRange()
    }
    set {matchPattern = .range(newValue)}
  }

  /// If specified, the input double value must be equal to the value specified here.
  public var exact: Double {
    get {
      if case .exact(let v)? = matchPattern {return v}
      return 0
    }
    set {matchPattern = .exact(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MatchPattern: Equatable {
    /// If specified, the input double value must be in the range specified here.
    /// Note: The range is using half-open interval semantics [start, end).
    case range(Envoy_Type_V3_DoubleRange)
    /// If specified, the input double value must be equal to the value specified here.
    case exact(Double)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Type_Matcher_V4alpha_DoubleMatcher.OneOf_MatchPattern, rhs: Envoy_Type_Matcher_V4alpha_DoubleMatcher.OneOf_MatchPattern) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.range, .range): return {
        guard case .range(let l) = lhs, case .range(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.exact, .exact): return {
        guard case .exact(let l) = lhs, case .exact(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.type.matcher.v4alpha"

extension Envoy_Type_Matcher_V4alpha_DoubleMatcher: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DoubleMatcher"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "range"),
    2: .same(proto: "exact"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Envoy_Type_V3_DoubleRange?
        if let current = self.matchPattern {
          try decoder.handleConflictingOneOf()
          if case .range(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.matchPattern = .range(v)}
      }()
      case 2: try {
        if self.matchPattern != nil {try decoder.handleConflictingOneOf()}
        var v: Double?
        try decoder.decodeSingularDoubleField(value: &v)
        if let v = v {self.matchPattern = .exact(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.matchPattern {
    case .range?: try {
      guard case .range(let v)? = self.matchPattern else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .exact?: try {
      guard case .exact(let v)? = self.matchPattern else { preconditionFailure() }
      try visitor.visitSingularDoubleField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_Matcher_V4alpha_DoubleMatcher, rhs: Envoy_Type_Matcher_V4alpha_DoubleMatcher) -> Bool {
    if lhs.matchPattern != rhs.matchPattern {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
