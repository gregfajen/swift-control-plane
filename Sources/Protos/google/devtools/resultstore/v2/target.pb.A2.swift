// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/resultstore/v2/target.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
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

/// These correspond to the suffix of the rule name. Eg cc_test has type TEST.
public enum Google_Devtools_Resultstore_V2_TargetType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unspecified by the build system.
  case unspecified // = 0

  /// An application e.g. ios_application.
  case application // = 1

  /// A binary target e.g. cc_binary.
  case binary // = 2

  /// A library target e.g. java_library
  case library // = 3

  /// A package
  case package // = 4

  /// Any test target, in bazel that means a rule with a '_test' suffix.
  case test // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .application
    case 2: self = .binary
    case 3: self = .library
    case 4: self = .package
    case 5: self = .test
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .application: return 1
    case .binary: return 2
    case .library: return 3
    case .package: return 4
    case .test: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Devtools_Resultstore_V2_TargetType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Resultstore_V2_TargetType] = [
    .unspecified,
    .application,
    .binary,
    .library,
    .package,
    .test,
  ]
}

#endif  // swift(>=4.2)

/// Indicates how big the user indicated the test action was.
public enum Google_Devtools_Resultstore_V2_TestSize: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unspecified by the user.
  case unspecified // = 0

  /// Unit test taking less than 1 minute.
  case small // = 1

  /// Integration tests taking less than 5 minutes.
  case medium // = 2

  /// End-to-end tests taking less than 15 minutes.
  case large // = 3

  /// Even bigger than LARGE.
  case enormous // = 4

  /// Something that doesn't fit into the above categories.
  case otherSize // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .small
    case 2: self = .medium
    case 3: self = .large
    case 4: self = .enormous
    case 5: self = .otherSize
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .small: return 1
    case .medium: return 2
    case .large: return 3
    case .enormous: return 4
    case .otherSize: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Devtools_Resultstore_V2_TestSize: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Resultstore_V2_TestSize] = [
    .unspecified,
    .small,
    .medium,
    .large,
    .enormous,
    .otherSize,
  ]
}

#endif  // swift(>=4.2)

/// Each Target represents data for a given target in a given Invocation.
/// ConfiguredTarget and Action resources under each Target contain the bulk of
/// the data.
public struct Google_Devtools_Resultstore_V2_Target {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name.  Its format must be:
  /// invocations/${INVOCATION_ID}/targets/${url_encode(TARGET_ID)}
  public var name: String = String()

