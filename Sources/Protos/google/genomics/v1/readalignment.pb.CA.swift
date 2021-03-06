// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/genomics/v1/readalignment.proto
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

/// A linear alignment can be represented by one CIGAR string. Describes the
/// mapped position and local alignment of the read to the reference.
public struct Google_Genomics_V1_LinearAlignment {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The position of this alignment.
  public var position: Google_Genomics_V1_Position {
    get {return _position ?? Google_Genomics_V1_Position()}
    set {_position = newValue}
  }
  /// Returns true if `position` has been explicitly set.
  public var hasPosition: Bool {return self._position != nil}
  /// Clears the value of `position`. Subsequent reads from it will return its default value.
  public mutating func clearPosition() {self._position = nil}

  /// The mapping quality of this alignment. Represents how likely
  /// the read maps to this position as opposed to other locations.
  ///
  /// Specifically, this is -10 log10 Pr(mapping position is wrong), rounded to
  /// the nearest integer.
  public var mappingQuality: Int32 = 0

  /// Represents the local alignment of this sequence (alignment matches, indels,
  /// etc) against the reference.
  public var cigar: [Google_Genomics_V1_CigarUnit] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _position: Google_Genomics_V1_Position? = nil
}

/// A read alignment describes a linear alignment of a string of DNA to a
/// [reference sequence][google.genomics.v1.Reference], in addition to metadata
/// about the fragment (the molecule of DNA sequenced) and the read (the bases
/// which were read by the sequencer). A read is equivalent to a line in a SAM
/// file. A read belongs to exactly one read group and exactly one
/// [read group set][google.genomics.v1.ReadGroupSet].
///
/// For more genomics resource definitions, see [Fundamentals of Google
/// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
///
/// ### Reverse-stranded reads
///
/// Mapped reads (reads having a non-null `alignment`) can be aligned to either
/// the forward or the reverse strand of their associated reference. Strandedness
/// of a mapped read is encoded by `alignment.position.reverseStrand`.
///
/// If we consider the reference to be a forward-stranded coordinate space of
/// `[0, reference.length)` with `0` as the left-most position and
/// `reference.length` as the right-most position, reads are always aligned left
/// to right. That is, `alignment.position.position` always refers to the
/// left-most reference coordinate and `alignment.cigar` describes the alignment
/// of this read to the reference from left to right. All per-base fields such as
/// `alignedSequence` and `alignedQuality` share this same left-to-right
/// orientation; this is true of reads which are aligned to either strand. For
/// reverse-stranded reads, this means that `alignedSequence` is the reverse
/// complement of the bases that were originally reported by the sequencing
/// machine.
///
/// ### Generating a reference-aligned sequence string
///
/// When interacting with mapped reads, it's often useful to produce a string
/// representing the local alignment of the read to reference. The following
/// pseudocode demonstrates one way of doing this:
///
///     out = ""
///     offset = 0
///     for c in read.alignment.cigar {
///       switch c.operation {
///       case "ALIGNMENT_MATCH", "SEQUENCE_MATCH", "SEQUENCE_MISMATCH":
///         out += read.alignedSequence[offset:offset+c.operationLength]
///         offset += c.operationLength
///         break
///       case "CLIP_SOFT", "INSERT":
///         offset += c.operationLength
///         break
///       case "PAD":
///         out += repeat("*", c.operationLength)
///         break
///       case "DELETE":
///         out += repeat("-", c.operationLength)
///         break
///       case "SKIP":
///         out += repeat(" ", c.operationLength)
///         break
///       case "CLIP_HARD":
///         break
///       }
///     }
///     return out
///
/// ### Converting to SAM's CIGAR string
///
/// The following pseudocode generates a SAM CIGAR string from the
/// `cigar` field. Note that this is a lossy conversion
/// (`cigar.referenceSequence` is lost).
///
///     cigarMap = {
///       "ALIGNMENT_MATCH": "M",
///       "INSERT": "I",
///       "DELETE": "D",
///       "SKIP": "N",
///       "CLIP_SOFT": "S",
///       "CLIP_HARD": "H",
///       "PAD": "P",
///       "SEQUENCE_MATCH": "=",
///       "SEQUENCE_MISMATCH": "X",
///     }
///     cigarStr = ""
///     for c in read.alignment.cigar {
///       cigarStr += c.operationLength + cigarMap[c.operation]
///     }
///     return cigarStr
public struct Google_Genomics_V1_Read {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The server-generated read ID, unique across all reads. This is different
  /// from the `fragmentName`.
  public var id: String {
    get {return _storage._id}
    set {_uniqueStorage()._id = newValue}
  }

