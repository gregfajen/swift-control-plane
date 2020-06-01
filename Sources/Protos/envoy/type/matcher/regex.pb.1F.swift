// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/matcher/regex.proto
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

/// A regex matcher designed for safety when used with untrusted input.
public struct Envoy_Type_Matcher_RegexMatcher {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var engineType: Envoy_Type_Matcher_RegexMatcher.OneOf_EngineType? = nil

  /// Google's RE2 regex engine.
  public var googleRe2: Envoy_Type_Matcher_RegexMatcher.GoogleRE2 {
    get {
      if case .googleRe2(let v)? = engineType {return v}
      return Envoy_Type_Matcher_RegexMatcher.GoogleRE2()
    }
    set {engineType = .googleRe2(newValue)}
  }

  /// The regex match string. The string must be supported by the configured engine.
  public var regex: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_EngineType: Equatable {
    /// Google's RE2 regex engine.
    case googleRe2(Envoy_Type_Matcher_RegexMatcher.GoogleRE2)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Type_Matcher_RegexMatcher.OneOf_EngineType, rhs: Envoy_Type_Matcher_RegexMatcher.OneOf_EngineType) -> Bool {
      switch (lhs, rhs) {
      case (.googleRe2(let l), .googleRe2(let r)): return l == r
      }
    }
  #endif
  }

  /// Google's `RE2 <https://github.com/google/re2>`_ regex engine. The regex string must adhere to
  /// the documented `syntax <https://github.com/google/re2/wiki/Syntax>`_. The engine is designed
  /// to complete execution in linear time as well as limit the amount of memory used.
  public struct GoogleRE2 {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// This field controls the RE2 "program size" which is a rough estimate of how complex a
    /// compiled regex is to evaluate. A regex that has a program size greater than the configured
    /// value will fail to compile. In this case, the configured max program size can be increased
    /// or the regex can be simplified. If not specified, the default is 100.
    ///
    /// This field is deprecated; regexp validation should be performed on the management server
    /// instead of being done by each individual client.
    public var maxProgramSize: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _maxProgramSize ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_maxProgramSize = newValue}
    }
    /// Returns true if `maxProgramSize` has been explicitly set.
    public var hasMaxProgramSize: Bool {return self._maxProgramSize != nil}
    /// Clears the value of `maxProgramSize`. Subsequent reads from it will return its default value.
    public mutating func clearMaxProgramSize() {self._maxProgramSize = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _maxProgramSize: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  }

  public init() {}
}

/// Describes how to match a string and then produce a new string using a regular
/// expression and a substitution string.
public struct Envoy_Type_Matcher_RegexMatchAndSubstitute {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The regular expression used to find portions of a string (hereafter called
  /// the "subject string") that should be replaced. When a new string is
  /// produced during the substitution operation, the new string is initially
  /// the same as the subject string, but then all matches in the subject string
  /// are replaced by the substitution string. If replacing all matches isn't
  /// desired, regular expression anchors can be used to ensure a single match,
  /// so as to replace just one occurrence of a pattern. Capture groups can be
  /// used in the pattern to extract portions of the subject string, and then
  /// referenced in the substitution string.
  public var pattern: Envoy_Type_Matcher_RegexMatcher {
    get {return _pattern ?? Envoy_Type_Matcher_RegexMatcher()}
    set {_pattern = newValue}
  }
  /// Returns true if `pattern` has been explicitly set.
  public var hasPattern: Bool {return self._pattern != nil}
  /// Clears the value of `pattern`. Subsequent reads from it will return its default value.
  public mutating func clearPattern() {self._pattern = nil}

  /// The string that should be substituted into matching portions of the
  /// subject string during a substitution operation to produce a new string.
  /// Capture groups in the pattern can be referenced in the substitution
  /// string. Note, however, that the syntax for referring to capture groups is
  /// defined by the chosen regular expression engine. Google's `RE2
  /// <https://github.com/google/re2>`_ regular expression engine uses a
  /// backslash followed by the capture group number to denote a numbered
  /// capture group. E.g., ``\1`` refers to capture group 1, and ``\2`` refers
  /// to capture group 2.
  public var substitution: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _pattern: Envoy_Type_Matcher_RegexMatcher? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.type.matcher"

extension Envoy_Type_Matcher_RegexMatcher: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RegexMatcher"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "google_re2"),
    2: .same(proto: "regex"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        var v: Envoy_Type_Matcher_RegexMatcher.GoogleRE2?
        if let current = self.engineType {
          try decoder.handleConflictingOneOf()
          if case .googleRe2(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.engineType = .googleRe2(v)}
      case 2: try decoder.decodeSingularStringField(value: &self.regex)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .googleRe2(let v)? = self.engineType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.regex.isEmpty {
      try visitor.visitSingularStringField(value: self.regex, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_Matcher_RegexMatcher, rhs: Envoy_Type_Matcher_RegexMatcher) -> Bool {
    if lhs.engineType != rhs.engineType {return false}
    if lhs.regex != rhs.regex {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Type_Matcher_RegexMatcher.GoogleRE2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Type_Matcher_RegexMatcher.protoMessageName + ".GoogleRE2"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "max_program_size"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._maxProgramSize)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._maxProgramSize {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_Matcher_RegexMatcher.GoogleRE2, rhs: Envoy_Type_Matcher_RegexMatcher.GoogleRE2) -> Bool {
    if lhs._maxProgramSize != rhs._maxProgramSize {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Type_Matcher_RegexMatchAndSubstitute: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RegexMatchAndSubstitute"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "pattern"),
    2: .same(proto: "substitution"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._pattern)
      case 2: try decoder.decodeSingularStringField(value: &self.substitution)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._pattern {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.substitution.isEmpty {
      try visitor.visitSingularStringField(value: self.substitution, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_Matcher_RegexMatchAndSubstitute, rhs: Envoy_Type_Matcher_RegexMatchAndSubstitute) -> Bool {
    if lhs._pattern != rhs._pattern {return false}
    if lhs.substitution != rhs.substitution {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