  /// The resource ID components that identify the Target. They must match the
  /// resource name after proper encoding.
  public var id: Google_Devtools_Resultstore_V2_Target.Id {
    get {return _id ?? Google_Devtools_Resultstore_V2_Target.Id()}
    set {_id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  public var hasID: Bool {return self._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  public mutating func clearID() {self._id = nil}

  /// This is the aggregate status of the target.
  public var statusAttributes: Google_Devtools_Resultstore_V2_StatusAttributes {
    get {return _statusAttributes ?? Google_Devtools_Resultstore_V2_StatusAttributes()}
    set {_statusAttributes = newValue}
  }
  /// Returns true if `statusAttributes` has been explicitly set.
  public var hasStatusAttributes: Bool {return self._statusAttributes != nil}
  /// Clears the value of `statusAttributes`. Subsequent reads from it will return its default value.
  public mutating func clearStatusAttributes() {self._statusAttributes = nil}

  /// When this target started and its duration.
  public var timing: Google_Devtools_Resultstore_V2_Timing {
    get {return _timing ?? Google_Devtools_Resultstore_V2_Timing()}
    set {_timing = newValue}
  }
  /// Returns true if `timing` has been explicitly set.
  public var hasTiming: Bool {return self._timing != nil}
  /// Clears the value of `timing`. Subsequent reads from it will return its default value.
  public mutating func clearTiming() {self._timing = nil}

  /// Attributes that apply to all targets.
  public var targetAttributes: Google_Devtools_Resultstore_V2_TargetAttributes {
    get {return _targetAttributes ?? Google_Devtools_Resultstore_V2_TargetAttributes()}
    set {_targetAttributes = newValue}
  }
  /// Returns true if `targetAttributes` has been explicitly set.
  public var hasTargetAttributes: Bool {return self._targetAttributes != nil}
  /// Clears the value of `targetAttributes`. Subsequent reads from it will return its default value.
  public mutating func clearTargetAttributes() {self._targetAttributes = nil}

  /// Attributes that apply to all test actions under this target.
  public var testAttributes: Google_Devtools_Resultstore_V2_TestAttributes {
    get {return _testAttributes ?? Google_Devtools_Resultstore_V2_TestAttributes()}
    set {_testAttributes = newValue}
  }
  /// Returns true if `testAttributes` has been explicitly set.
  public var hasTestAttributes: Bool {return self._testAttributes != nil}
  /// Clears the value of `testAttributes`. Subsequent reads from it will return its default value.
  public mutating func clearTestAttributes() {self._testAttributes = nil}

  /// Arbitrary name-value pairs.
  /// This is implemented as a multi-map. Multiple properties are allowed with
  /// the same key. Properties will be returned in lexicographical order by key.
  public var properties: [Google_Devtools_Resultstore_V2_Property] = []

  /// A list of file references for target level files.
  /// The file IDs must be unique within this list. Duplicate file IDs will
  /// result in an error. Files will be returned in lexicographical order by ID.
  /// Use this field to specify outputs not related to a configuration.
  public var files: [Google_Devtools_Resultstore_V2_File] = []

  /// Provides a hint to clients as to whether to display the Target to users.
  /// If true then clients likely want to display the Target by default.
  /// Once set to true, this may not be set back to false.
  public var visible: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The resource ID components that identify the Target.
  public struct Id {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The Invocation ID.
    public var invocationID: String = String()

    /// The Target ID.
    public var targetID: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _id: Google_Devtools_Resultstore_V2_Target.Id? = nil
  fileprivate var _statusAttributes: Google_Devtools_Resultstore_V2_StatusAttributes? = nil
  fileprivate var _timing: Google_Devtools_Resultstore_V2_Timing? = nil
  fileprivate var _targetAttributes: Google_Devtools_Resultstore_V2_TargetAttributes? = nil
  fileprivate var _testAttributes: Google_Devtools_Resultstore_V2_TestAttributes? = nil
}

/// Attributes that apply to all targets.
public struct Google_Devtools_Resultstore_V2_TargetAttributes {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// If known, indicates the type of this target.  In bazel this corresponds
  /// to the rule-suffix.
  public var type: Google_Devtools_Resultstore_V2_TargetType = .unspecified

  /// If known, the main language of this target, e.g. java, cc, python, etc.
  public var language: Google_Devtools_Resultstore_V2_Language = .unspecified

  /// The tags attribute of the build rule. These should be short, descriptive
  /// words, and there should only be a few of them.
  /// This is implemented as a set. All tags will be unique. Any duplicate tags
  /// will be ignored. Tags will be returned in lexicographical order.
  public var tags: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Attributes that apply only to test actions under this target.
public struct Google_Devtools_Resultstore_V2_TestAttributes {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Indicates how big the user indicated the test action was.
  public var size: Google_Devtools_Resultstore_V2_TestSize = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.resultstore.v2"

extension Google_Devtools_Resultstore_V2_TargetType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TARGET_TYPE_UNSPECIFIED"),
    1: .same(proto: "APPLICATION"),
    2: .same(proto: "BINARY"),
    3: .same(proto: "LIBRARY"),
    4: .same(proto: "PACKAGE"),
    5: .same(proto: "TEST"),
  ]
}

extension Google_Devtools_Resultstore_V2_TestSize: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TEST_SIZE_UNSPECIFIED"),
    1: .same(proto: "SMALL"),
    2: .same(proto: "MEDIUM"),
    3: .same(proto: "LARGE"),
    4: .same(proto: "ENORMOUS"),
    5: .same(proto: "OTHER_SIZE"),
  ]
}

extension Google_Devtools_Resultstore_V2_Target: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Target"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "id"),
    3: .standard(proto: "status_attributes"),
    4: .same(proto: "timing"),
    5: .standard(proto: "target_attributes"),
    6: .standard(proto: "test_attributes"),
    7: .same(proto: "properties"),
    8: .same(proto: "files"),
    10: .same(proto: "visible"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._id) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._statusAttributes) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._timing) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._targetAttributes) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._testAttributes) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.properties) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.files) }()
      case 10: try { try decoder.decodeSingularBoolField(value: &self.visible) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._id {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._statusAttributes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._timing {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._targetAttributes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._testAttributes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.properties.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.properties, fieldNumber: 7)
    }
    if !self.files.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.files, fieldNumber: 8)
    }
    if self.visible != false {
      try visitor.visitSingularBoolField(value: self.visible, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_Target, rhs: Google_Devtools_Resultstore_V2_Target) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._id != rhs._id {return false}
    if lhs._statusAttributes != rhs._statusAttributes {return false}
    if lhs._timing != rhs._timing {return false}
    if lhs._targetAttributes != rhs._targetAttributes {return false}
    if lhs._testAttributes != rhs._testAttributes {return false}
    if lhs.properties != rhs.properties {return false}
    if lhs.files != rhs.files {return false}
    if lhs.visible != rhs.visible {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_Target.Id: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Devtools_Resultstore_V2_Target.protoMessageName + ".Id"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "invocation_id"),
    2: .standard(proto: "target_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.invocationID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.targetID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.invocationID.isEmpty {
      try visitor.visitSingularStringField(value: self.invocationID, fieldNumber: 1)
    }
    if !self.targetID.isEmpty {
      try visitor.visitSingularStringField(value: self.targetID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_Target.Id, rhs: Google_Devtools_Resultstore_V2_Target.Id) -> Bool {
    if lhs.invocationID != rhs.invocationID {return false}
    if lhs.targetID != rhs.targetID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_TargetAttributes: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TargetAttributes"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "language"),
    3: .same(proto: "tags"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.language) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.tags) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .unspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if self.language != .unspecified {
      try visitor.visitSingularEnumField(value: self.language, fieldNumber: 2)
    }
    if !self.tags.isEmpty {
      try visitor.visitRepeatedStringField(value: self.tags, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_TargetAttributes, rhs: Google_Devtools_Resultstore_V2_TargetAttributes) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.language != rhs.language {return false}
    if lhs.tags != rhs.tags {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_TestAttributes: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TestAttributes"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "size"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.size) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.size != .unspecified {
      try visitor.visitSingularEnumField(value: self.size, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_TestAttributes, rhs: Google_Devtools_Resultstore_V2_TestAttributes) -> Bool {
    if lhs.size != rhs.size {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