  /// The ID of the read group this read belongs to. A read belongs to exactly
  /// one read group. This is a server-generated ID which is distinct from SAM's
  /// RG tag (for that value, see
  /// [ReadGroup.name][google.genomics.v1.ReadGroup.name]).
  public var readGroupID: String {
    get {return _storage._readGroupID}
    set {_uniqueStorage()._readGroupID = newValue}
  }

  /// The ID of the read group set this read belongs to. A read belongs to
  /// exactly one read group set.
  public var readGroupSetID: String {
    get {return _storage._readGroupSetID}
    set {_uniqueStorage()._readGroupSetID = newValue}
  }

  /// The fragment name. Equivalent to QNAME (query template name) in SAM.
  public var fragmentName: String {
    get {return _storage._fragmentName}
    set {_uniqueStorage()._fragmentName = newValue}
  }

  /// The orientation and the distance between reads from the fragment are
  /// consistent with the sequencing protocol (SAM flag 0x2).
  public var properPlacement: Bool {
    get {return _storage._properPlacement}
    set {_uniqueStorage()._properPlacement = newValue}
  }

  /// The fragment is a PCR or optical duplicate (SAM flag 0x400).
  public var duplicateFragment: Bool {
    get {return _storage._duplicateFragment}
    set {_uniqueStorage()._duplicateFragment = newValue}
  }

  /// The observed length of the fragment, equivalent to TLEN in SAM.
  public var fragmentLength: Int32 {
    get {return _storage._fragmentLength}
    set {_uniqueStorage()._fragmentLength = newValue}
  }

  /// The read number in sequencing. 0-based and less than numberReads. This
  /// field replaces SAM flag 0x40 and 0x80.
  public var readNumber: Int32 {
    get {return _storage._readNumber}
    set {_uniqueStorage()._readNumber = newValue}
  }

  /// The number of reads in the fragment (extension to SAM flag 0x1).
  public var numberReads: Int32 {
    get {return _storage._numberReads}
    set {_uniqueStorage()._numberReads = newValue}
  }

  /// Whether this read did not pass filters, such as platform or vendor quality
  /// controls (SAM flag 0x200).
  public var failedVendorQualityChecks: Bool {
    get {return _storage._failedVendorQualityChecks}
    set {_uniqueStorage()._failedVendorQualityChecks = newValue}
  }

  /// The linear alignment for this alignment record. This field is null for
  /// unmapped reads.
  public var alignment: Google_Genomics_V1_LinearAlignment {
    get {return _storage._alignment ?? Google_Genomics_V1_LinearAlignment()}
    set {_uniqueStorage()._alignment = newValue}
  }
  /// Returns true if `alignment` has been explicitly set.
  public var hasAlignment: Bool {return _storage._alignment != nil}
  /// Clears the value of `alignment`. Subsequent reads from it will return its default value.
  public mutating func clearAlignment() {_uniqueStorage()._alignment = nil}

  /// Whether this alignment is secondary. Equivalent to SAM flag 0x100.
  /// A secondary alignment represents an alternative to the primary alignment
  /// for this read. Aligners may return secondary alignments if a read can map
  /// ambiguously to multiple coordinates in the genome. By convention, each read
  /// has one and only one alignment where both `secondaryAlignment`
  /// and `supplementaryAlignment` are false.
  public var secondaryAlignment: Bool {
    get {return _storage._secondaryAlignment}
    set {_uniqueStorage()._secondaryAlignment = newValue}
  }

  /// Whether this alignment is supplementary. Equivalent to SAM flag 0x800.
  /// Supplementary alignments are used in the representation of a chimeric
  /// alignment. In a chimeric alignment, a read is split into multiple
  /// linear alignments that map to different reference contigs. The first
  /// linear alignment in the read will be designated as the representative
  /// alignment; the remaining linear alignments will be designated as
  /// supplementary alignments. These alignments may have different mapping
  /// quality scores. In each linear alignment in a chimeric alignment, the read
  /// will be hard clipped. The `alignedSequence` and
  /// `alignedQuality` fields in the alignment record will only
  /// represent the bases for its respective linear alignment.
  public var supplementaryAlignment: Bool {
    get {return _storage._supplementaryAlignment}
    set {_uniqueStorage()._supplementaryAlignment = newValue}
  }

  /// The bases of the read sequence contained in this alignment record,
  /// **without CIGAR operations applied** (equivalent to SEQ in SAM).
  /// `alignedSequence` and `alignedQuality` may be
  /// shorter than the full read sequence and quality. This will occur if the
  /// alignment is part of a chimeric alignment, or if the read was trimmed. When
  /// this occurs, the CIGAR for this read will begin/end with a hard clip
  /// operator that will indicate the length of the excised sequence.
  public var alignedSequence: String {
    get {return _storage._alignedSequence}
    set {_uniqueStorage()._alignedSequence = newValue}
  }

