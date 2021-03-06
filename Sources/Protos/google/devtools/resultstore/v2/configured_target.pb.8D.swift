// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/resultstore/v2/configured_target.proto
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

/// Each ConfiguredTarget represents data for a given configuration of a given
/// target in a given Invocation.
/// Every ConfiguredTarget should have at least one Action as a child resource
/// before the invocation is finalized. Refer to the Action's documentation for
/// more info on this.
public struct Google_Devtools_Resultstore_V2_ConfiguredTarget {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name.  Its format must be:
  /// invocations/${INVOCATION_ID}/targets/${url_encode(TARGET_ID)}/configuredTargets/${url_encode(CONFIG_ID)}
  /// where ${CONFIG_ID} must match the ID of an existing Configuration under
  /// this Invocation.
  public var name: String = String()

  /// The resource ID components that identify the ConfiguredTarget. They must
  /// match the resource name after proper encoding.
  public var id: Google_Devtools_Resultstore_V2_ConfiguredTarget.Id {
    get {return _id ?? Google_Devtools_Resultstore_V2_ConfiguredTarget.Id()}
    set {_id = newValue}
  }
  /// Returns true if `id` has been explicitly set.
  public var hasID: Bool {return self._id != nil}
  /// Clears the value of `id`. Subsequent reads from it will return its default value.
  public mutating func clearID() {self._id = nil}

  /// The aggregate status for this configuration of this target. If testing
  /// was not requested, set this to the build status (e.g. BUILT or
  /// FAILED_TO_BUILD).
  public var statusAttributes: Google_Devtools_Resultstore_V2_StatusAttributes {
    get {return _statusAttributes ?? Google_Devtools_Resultstore_V2_StatusAttributes()}
    set {_statusAttributes = newValue}
  }
  /// Returns true if `statusAttributes` has been explicitly set.
  public var hasStatusAttributes: Bool {return self._statusAttributes != nil}
  /// Clears the value of `statusAttributes`. Subsequent reads from it will return its default value.
  public mutating func clearStatusAttributes() {self._statusAttributes = nil}

  /// Captures the start time and duration of this configured target.
  public var timing: Google_Devtools_Resultstore_V2_Timing {
    get {return _timing ?? Google_Devtools_Resultstore_V2_Timing()}
    set {_timing = newValue}
  }
  /// Returns true if `timing` has been explicitly set.
  public var hasTiming: Bool {return self._timing != nil}
  /// Clears the value of `timing`. Subsequent reads from it will return its default value.
  public mutating func clearTiming() {self._timing = nil}

  /// Test specific attributes for this ConfiguredTarget.
  public var testAttributes: Google_Devtools_Resultstore_V2_ConfiguredTestAttributes {
    get {return _testAttributes ?? Google_Devtools_Resultstore_V2_ConfiguredTestAttributes()}
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

  /// A list of file references for configured target level files.
  /// The file IDs must be unique within this list. Duplicate file IDs will
  /// result in an error. Files will be returned in lexicographical order by ID.
  public var files: [Google_Devtools_Resultstore_V2_File] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The resource ID components that identify the ConfiguredTarget.
  public struct Id {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The Invocation ID.
    public var invocationID: String = String()

    /// The Target ID.
    public var targetID: String = String()

    /// The Configuration ID.
    public var configurationID: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _id: Google_Devtools_Resultstore_V2_ConfiguredTarget.Id? = nil
  fileprivate var _statusAttributes: Google_Devtools_Resultstore_V2_StatusAttributes? = nil
  fileprivate var _timing: Google_Devtools_Resultstore_V2_Timing? = nil
  fileprivate var _testAttributes: Google_Devtools_Resultstore_V2_ConfiguredTestAttributes? = nil
}

/// Attributes that apply only to test actions under this configured target.
public struct Google_Devtools_Resultstore_V2_ConfiguredTestAttributes {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Total number of test runs. For example, in bazel this is specified with
  /// --runs_per_test. Zero if runs_per_test is not used.
  public var totalRunCount: Int32 = 0

  /// Total number of test shards. Zero if shard count was not specified.
  public var totalShardCount: Int32 = 0

  /// How long test is allowed to run.
  public var timeoutDuration: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _timeoutDuration ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_timeoutDuration = newValue}
  }
  /// Returns true if `timeoutDuration` has been explicitly set.
  public var hasTimeoutDuration: Bool {return self._timeoutDuration != nil}
  /// Clears the value of `timeoutDuration`. Subsequent reads from it will return its default value.
  public mutating func clearTimeoutDuration() {self._timeoutDuration = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _timeoutDuration: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.resultstore.v2"

extension Google_Devtools_Resultstore_V2_ConfiguredTarget: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConfiguredTarget"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "id"),
    3: .standard(proto: "status_attributes"),
    4: .same(proto: "timing"),
    6: .standard(proto: "test_attributes"),
    7: .same(proto: "properties"),
    8: .same(proto: "files"),
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
      case 6: try { try decoder.decodeSingularMessageField(value: &self._testAttributes) }()
      case 7: try { try decoder.decodeRepeatedMessageField(value: &self.properties) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.files) }()
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
    if let v = self._testAttributes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.properties.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.properties, fieldNumber: 7)
    }
    if !self.files.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.files, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_ConfiguredTarget, rhs: Google_Devtools_Resultstore_V2_ConfiguredTarget) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._id != rhs._id {return false}
    if lhs._statusAttributes != rhs._statusAttributes {return false}
    if lhs._timing != rhs._timing {return false}
    if lhs._testAttributes != rhs._testAttributes {return false}
    if lhs.properties != rhs.properties {return false}
    if lhs.files != rhs.files {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_ConfiguredTarget.Id: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Devtools_Resultstore_V2_ConfiguredTarget.protoMessageName + ".Id"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "invocation_id"),
    2: .standard(proto: "target_id"),
    3: .standard(proto: "configuration_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.invocationID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.targetID) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.configurationID) }()
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
    if !self.configurationID.isEmpty {
      try visitor.visitSingularStringField(value: self.configurationID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_ConfiguredTarget.Id, rhs: Google_Devtools_Resultstore_V2_ConfiguredTarget.Id) -> Bool {
    if lhs.invocationID != rhs.invocationID {return false}
    if lhs.targetID != rhs.targetID {return false}
    if lhs.configurationID != rhs.configurationID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_ConfiguredTestAttributes: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ConfiguredTestAttributes"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "total_run_count"),
    3: .standard(proto: "total_shard_count"),
    5: .standard(proto: "timeout_duration"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.totalRunCount) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.totalShardCount) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._timeoutDuration) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.totalRunCount != 0 {
      try visitor.visitSingularInt32Field(value: self.totalRunCount, fieldNumber: 2)
    }
    if self.totalShardCount != 0 {
      try visitor.visitSingularInt32Field(value: self.totalShardCount, fieldNumber: 3)
    }
    if let v = self._timeoutDuration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_ConfiguredTestAttributes, rhs: Google_Devtools_Resultstore_V2_ConfiguredTestAttributes) -> Bool {
    if lhs.totalRunCount != rhs.totalRunCount {return false}
    if lhs.totalShardCount != rhs.totalShardCount {return false}
    if lhs._timeoutDuration != rhs._timeoutDuration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
