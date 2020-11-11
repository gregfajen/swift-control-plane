// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/bigtable/admin/v2/common.proto
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

/// Storage media types for persisting Bigtable data.
public enum Google_Bigtable_Admin_V2_StorageType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The user did not specify a storage type.
  case unspecified // = 0

  /// Flash (SSD) storage should be used.
  case ssd // = 1

  /// Magnetic drive (HDD) storage should be used.
  case hdd // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .ssd
    case 2: self = .hdd
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .ssd: return 1
    case .hdd: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Bigtable_Admin_V2_StorageType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Bigtable_Admin_V2_StorageType] = [
    .unspecified,
    .ssd,
    .hdd,
  ]
}

#endif  // swift(>=4.2)

/// Encapsulates progress related information for a Cloud Bigtable long
/// running operation.
public struct Google_Bigtable_Admin_V2_OperationProgress {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Percent completion of the operation.
  /// Values are between 0 and 100 inclusive.
  public var progressPercent: Int32 = 0

  /// Time the request was received.
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// If set, the time at which this operation failed or was completed
  /// successfully.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.bigtable.admin.v2"

extension Google_Bigtable_Admin_V2_StorageType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STORAGE_TYPE_UNSPECIFIED"),
    1: .same(proto: "SSD"),
    2: .same(proto: "HDD"),
  ]
}

extension Google_Bigtable_Admin_V2_OperationProgress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationProgress"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "progress_percent"),
    2: .standard(proto: "start_time"),
    3: .standard(proto: "end_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.progressPercent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.progressPercent != 0 {
      try visitor.visitSingularInt32Field(value: self.progressPercent, fieldNumber: 1)
    }
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Bigtable_Admin_V2_OperationProgress, rhs: Google_Bigtable_Admin_V2_OperationProgress) -> Bool {
    if lhs.progressPercent != rhs.progressPercent {return false}
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}