  /// The quality of the read sequence contained in this alignment record
  /// (equivalent to QUAL in SAM).
  /// `alignedSequence` and `alignedQuality` may be shorter than the full read
  /// sequence and quality. This will occur if the alignment is part of a
  /// chimeric alignment, or if the read was trimmed. When this occurs, the CIGAR
  /// for this read will begin/end with a hard clip operator that will indicate
  /// the length of the excised sequence.
  public var alignedQuality: [Int32] {
    get {return _storage._alignedQuality}
    set {_uniqueStorage()._alignedQuality = newValue}
  }

  /// The mapping of the primary alignment of the
  /// `(readNumber+1)%numberReads` read in the fragment. It replaces
  /// mate position and mate strand in SAM.
  public var nextMatePosition: Google_Genomics_V1_Position {
    get {return _storage._nextMatePosition ?? Google_Genomics_V1_Position()}
    set {_uniqueStorage()._nextMatePosition = newValue}
  }
  /// Returns true if `nextMatePosition` has been explicitly set.
  public var hasNextMatePosition: Bool {return _storage._nextMatePosition != nil}
  /// Clears the value of `nextMatePosition`. Subsequent reads from it will return its default value.
  public mutating func clearNextMatePosition() {_uniqueStorage()._nextMatePosition = nil}

