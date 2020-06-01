// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/matcher/v4alpha/metadata.proto
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

/// [#next-major-version: MetadataMatcher should use StructMatcher]
public struct Envoy_Type_Matcher_V4alpha_MetadataMatcher {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The filter name to retrieve the Struct from the Metadata.
  public var filter: String = String()

  /// The path to retrieve the Value from the Struct.
  public var path: [Envoy_Type_Matcher_V4alpha_MetadataMatcher.PathSegment] = []

  /// The MetadataMatcher is matched if the value retrieved by path is matched to this value.
  public var value: Envoy_Type_Matcher_V4alpha_ValueMatcher {
    get {return _value ?? Envoy_Type_Matcher_V4alpha_ValueMatcher()}
    set {_value = newValue}
  }
  /// Returns true if `value` has been explicitly set.
  public var hasValue: Bool {return self._value != nil}
  /// Clears the value of `value`. Subsequent reads from it will return its default value.
  public mutating func clearValue() {self._value = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Specifies the segment in a path to retrieve value from Metadata.
  /// Note: Currently it's not supported to retrieve a value from a list in Metadata. This means that
  /// if the segment key refers to a list, it has to be the last segment in a path.
  public struct PathSegment {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var segment: Envoy_Type_Matcher_V4alpha_MetadataMatcher.PathSegment.OneOf_Segment? = nil

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
      public static func ==(lhs: Envoy_Type_Matcher_V4alpha_MetadataMatcher.PathSegment.OneOf_Segment, rhs: Envoy_Type_Matcher_V4alpha_MetadataMatcher.PathSegment.OneOf_Segment) -> Bool {
        switch (lhs, rhs) {
        case (.key(let l), .key(let r)): return l == r
        }
      }
    #endif
    }

    public init() {}
  }

  public init() {}

  fileprivate var _value: Envoy_Type_Matcher_V4alpha_ValueMatcher? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.type.matcher.v4alpha"

extension Envoy_Type_Matcher_V4alpha_MetadataMatcher: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".MetadataMatcher"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "filter"),
    2: .same(proto: "path"),
    3: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.filter)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.path)
      case 3: try decoder.decodeSingularMessageField(value: &self._value)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.filter.isEmpty {
      try visitor.visitSingularStringField(value: self.filter, fieldNumber: 1)
    }
    if !self.path.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.path, fieldNumber: 2)
    }
    if let v = self._value {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_Matcher_V4alpha_MetadataMatcher, rhs: Envoy_Type_Matcher_V4alpha_MetadataMatcher) -> Bool {
    if lhs.filter != rhs.filter {return false}
    if lhs.path != rhs.path {return false}
    if lhs._value != rhs._value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Type_Matcher_V4alpha_MetadataMatcher.PathSegment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Type_Matcher_V4alpha_MetadataMatcher.protoMessageName + ".PathSegment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "key"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        if self.segment != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.segment = .key(v)}
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

  public static func ==(lhs: Envoy_Type_Matcher_V4alpha_MetadataMatcher.PathSegment, rhs: Envoy_Type_Matcher_V4alpha_MetadataMatcher.PathSegment) -> Bool {
    if lhs.segment != rhs.segment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}