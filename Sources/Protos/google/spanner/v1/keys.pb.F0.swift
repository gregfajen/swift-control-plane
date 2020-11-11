// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/spanner/v1/keys.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
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

/// KeyRange represents a range of rows in a table or index.
///
/// A range has a start key and an end key. These keys can be open or
/// closed, indicating if the range includes rows with that key.
///
/// Keys are represented by lists, where the ith value in the list
/// corresponds to the ith component of the table or index primary key.
/// Individual values are encoded as described
/// [here][google.spanner.v1.TypeCode].
///
/// For example, consider the following table definition:
///
///     CREATE TABLE UserEvents (
///       UserName STRING(MAX),
///       EventDate STRING(10)
///     ) PRIMARY KEY(UserName, EventDate);
///
/// The following keys name rows in this table:
///
///     ["Bob", "2014-09-23"]
///     ["Alfred", "2015-06-12"]
///
/// Since the `UserEvents` table's `PRIMARY KEY` clause names two
/// columns, each `UserEvents` key has two elements; the first is the
/// `UserName`, and the second is the `EventDate`.
///
/// Key ranges with multiple components are interpreted
/// lexicographically by component using the table or index key's declared
/// sort order. For example, the following range returns all events for
/// user `"Bob"` that occurred in the year 2015:
///
///     "start_closed": ["Bob", "2015-01-01"]
///     "end_closed": ["Bob", "2015-12-31"]
///
/// Start and end keys can omit trailing key components. This affects the
/// inclusion and exclusion of rows that exactly match the provided key
/// components: if the key is closed, then rows that exactly match the
/// provided components are included; if the key is open, then rows
/// that exactly match are not included.
///
/// For example, the following range includes all events for `"Bob"` that
/// occurred during and after the year 2000:
///
///     "start_closed": ["Bob", "2000-01-01"]
///     "end_closed": ["Bob"]
///
/// The next example retrieves all events for `"Bob"`:
///
///     "start_closed": ["Bob"]
///     "end_closed": ["Bob"]
///
/// To retrieve events before the year 2000:
///
///     "start_closed": ["Bob"]
///     "end_open": ["Bob", "2000-01-01"]
///
/// The following range includes all rows in the table:
///
///     "start_closed": []
///     "end_closed": []
///
/// This range returns all users whose `UserName` begins with any
/// character from A to C:
///
///     "start_closed": ["A"]
///     "end_open": ["D"]
///
/// This range returns all users whose `UserName` begins with B:
///
///     "start_closed": ["B"]
///     "end_open": ["C"]
///
/// Key ranges honor column sort order. For example, suppose a table is
/// defined as follows:
///
///     CREATE TABLE DescendingSortedTable {
///       Key INT64,
///       ...
///     ) PRIMARY KEY(Key DESC);
///
/// The following range retrieves all rows with key values between 1
/// and 100 inclusive:
///
///     "start_closed": ["100"]
///     "end_closed": ["1"]
///
/// Note that 100 is passed as the start, and 1 is passed as the end,
/// because `Key` is a descending column in the schema.
public struct Google_Spanner_V1_KeyRange {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The start key must be provided. It can be either closed or open.
  public var startKeyType: Google_Spanner_V1_KeyRange.OneOf_StartKeyType? = nil

  /// If the start is closed, then the range includes all rows whose
  /// first `len(start_closed)` key columns exactly match `start_closed`.
  public var startClosed: SwiftProtobuf.Google_Protobuf_ListValue {
    get {
      if case .startClosed(let v)? = startKeyType {return v}
      return SwiftProtobuf.Google_Protobuf_ListValue()
    }
    set {startKeyType = .startClosed(newValue)}
  }

  /// If the start is open, then the range excludes rows whose first
  /// `len(start_open)` key columns exactly match `start_open`.
  public var startOpen: SwiftProtobuf.Google_Protobuf_ListValue {
    get {
      if case .startOpen(let v)? = startKeyType {return v}
      return SwiftProtobuf.Google_Protobuf_ListValue()
    }
    set {startKeyType = .startOpen(newValue)}
  }

  /// The end key must be provided. It can be either closed or open.
  public var endKeyType: Google_Spanner_V1_KeyRange.OneOf_EndKeyType? = nil

  /// If the end is closed, then the range includes all rows whose
  /// first `len(end_closed)` key columns exactly match `end_closed`.
  public var endClosed: SwiftProtobuf.Google_Protobuf_ListValue {
    get {
      if case .endClosed(let v)? = endKeyType {return v}
      return SwiftProtobuf.Google_Protobuf_ListValue()
    }
    set {endKeyType = .endClosed(newValue)}
  }