  /// A map of additional read alignment information. This must be of the form
  /// map<string, string[]> (string key mapping to a list of string values).
  public var info: Dictionary<String,SwiftProtobuf.Google_Protobuf_ListValue> {
    get {return _storage._info}
    set {_uniqueStorage()._info = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.genomics.v1"

extension Google_Genomics_V1_LinearAlignment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LinearAlignment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "position"),
    2: .standard(proto: "mapping_quality"),
    3: .same(proto: "cigar"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._position) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.mappingQuality) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.cigar) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._position {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.mappingQuality != 0 {
      try visitor.visitSingularInt32Field(value: self.mappingQuality, fieldNumber: 2)
    }
    if !self.cigar.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.cigar, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Genomics_V1_LinearAlignment, rhs: Google_Genomics_V1_LinearAlignment) -> Bool {
    if lhs._position != rhs._position {return false}
    if lhs.mappingQuality != rhs.mappingQuality {return false}
    if lhs.cigar != rhs.cigar {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Genomics_V1_Read: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Read"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "id"),
    2: .standard(proto: "read_group_id"),
    3: .standard(proto: "read_group_set_id"),
    4: .standard(proto: "fragment_name"),
    5: .standard(proto: "proper_placement"),
    6: .standard(proto: "duplicate_fragment"),
    7: .standard(proto: "fragment_length"),
    8: .standard(proto: "read_number"),
    9: .standard(proto: "number_reads"),
    10: .standard(proto: "failed_vendor_quality_checks"),
    11: .same(proto: "alignment"),
    12: .standard(proto: "secondary_alignment"),
    13: .standard(proto: "supplementary_alignment"),
    14: .standard(proto: "aligned_sequence"),
    15: .standard(proto: "aligned_quality"),
    16: .standard(proto: "next_mate_position"),
    17: .same(proto: "info"),
  ]

  fileprivate class _StorageClass {
    var _id: String = String()
    var _readGroupID: String = String()
    var _readGroupSetID: String = String()
    var _fragmentName: String = String()
    var _properPlacement: Bool = false
    var _duplicateFragment: Bool = false
    var _fragmentLength: Int32 = 0
    var _readNumber: Int32 = 0
    var _numberReads: Int32 = 0
    var _failedVendorQualityChecks: Bool = false
    var _alignment: Google_Genomics_V1_LinearAlignment? = nil
    var _secondaryAlignment: Bool = false
    var _supplementaryAlignment: Bool = false
    var _alignedSequence: String = String()
    var _alignedQuality: [Int32] = []
    var _nextMatePosition: Google_Genomics_V1_Position? = nil
    var _info: Dictionary<String,SwiftProtobuf.Google_Protobuf_ListValue> = [:]

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _id = source._id
      _readGroupID = source._readGroupID
      _readGroupSetID = source._readGroupSetID
      _fragmentName = source._fragmentName
      _properPlacement = source._properPlacement
      _duplicateFragment = source._duplicateFragment
      _fragmentLength = source._fragmentLength
      _readNumber = source._readNumber
      _numberReads = source._numberReads
      _failedVendorQualityChecks = source._failedVendorQualityChecks
      _alignment = source._alignment
      _secondaryAlignment = source._secondaryAlignment
      _supplementaryAlignment = source._supplementaryAlignment
      _alignedSequence = source._alignedSequence
      _alignedQuality = source._alignedQuality
      _nextMatePosition = source._nextMatePosition
      _info = source._info
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._id) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._readGroupID) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._readGroupSetID) }()
        case 4: try { try decoder.decodeSingularStringField(value: &_storage._fragmentName) }()
        case 5: try { try decoder.decodeSingularBoolField(value: &_storage._properPlacement) }()
        case 6: try { try decoder.decodeSingularBoolField(value: &_storage._duplicateFragment) }()
        case 7: try { try decoder.decodeSingularInt32Field(value: &_storage._fragmentLength) }()
        case 8: try { try decoder.decodeSingularInt32Field(value: &_storage._readNumber) }()
        case 9: try { try decoder.decodeSingularInt32Field(value: &_storage._numberReads) }()
        case 10: try { try decoder.decodeSingularBoolField(value: &_storage._failedVendorQualityChecks) }()
        case 11: try { try decoder.decodeSingularMessageField(value: &_storage._alignment) }()
        case 12: try { try decoder.decodeSingularBoolField(value: &_storage._secondaryAlignment) }()
        case 13: try { try decoder.decodeSingularBoolField(value: &_storage._supplementaryAlignment) }()
        case 14: try { try decoder.decodeSingularStringField(value: &_storage._alignedSequence) }()
        case 15: try { try decoder.decodeRepeatedInt32Field(value: &_storage._alignedQuality) }()
        case 16: try { try decoder.decodeSingularMessageField(value: &_storage._nextMatePosition) }()
        case 17: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_ListValue>.self, value: &_storage._info) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._id.isEmpty {
        try visitor.visitSingularStringField(value: _storage._id, fieldNumber: 1)
      }
      if !_storage._readGroupID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._readGroupID, fieldNumber: 2)
      }
      if !_storage._readGroupSetID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._readGroupSetID, fieldNumber: 3)
      }
      if !_storage._fragmentName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._fragmentName, fieldNumber: 4)
      }
      if _storage._properPlacement != false {
        try visitor.visitSingularBoolField(value: _storage._properPlacement, fieldNumber: 5)
      }
      if _storage._duplicateFragment != false {
        try visitor.visitSingularBoolField(value: _storage._duplicateFragment, fieldNumber: 6)
      }
      if _storage._fragmentLength != 0 {
        try visitor.visitSingularInt32Field(value: _storage._fragmentLength, fieldNumber: 7)
      }
      if _storage._readNumber != 0 {
        try visitor.visitSingularInt32Field(value: _storage._readNumber, fieldNumber: 8)
      }
      if _storage._numberReads != 0 {
        try visitor.visitSingularInt32Field(value: _storage._numberReads, fieldNumber: 9)
      }
      if _storage._failedVendorQualityChecks != false {
        try visitor.visitSingularBoolField(value: _storage._failedVendorQualityChecks, fieldNumber: 10)
      }
      if let v = _storage._alignment {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if _storage._secondaryAlignment != false {
        try visitor.visitSingularBoolField(value: _storage._secondaryAlignment, fieldNumber: 12)
      }
      if _storage._supplementaryAlignment != false {
        try visitor.visitSingularBoolField(value: _storage._supplementaryAlignment, fieldNumber: 13)
      }
      if !_storage._alignedSequence.isEmpty {
        try visitor.visitSingularStringField(value: _storage._alignedSequence, fieldNumber: 14)
      }
      if !_storage._alignedQuality.isEmpty {
        try visitor.visitPackedInt32Field(value: _storage._alignedQuality, fieldNumber: 15)
      }
      if let v = _storage._nextMatePosition {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 16)
      }
      if !_storage._info.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.Google_Protobuf_ListValue>.self, value: _storage._info, fieldNumber: 17)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Genomics_V1_Read, rhs: Google_Genomics_V1_Read) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._id != rhs_storage._id {return false}
        if _storage._readGroupID != rhs_storage._readGroupID {return false}
        if _storage._readGroupSetID != rhs_storage._readGroupSetID {return false}
        if _storage._fragmentName != rhs_storage._fragmentName {return false}
        if _storage._properPlacement != rhs_storage._properPlacement {return false}
        if _storage._duplicateFragment != rhs_storage._duplicateFragment {return false}
        if _storage._fragmentLength != rhs_storage._fragmentLength {return false}
        if _storage._readNumber != rhs_storage._readNumber {return false}
        if _storage._numberReads != rhs_storage._numberReads {return false}
        if _storage._failedVendorQualityChecks != rhs_storage._failedVendorQualityChecks {return false}
        if _storage._alignment != rhs_storage._alignment {return false}
        if _storage._secondaryAlignment != rhs_storage._secondaryAlignment {return false}
        if _storage._supplementaryAlignment != rhs_storage._supplementaryAlignment {return false}
        if _storage._alignedSequence != rhs_storage._alignedSequence {return false}
        if _storage._alignedQuality != rhs_storage._alignedQuality {return false}
        if _storage._nextMatePosition != rhs_storage._nextMatePosition {return false}
        if _storage._info != rhs_storage._info {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
