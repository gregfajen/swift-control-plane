// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/resultstore/v2/coverage.proto
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

/// Describes line coverage for a file
public struct Google_Devtools_Resultstore_V2_LineCoverage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Which source lines in the file represent the start of a statement that was
  /// instrumented to detect whether it was executed by the test.
  ///
  /// This is a bitfield where i-th bit corresponds to the i-th line. Divide line
  /// number by 8 to get index into byte array. Mod line number by 8 to get bit
  /// number (0 = LSB, 7 = MSB).
  ///
  /// A 1 denotes the line was instrumented.
  /// A 0 denotes the line was not instrumented.
  public var instrumentedLines: Data = Data()

  /// Which of the instrumented source lines were executed by the test. Should
  /// include lines that were not instrumented.
  ///
  /// This is a bitfield where i-th bit corresponds to the i-th line. Divide line
  /// number by 8 to get index into byte array. Mod line number by 8 to get bit
  /// number (0 = LSB, 7 = MSB).
  ///
  /// A 1 denotes the line was executed.
  /// A 0 denotes the line was not executed.
  public var executedLines: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Describes branch coverage for a file
public struct Google_Devtools_Resultstore_V2_BranchCoverage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The field branch_present denotes the lines containing at least one branch.
  ///
  /// This is a bitfield where i-th bit corresponds to the i-th line. Divide line
  /// number by 8 to get index into byte array. Mod line number by 8 to get bit
  /// number (0 = LSB, 7 = MSB).
  ///
  /// A 1 denotes the line contains at least one branch.
  /// A 0 denotes the line contains no branches.
  public var branchPresent: Data = Data()

  /// Contains the number of branches present, only for the lines which have the
  /// corresponding bit set in branch_present, in a relative order ignoring
  /// lines which do not have any branches.
  public var branchesInLine: [Int32] = []

  /// As each branch can have any one of the following three states: not
  /// executed, executed but not taken, executed and taken.
  ///
  /// This is a bitfield where i-th bit corresponds to the i-th branch. Divide
  /// branch number by 8 to get index into byte array. Mod branch number by 8 to
  /// get bit number (0 = LSB, 7 = MSB).
  ///
  /// i-th bit of the following two byte arrays are used to denote the above
  /// mentioned states.
  ///
  /// not executed: i-th bit of executed == 0 && i-th bit of taken == 0
  /// executed but not taken: i-th bit of executed == 1 && i-th bit of taken == 0
  /// executed and taken: i-th bit of executed == 1 && i-th bit of taken == 1
  public var executed: Data = Data()

  /// Described above.
  public var taken: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Describes code coverage for a particular file under test.
public struct Google_Devtools_Resultstore_V2_FileCoverage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Path of source file within the SourceContext of this Invocation.
  public var path: String = String()

  /// Details of lines in a file required to calculate line coverage.
  public var lineCoverage: Google_Devtools_Resultstore_V2_LineCoverage {
    get {return _lineCoverage ?? Google_Devtools_Resultstore_V2_LineCoverage()}
    set {_lineCoverage = newValue}
  }
  /// Returns true if `lineCoverage` has been explicitly set.
  public var hasLineCoverage: Bool {return self._lineCoverage != nil}
  /// Clears the value of `lineCoverage`. Subsequent reads from it will return its default value.
  public mutating func clearLineCoverage() {self._lineCoverage = nil}

  /// Details of branches in a file required to calculate branch coverage.
  public var branchCoverage: Google_Devtools_Resultstore_V2_BranchCoverage {
    get {return _branchCoverage ?? Google_Devtools_Resultstore_V2_BranchCoverage()}
    set {_branchCoverage = newValue}
  }
  /// Returns true if `branchCoverage` has been explicitly set.
  public var hasBranchCoverage: Bool {return self._branchCoverage != nil}
  /// Clears the value of `branchCoverage`. Subsequent reads from it will return its default value.
  public mutating func clearBranchCoverage() {self._branchCoverage = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _lineCoverage: Google_Devtools_Resultstore_V2_LineCoverage? = nil
  fileprivate var _branchCoverage: Google_Devtools_Resultstore_V2_BranchCoverage? = nil
}

