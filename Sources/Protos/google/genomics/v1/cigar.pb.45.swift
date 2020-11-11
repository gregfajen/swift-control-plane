// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/genomics/v1/cigar.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2016 Google Inc.
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

/// A single CIGAR operation.
public struct Google_Genomics_V1_CigarUnit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var operation: Google_Genomics_V1_CigarUnit.Operation = .unspecified

  /// The number of genomic bases that the operation runs for. Required.
  public var operationLength: Int64 = 0

  /// `referenceSequence` is only used at mismatches
  /// (`SEQUENCE_MISMATCH`) and deletions (`DELETE`).
  /// Filling this field replaces SAM's MD tag. If the relevant information is
  /// not available, this field is unset.
  public var referenceSequence: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Describes the different types of CIGAR alignment operations that exist.
  /// Used wherever CIGAR alignments are used.
  public enum Operation: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0

    /// An alignment match indicates that a sequence can be aligned to the
    /// reference without evidence of an INDEL. Unlike the
    /// `SEQUENCE_MATCH` and `SEQUENCE_MISMATCH` operators,
    /// the `ALIGNMENT_MATCH` operator does not indicate whether the
    /// reference and read sequences are an exact match. This operator is
    /// equivalent to SAM's `M`.
    case alignmentMatch // = 1

    /// The insert operator indicates that the read contains evidence of bases
    /// being inserted into the reference. This operator is equivalent to SAM's
    /// `I`.
    case insert // = 2

    /// The delete operator indicates that the read contains evidence of bases
    /// being deleted from the reference. This operator is equivalent to SAM's
    /// `D`.
    case delete // = 3

    /// The skip operator indicates that this read skips a long segment of the
    /// reference, but the bases have not been deleted. This operator is commonly
    /// used when working with RNA-seq data, where reads may skip long segments
    /// of the reference between exons. This operator is equivalent to SAM's
    /// `N`.
    case skip // = 4

    /// The soft clip operator indicates that bases at the start/end of a read
    /// have not been considered during alignment. This may occur if the majority
    /// of a read maps, except for low quality bases at the start/end of a read.
    /// This operator is equivalent to SAM's `S`. Bases that are soft
    /// clipped will still be stored in the read.
    case clipSoft // = 5

    /// The hard clip operator indicates that bases at the start/end of a read
    /// have been omitted from this alignment. This may occur if this linear
    /// alignment is part of a chimeric alignment, or if the read has been
    /// trimmed (for example, during error correction or to trim poly-A tails for
    /// RNA-seq). This operator is equivalent to SAM's `H`.
    case clipHard // = 6

    /// The pad operator indicates that there is padding in an alignment. This
    /// operator is equivalent to SAM's `P`.
    case pad // = 7

    /// This operator indicates that this portion of the aligned sequence exactly
    /// matches the reference. This operator is equivalent to SAM's `=`.
    case sequenceMatch // = 8

    /// This operator indicates that this portion of the aligned sequence is an
    /// alignment match to the reference, but a sequence mismatch. This can
    /// indicate a SNP or a read error. This operator is equivalent to SAM's
    /// `X`.
    case sequenceMismatch // = 9
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .alignmentMatch
      case 2: self = .insert
      case 3: self = .delete
      case 4: self = .skip
      case 5: self = .clipSoft
      case 6: self = .clipHard
      case 7: self = .pad
      case 8: self = .sequenceMatch
      case 9: self = .sequenceMismatch
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .alignmentMatch: return 1
      case .insert: return 2
      case .delete: return 3
      case .skip: return 4
      case .clipSoft: return 5
      case .clipHard: return 6
      case .pad: return 7
      case .sequenceMatch: return 8
      case .sequenceMismatch: return 9
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Genomics_V1_CigarUnit.Operation: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Genomics_V1_CigarUnit.Operation] = [
    .unspecified,
    .alignmentMatch,
    .insert,
    .delete,
    .skip,
    .clipSoft,
    .clipHard,
    .pad,
    .sequenceMatch,
    .sequenceMismatch,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.genomics.v1"

extension Google_Genomics_V1_CigarUnit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CigarUnit"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "operation"),
    2: .standard(proto: "operation_length"),
    3: .standard(proto: "reference_sequence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.operation) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.operationLength) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.referenceSequence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.operation != .unspecified {
      try visitor.visitSingularEnumField(value: self.operation, fieldNumber: 1)
    }
    if self.operationLength != 0 {
      try visitor.visitSingularInt64Field(value: self.operationLength, fieldNumber: 2)
    }
    if !self.referenceSequence.isEmpty {
      try visitor.visitSingularStringField(value: self.referenceSequence, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Genomics_V1_CigarUnit, rhs: Google_Genomics_V1_CigarUnit) -> Bool {
    if lhs.operation != rhs.operation {return false}
    if lhs.operationLength != rhs.operationLength {return false}
    if lhs.referenceSequence != rhs.referenceSequence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Genomics_V1_CigarUnit.Operation: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OPERATION_UNSPECIFIED"),
    1: .same(proto: "ALIGNMENT_MATCH"),
    2: .same(proto: "INSERT"),
    3: .same(proto: "DELETE"),
    4: .same(proto: "SKIP"),
    5: .same(proto: "CLIP_SOFT"),
    6: .same(proto: "CLIP_HARD"),
    7: .same(proto: "PAD"),
    8: .same(proto: "SEQUENCE_MATCH"),
    9: .same(proto: "SEQUENCE_MISMATCH"),
  ]
}