  /// If the end is open, then the range excludes rows whose first
  /// `len(end_open)` key columns exactly match `end_open`.
  public var endOpen: SwiftProtobuf.Google_Protobuf_ListValue {
    get {
      if case .endOpen(let v)? = endKeyType {return v}
      return SwiftProtobuf.Google_Protobuf_ListValue()
    }
    set {endKeyType = .endOpen(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The start key must be provided. It can be either closed or open.
  public enum OneOf_StartKeyType: Equatable {
    /// If the start is closed, then the range includes all rows whose
    /// first `len(start_closed)` key columns exactly match `start_closed`.
    case startClosed(SwiftProtobuf.Google_Protobuf_ListValue)
    /// If the start is open, then the range excludes rows whose first
    /// `len(start_open)` key columns exactly match `start_open`.
    case startOpen(SwiftProtobuf.Google_Protobuf_ListValue)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Spanner_V1_KeyRange.OneOf_StartKeyType, rhs: Google_Spanner_V1_KeyRange.OneOf_StartKeyType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.startClosed, .startClosed): return {
        guard case .startClosed(let l) = lhs, case .startClosed(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.startOpen, .startOpen): return {
        guard case .startOpen(let l) = lhs, case .startOpen(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// The end key must be provided. It can be either closed or open.
  public enum OneOf_EndKeyType: Equatable {
    /// If the end is closed, then the range includes all rows whose
    /// first `len(end_closed)` key columns exactly match `end_closed`.
    case endClosed(SwiftProtobuf.Google_Protobuf_ListValue)
    /// If the end is open, then the range excludes rows whose first
    /// `len(end_open)` key columns exactly match `end_open`.
    case endOpen(SwiftProtobuf.Google_Protobuf_ListValue)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Spanner_V1_KeyRange.OneOf_EndKeyType, rhs: Google_Spanner_V1_KeyRange.OneOf_EndKeyType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.endClosed, .endClosed): return {
        guard case .endClosed(let l) = lhs, case .endClosed(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.endOpen, .endOpen): return {
        guard case .endOpen(let l) = lhs, case .endOpen(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// `KeySet` defines a collection of Cloud Spanner keys and/or key ranges. All
/// the keys are expected to be in the same table or index. The keys need
/// not be sorted in any particular way.
///
/// If the same key is specified multiple times in the set (for example
/// if two ranges, two keys, or a key and a range overlap), Cloud Spanner
/// behaves as if the key were only specified once.
public struct Google_Spanner_V1_KeySet {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of specific keys. Entries in `keys` should have exactly as
  /// many elements as there are columns in the primary or index key
  /// with which this `KeySet` is used.  Individual key values are
  /// encoded as described [here][google.spanner.v1.TypeCode].
  public var keys: [SwiftProtobuf.Google_Protobuf_ListValue] = []

  /// A list of key ranges. See [KeyRange][google.spanner.v1.KeyRange] for more information about
  /// key range specifications.
  public var ranges: [Google_Spanner_V1_KeyRange] = []

  /// For convenience `all` can be set to `true` to indicate that this
  /// `KeySet` matches all keys in the table or index. Note that any keys
  /// specified in `keys` or `ranges` are only yielded once.
  public var all: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.spanner.v1"

extension Google_Spanner_V1_KeyRange: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".KeyRange"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_closed"),
    2: .standard(proto: "start_open"),
    3: .standard(proto: "end_closed"),
    4: .standard(proto: "end_open"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: SwiftProtobuf.Google_Protobuf_ListValue?
        if let current = self.startKeyType {
          try decoder.handleConflictingOneOf()
          if case .startClosed(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.startKeyType = .startClosed(v)}
      }()
      case 2: try {
        var v: SwiftProtobuf.Google_Protobuf_ListValue?
        if let current = self.startKeyType {
          try decoder.handleConflictingOneOf()
          if case .startOpen(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.startKeyType = .startOpen(v)}
      }()
      case 3: try {
        var v: SwiftProtobuf.Google_Protobuf_ListValue?
        if let current = self.endKeyType {
          try decoder.handleConflictingOneOf()
          if case .endClosed(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.endKeyType = .endClosed(v)}
      }()
      case 4: try {
        var v: SwiftProtobuf.Google_Protobuf_ListValue?
        if let current = self.endKeyType {
          try decoder.handleConflictingOneOf()
          if case .endOpen(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.endKeyType = .endOpen(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.startKeyType {
    case .startClosed?: try {
      guard case .startClosed(let v)? = self.startKeyType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .startOpen?: try {
      guard case .startOpen(let v)? = self.startKeyType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.endKeyType {
    case .endClosed?: try {
      guard case .endClosed(let v)? = self.endKeyType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .endOpen?: try {
      guard case .endOpen(let v)? = self.endKeyType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_KeyRange, rhs: Google_Spanner_V1_KeyRange) -> Bool {
    if lhs.startKeyType != rhs.startKeyType {return false}
    if lhs.endKeyType != rhs.endKeyType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Spanner_V1_KeySet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".KeySet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "keys"),
    2: .same(proto: "ranges"),
    3: .same(proto: "all"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.keys) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.ranges) }()
      case 3: try { try decoder.decodeSingularBoolField(value: &self.all) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.keys.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.keys, fieldNumber: 1)
    }
    if !self.ranges.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.ranges, fieldNumber: 2)
    }
    if self.all != false {
      try visitor.visitSingularBoolField(value: self.all, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Spanner_V1_KeySet, rhs: Google_Spanner_V1_KeySet) -> Bool {
    if lhs.keys != rhs.keys {return false}
    if lhs.ranges != rhs.ranges {return false}
    if lhs.all != rhs.all {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
