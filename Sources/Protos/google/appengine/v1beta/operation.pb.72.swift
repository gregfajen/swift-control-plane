// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/appengine/v1beta/operation.proto
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

/// Metadata for the given [google.longrunning.Operation][google.longrunning.Operation].
public struct Google_Appengine_V1beta_OperationMetadataV1Beta {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// API method that initiated this operation. Example:
  /// `google.appengine.v1beta.Versions.CreateVersion`.
  ///
  /// @OutputOnly
  public var method: String = String()

  /// Time that this operation was created.
  ///
  /// @OutputOnly
  public var insertTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _insertTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_insertTime = newValue}
  }
  /// Returns true if `insertTime` has been explicitly set.
  public var hasInsertTime: Bool {return self._insertTime != nil}
  /// Clears the value of `insertTime`. Subsequent reads from it will return its default value.
  public mutating func clearInsertTime() {self._insertTime = nil}

  /// Time that this operation completed.
  ///
  /// @OutputOnly
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// User who requested this operation.
  ///
  /// @OutputOnly
  public var user: String = String()

  /// Name of the resource that this operation is acting on. Example:
  /// `apps/myapp/services/default`.
  ///
  /// @OutputOnly
  public var target: String = String()

  /// Ephemeral message that may change every time the operation is polled.
  /// @OutputOnly
  public var ephemeralMessage: String = String()

  /// Durable messages that persist on every operation poll.
  /// @OutputOnly
  public var warning: [String] = []

  /// Metadata specific to the type of operation in progress.
  /// @OutputOnly
  public var methodMetadata: Google_Appengine_V1beta_OperationMetadataV1Beta.OneOf_MethodMetadata? = nil

  public var createVersionMetadata: Google_Appengine_V1beta_CreateVersionMetadataV1Beta {
    get {
      if case .createVersionMetadata(let v)? = methodMetadata {return v}
      return Google_Appengine_V1beta_CreateVersionMetadataV1Beta()
    }
    set {methodMetadata = .createVersionMetadata(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Metadata specific to the type of operation in progress.
  /// @OutputOnly
  public enum OneOf_MethodMetadata: Equatable {
    case createVersionMetadata(Google_Appengine_V1beta_CreateVersionMetadataV1Beta)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Appengine_V1beta_OperationMetadataV1Beta.OneOf_MethodMetadata, rhs: Google_Appengine_V1beta_OperationMetadataV1Beta.OneOf_MethodMetadata) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.createVersionMetadata, .createVersionMetadata): return {
        guard case .createVersionMetadata(let l) = lhs, case .createVersionMetadata(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _insertTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Metadata for the given [google.longrunning.Operation][google.longrunning.Operation] during a
/// [google.appengine.v1beta.CreateVersionRequest][google.appengine.v1beta.CreateVersionRequest].
public struct Google_Appengine_V1beta_CreateVersionMetadataV1Beta {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The Cloud Build ID if one was created as part of the version create.
  /// @OutputOnly
  public var cloudBuildID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.appengine.v1beta"

extension Google_Appengine_V1beta_OperationMetadataV1Beta: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationMetadataV1Beta"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "method"),
    2: .standard(proto: "insert_time"),
    3: .standard(proto: "end_time"),
    4: .same(proto: "user"),
    5: .same(proto: "target"),
    6: .standard(proto: "ephemeral_message"),
    7: .same(proto: "warning"),
    8: .standard(proto: "create_version_metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.method) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._insertTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.user) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.target) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.ephemeralMessage) }()
      case 7: try { try decoder.decodeRepeatedStringField(value: &self.warning) }()
      case 8: try {
        var v: Google_Appengine_V1beta_CreateVersionMetadataV1Beta?
        if let current = self.methodMetadata {
          try decoder.handleConflictingOneOf()
          if case .createVersionMetadata(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.methodMetadata = .createVersionMetadata(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.method.isEmpty {
      try visitor.visitSingularStringField(value: self.method, fieldNumber: 1)
    }
    if let v = self._insertTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.user.isEmpty {
      try visitor.visitSingularStringField(value: self.user, fieldNumber: 4)
    }
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 5)
    }
    if !self.ephemeralMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.ephemeralMessage, fieldNumber: 6)
    }
    if !self.warning.isEmpty {
      try visitor.visitRepeatedStringField(value: self.warning, fieldNumber: 7)
    }
    if case .createVersionMetadata(let v)? = self.methodMetadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1beta_OperationMetadataV1Beta, rhs: Google_Appengine_V1beta_OperationMetadataV1Beta) -> Bool {
    if lhs.method != rhs.method {return false}
    if lhs._insertTime != rhs._insertTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.user != rhs.user {return false}
    if lhs.target != rhs.target {return false}
    if lhs.ephemeralMessage != rhs.ephemeralMessage {return false}
    if lhs.warning != rhs.warning {return false}
    if lhs.methodMetadata != rhs.methodMetadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Appengine_V1beta_CreateVersionMetadataV1Beta: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateVersionMetadataV1Beta"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cloud_build_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cloudBuildID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cloudBuildID.isEmpty {
      try visitor.visitSingularStringField(value: self.cloudBuildID, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1beta_CreateVersionMetadataV1Beta, rhs: Google_Appengine_V1beta_CreateVersionMetadataV1Beta) -> Bool {
    if lhs.cloudBuildID != rhs.cloudBuildID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
