// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/matcher/v3/struct.proto
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

/// StructMatcher provides a general interface to check if a given value is matched in
/// google.protobuf.Struct. It uses `path` to retrieve the value
/// from the struct and then check if it's matched to the specified value.
///
/// For example, for the following Struct:
///
/// .. code-block:: yaml
///
///        fields:
///          a:
///            struct_value:
///              fields:
///                b:
///                  struct_value:
///                    fields:
///                      c:
///                        string_value: pro
///                t:
///                  list_value:
///                    values:
///                      - string_value: m
///                      - string_value: n
///
/// The following MetadataMatcher is matched as the path [a, b, c] will retrieve a string value "pro"
/// from the Metadata which is matched to the specified prefix match.
///
/// .. code-block:: yaml
///
///    path:
///    - key: a
///    - key: b
///    - key: c
///    value:
///      string_match:
///        prefix: pr
///
/// The following StructMatcher is matched as the code will match one of the string values in the
/// list at the path [a, t].
///
/// .. code-block:: yaml
///
///    path:
///    - key: a
///    - key: t
///    value:
///      list_match:
///        one_of:
///          string_match:
///            exact: m
///
/// An example use of StructMatcher is to match metadata in envoy.v*.core.Node.
public struct Envoy_Type_Matcher_V3_StructMatcher {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The path to retrieve the Value from the Struct.
  public var path: [Envoy_Type_Matcher_V3_StructMatcher.PathSegment] = []

  /// The StructMatcher is matched if the value retrieved by path is matched to this value.
  public var value: Envoy_Type_Matcher_V3_ValueMatcher {
    get {return _value ?? Envoy_Type_Matcher_V3_ValueMatcher()}
    set {_value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  public var hasValue: Bool {return self._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  public mutating func clearValue() {self._value = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Specifies the segment in a path to retrieve value from Struct.
  public struct PathSegment {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var segment: Envoy_Type_Matcher_V3_StructMatcher.PathSegment.OneOf_Segment? = nil

    /// If specified, use the key to retrieve the value in a Struct.
    public var key: String {
      get {
        if case .key(let v)? = segment {return v}
        return String()
      }
      set {segment = .key(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum OneOf_Segment: Equatable {
      /// If specified, use the key to retrieve the value in a Struct.
      case key(String)

    #if !swift(>=4.1)
      public static func ==(lhs: Envoy_Type_Matcher_V3_StructMatcher.PathSegment.OneOf_Segment, rhs: Envoy_Type_Matcher_V3_StructMatcher.PathSegment.OneOf_Segment) -> Bool {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch (lhs, rhs) {
        case (.key, .key): return {
          guard case .key(let l) = lhs, case .key(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        }
      }
    #endif
    }

    public init() {}
  }

  public init() {}

  fileprivate var _value: Envoy_Type_Matcher_V3_ValueMatcher? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.type.matcher.v3"

extension Envoy_Type_Matcher_V3_StructMatcher: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StructMatcher"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "path"),
    3: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.path) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.path, fieldNumber: 2)
    }
    if let v = self._value {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_Matcher_V3_StructMatcher, rhs: Envoy_Type_Matcher_V3_StructMatcher) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs._value != rhs._value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Type_Matcher_V3_StructMatcher.PathSegment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Type_Matcher_V3_StructMatcher.protoMessageName + ".PathSegment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.segment != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.segment = .key(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .key(let v)? = self.segment {
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_Matcher_V3_StructMatcher.PathSegment, rhs: Envoy_Type_Matcher_V3_StructMatcher.PathSegment) -> Bool {
    if lhs.segment != rhs.segment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