/// Describes code coverage for a build or test Action. This is used to store
/// baseline coverage for build Actions and test coverage for test Actions.
public struct Google_Devtools_Resultstore_V2_ActionCoverage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of coverage info for all source files that the TestResult covers.
  public var fileCoverages: [Google_Devtools_Resultstore_V2_FileCoverage] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Describes aggregate code coverage for a collection of build or test Actions.
/// A line or branch is covered if and only if it is covered in any of the build
/// or test actions.
public struct Google_Devtools_Resultstore_V2_AggregateCoverage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Aggregated coverage info for all source files that the actions cover.
  public var fileCoverages: [Google_Devtools_Resultstore_V2_FileCoverage] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.resultstore.v2"

extension Google_Devtools_Resultstore_V2_LineCoverage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LineCoverage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "instrumented_lines"),
    2: .standard(proto: "executed_lines"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.instrumentedLines) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.executedLines) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.instrumentedLines.isEmpty {
      try visitor.visitSingularBytesField(value: self.instrumentedLines, fieldNumber: 1)
    }
    if !self.executedLines.isEmpty {
      try visitor.visitSingularBytesField(value: self.executedLines, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_LineCoverage, rhs: Google_Devtools_Resultstore_V2_LineCoverage) -> Bool {
    if lhs.instrumentedLines != rhs.instrumentedLines {return false}
    if lhs.executedLines != rhs.executedLines {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_BranchCoverage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BranchCoverage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "branch_present"),
    2: .standard(proto: "branches_in_line"),
    3: .same(proto: "executed"),
    4: .same(proto: "taken"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.branchPresent) }()
      case 2: try { try decoder.decodeRepeatedInt32Field(value: &self.branchesInLine) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.executed) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.taken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.branchPresent.isEmpty {
      try visitor.visitSingularBytesField(value: self.branchPresent, fieldNumber: 1)
    }
    if !self.branchesInLine.isEmpty {
      try visitor.visitPackedInt32Field(value: self.branchesInLine, fieldNumber: 2)
    }
    if !self.executed.isEmpty {
      try visitor.visitSingularBytesField(value: self.executed, fieldNumber: 3)
    }
    if !self.taken.isEmpty {
      try visitor.visitSingularBytesField(value: self.taken, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_BranchCoverage, rhs: Google_Devtools_Resultstore_V2_BranchCoverage) -> Bool {
    if lhs.branchPresent != rhs.branchPresent {return false}
    if lhs.branchesInLine != rhs.branchesInLine {return false}
    if lhs.executed != rhs.executed {return false}
    if lhs.taken != rhs.taken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_FileCoverage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FileCoverage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
    2: .standard(proto: "line_coverage"),
    3: .standard(proto: "branch_coverage"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._lineCoverage) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._branchCoverage) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    if let v = self._lineCoverage {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._branchCoverage {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_FileCoverage, rhs: Google_Devtools_Resultstore_V2_FileCoverage) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs._lineCoverage != rhs._lineCoverage {return false}
    if lhs._branchCoverage != rhs._branchCoverage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_ActionCoverage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ActionCoverage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "file_coverages"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.fileCoverages) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fileCoverages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fileCoverages, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_ActionCoverage, rhs: Google_Devtools_Resultstore_V2_ActionCoverage) -> Bool {
    if lhs.fileCoverages != rhs.fileCoverages {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Resultstore_V2_AggregateCoverage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AggregateCoverage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "file_coverages"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.fileCoverages) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.fileCoverages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fileCoverages, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Resultstore_V2_AggregateCoverage, rhs: Google_Devtools_Resultstore_V2_AggregateCoverage) -> Bool {
    if lhs.fileCoverages != rhs.fileCoverages {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
