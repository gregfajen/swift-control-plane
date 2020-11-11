// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/functions/v1/operations.proto
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

/// A type of an operation.
public enum Google_Cloud_Functions_V1_OperationType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unknown operation type.
  case operationUnspecified // = 0

  /// Triggered by CreateFunction call
  case createFunction // = 1

  /// Triggered by UpdateFunction call
  case updateFunction // = 2

  /// Triggered by DeleteFunction call.
  case deleteFunction // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .operationUnspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .operationUnspecified
    case 1: self = .createFunction
    case 2: self = .updateFunction
    case 3: self = .deleteFunction
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .operationUnspecified: return 0
    case .createFunction: return 1
    case .updateFunction: return 2
    case .deleteFunction: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Functions_V1_OperationType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Functions_V1_OperationType] = [
    .operationUnspecified,
    .createFunction,
    .updateFunction,
    .deleteFunction,
  ]
}

#endif  // swift(>=4.2)

/// Metadata describing an [Operation][google.longrunning.Operation]
public struct Google_Cloud_Functions_V1_OperationMetadataV1 {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Target of the operation - for example
  /// projects/project-1/locations/region-1/functions/function-1
  public var target: String = String()

  /// Type of operation.
  public var type: Google_Cloud_Functions_V1_OperationType = .operationUnspecified

  /// The original request that started the operation.
  public var request: SwiftProtobuf.Google_Protobuf_Any {
    get {return _request ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_request = newValue}
  }
  /// Returns true if `request` has been explicitly set.
  public var hasRequest: Bool {return self._request != nil}
  /// Clears the value of `request`. Subsequent reads from it will return its default value.
  public mutating func clearRequest() {self._request = nil}

  /// Version id of the function created or updated by an API call.
  /// This field is only populated for Create and Update operations.
  public var versionID: Int64 = 0

  /// The last update timestamp of the operation.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  /// The Cloud Build ID of the function created or updated by an API call.
  /// This field is only populated for Create and Update operations.
  public var buildID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _request: SwiftProtobuf.Google_Protobuf_Any? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.functions.v1"

extension Google_Cloud_Functions_V1_OperationType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OPERATION_UNSPECIFIED"),
    1: .same(proto: "CREATE_FUNCTION"),
    2: .same(proto: "UPDATE_FUNCTION"),
    3: .same(proto: "DELETE_FUNCTION"),
  ]
}

extension Google_Cloud_Functions_V1_OperationMetadataV1: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationMetadataV1"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "target"),
    2: .same(proto: "type"),
    3: .same(proto: "request"),
    4: .standard(proto: "version_id"),
    5: .standard(proto: "update_time"),
    6: .standard(proto: "build_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.target) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._request) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.versionID) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.buildID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 1)
    }
    if self.type != .operationUnspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 2)
    }
    if let v = self._request {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.versionID != 0 {
      try visitor.visitSingularInt64Field(value: self.versionID, fieldNumber: 4)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.buildID.isEmpty {
      try visitor.visitSingularStringField(value: self.buildID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Functions_V1_OperationMetadataV1, rhs: Google_Cloud_Functions_V1_OperationMetadataV1) -> Bool {
    if lhs.target != rhs.target {return false}
    if lhs.type != rhs.type {return false}
    if lhs._request != rhs._request {return false}
    if lhs.versionID != rhs.versionID {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.buildID != rhs.buildID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
