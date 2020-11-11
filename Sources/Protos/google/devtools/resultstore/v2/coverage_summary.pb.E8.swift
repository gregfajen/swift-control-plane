// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/resultstore/v2/coverage_summary.proto
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

/// Summary of line coverage
public struct Google_Devtools_Resultstore_V2_LineCoverageSummary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Number of lines instrumented for coverage.
  public var instrumentedLineCount: Int32 = 0

  /// Number of instrumented lines that were executed by the test.
  public var executedLineCount: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Summary of branch coverage
/// A branch may be:
///  * not executed.  Counted only in total.
///  * executed but not taken.  Appears in total and executed.
///  * executed and taken.  Appears in all three fields.
public struct Google_Devtools_Resultstore_V2_BranchCoverageSummary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The number of branches present in the file.
  public var totalBranchCount: Int32 = 0

  /// The number of branches executed out of the total branches present.
  /// A branch is executed when its condition is evaluated.
  /// This is <= total_branch_count as not all branches are executed.
  public var executedBranchCount: Int32 = 0

  /// The number of branches taken out of the total branches executed.
  /// A branch is taken when its condition is satisfied.
  /// This is <= executed_branch_count as not all executed branches are taken.
  public var takenBranchCount: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Summary of coverage in each language
public struct Google_Devtools_Resultstore_V2_LanguageCoverageSummary {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// This summary is for all files written in this programming language.
  public var language: Google_Devtools_Resultstore_V2_Language = .unspecified

  /// Summary of lines covered vs instrumented.
  public var lineSummary: Google_Devtools_Resultstore_V2_LineCoverageSummary {
    get {return _lineSummary ?? Google_Devtools_Resultstore_V2_LineCoverageSummary()}
    set {_lineSummary = newValue}
  }
  /// Returns true if `lineSummary` has been explicitly set.
  public var hasLineSummary: Bool {return self._lineSummary != nil}
  /// Clears the value of `lineSummary`. Subsequent reads from it will return its default value.
  public mutating func clearLineSummary() {self._lineSummary = nil}

  /// Summary of branch coverage.
  public var branchSummary: Google_Devtools_Resultstore_V2_BranchCoverageSummary {
    get {return _branchSummary ?? Google_Devtools_Resultstore_V2_BranchCoverageSummary()}
    set {_branchSummary = newValue}
  }
  /// Returns true if `branchSummary` has been explicitly set.
  public var hasBranchSummary: Bool {return self._branchSummary != nil}
  /// Clears the value of `branchSummary`. Subsequent reads from it will return its default value.
  public mutating func clearBranchSummary() {self._branchSummary = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _lineSummary: Google_Devtools_Resultstore_V2_LineCoverageSummary? = nil
  fileprivate var _branchSummary: Google_Devtools_Resultstore_V2_BranchCoverageSummary? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.resultstore.v2"

extension Google_Devtools_Resultstore_V2_LineCoverageSummary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LineCoverageSummary"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "instrumented_line_count"),
    2: .standard(proto: "executed_line_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.instrumentedLineCount) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.executedLineCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.instrumentedLineCount != 0 {
      try visitor.visitSingularInt32Field(value: self.instrumentedLineCount, fieldNumber: 1)
    }
    if self.executedLineCount != 0 {
      try visitor.visitSingularInt32Field(value: self.executedLineCount, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_LineCoverageSummary, rhs: Google_Devtools_Resultstore_V2_LineCoverageSummary) -> Bool {
    if lhs.instrumentedLineCount != rhs.instrumentedLineCount {return false}
    if lhs.executedLineCount != rhs.executedLineCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_BranchCoverageSummary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BranchCoverageSummary"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "total_branch_count"),
    2: .standard(proto: "executed_branch_count"),
    3: .standard(proto: "taken_branch_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.totalBranchCount) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.executedBranchCount) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.takenBranchCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.totalBranchCount != 0 {
      try visitor.visitSingularInt32Field(value: self.totalBranchCount, fieldNumber: 1)
    }
    if self.executedBranchCount != 0 {
      try visitor.visitSingularInt32Field(value: self.executedBranchCount, fieldNumber: 2)
    }
    if self.takenBranchCount != 0 {
      try visitor.visitSingularInt32Field(value: self.takenBranchCount, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_BranchCoverageSummary, rhs: Google_Devtools_Resultstore_V2_BranchCoverageSummary) -> Bool {
    if lhs.totalBranchCount != rhs.totalBranchCount {return false}
    if lhs.executedBranchCount != rhs.executedBranchCount {return false}
    if lhs.takenBranchCount != rhs.takenBranchCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_LanguageCoverageSummary: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LanguageCoverageSummary"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "language"),
    2: .standard(proto: "line_summary"),
    3: .standard(proto: "branch_summary"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.language) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._lineSummary) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._branchSummary) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.language != .unspecified {
      try visitor.visitSingularEnumField(value: self.language, fieldNumber: 1)
    }
    if let v = self._lineSummary {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._branchSummary {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_LanguageCoverageSummary, rhs: Google_Devtools_Resultstore_V2_LanguageCoverageSummary) -> Bool {
    if lhs.language != rhs.language {return false}
    if lhs._lineSummary != rhs._lineSummary {return false}
    if lhs._branchSummary != rhs._branchSummary {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}