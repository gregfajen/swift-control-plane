// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/firestore/admin/v1beta2/operation.proto
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

/// Describes the state of the operation.
public enum Google_Firestore_Admin_V1beta2_OperationState: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unspecified.
  case unspecified // = 0

  /// Request is being prepared for processing.
  case initializing // = 1

  /// Request is actively being processed.
  case processing // = 2

  /// Request is in the process of being cancelled after user called
  /// google.longrunning.Operations.CancelOperation on the operation.
  case cancelling // = 3

  /// Request has been processed and is in its finalization stage.
  case finalizing // = 4

  /// Request has completed successfully.
  case successful // = 5

  /// Request has finished being processed, but encountered an error.
  case failed // = 6

  /// Request has finished being cancelled after user called
  /// google.longrunning.Operations.CancelOperation.
  case cancelled // = 7
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .initializing
    case 2: self = .processing
    case 3: self = .cancelling
    case 4: self = .finalizing
    case 5: self = .successful
    case 6: self = .failed
    case 7: self = .cancelled
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .initializing: return 1
    case .processing: return 2
    case .cancelling: return 3
    case .finalizing: return 4
    case .successful: return 5
    case .failed: return 6
    case .cancelled: return 7
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Firestore_Admin_V1beta2_OperationState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Firestore_Admin_V1beta2_OperationState] = [
    .unspecified,
    .initializing,
    .processing,
    .cancelling,
    .finalizing,
    .successful,
    .failed,
    .cancelled,
  ]
}

#endif  // swift(>=4.2)

/// Metadata for [google.longrunning.Operation][google.longrunning.Operation] results from
/// [FirestoreAdmin.CreateIndex][google.firestore.admin.v1beta2.FirestoreAdmin.CreateIndex].
public struct Google_Firestore_Admin_V1beta2_IndexOperationMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The time this operation started.
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// The index resource that this operation is acting on. For example:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  public var index: String = String()

  /// The state of the operation.
  public var state: Google_Firestore_Admin_V1beta2_OperationState = .unspecified

  /// The progress, in documents, of this operation.
  public var progressDocuments: Google_Firestore_Admin_V1beta2_Progress {
    get {return _progressDocuments ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_progressDocuments = newValue}
  }
  /// Returns true if `progressDocuments` has been explicitly set.
  public var hasProgressDocuments: Bool {return self._progressDocuments != nil}
  /// Clears the value of `progressDocuments`. Subsequent reads from it will return its default value.
  public mutating func clearProgressDocuments() {self._progressDocuments = nil}

  /// The progress, in bytes, of this operation.
  public var progressBytes: Google_Firestore_Admin_V1beta2_Progress {
    get {return _progressBytes ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_progressBytes = newValue}
  }
  /// Returns true if `progressBytes` has been explicitly set.
  public var hasProgressBytes: Bool {return self._progressBytes != nil}
  /// Clears the value of `progressBytes`. Subsequent reads from it will return its default value.
  public mutating func clearProgressBytes() {self._progressBytes = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _progressDocuments: Google_Firestore_Admin_V1beta2_Progress? = nil
  fileprivate var _progressBytes: Google_Firestore_Admin_V1beta2_Progress? = nil
}

/// Metadata for [google.longrunning.Operation][google.longrunning.Operation] results from
/// [FirestoreAdmin.UpdateField][google.firestore.admin.v1beta2.FirestoreAdmin.UpdateField].
public struct Google_Firestore_Admin_V1beta2_FieldOperationMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The time this operation started.
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// The field resource that this operation is acting on. For example:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  public var field: String = String()

  /// A list of [IndexConfigDelta][google.firestore.admin.v1beta2.FieldOperationMetadata.IndexConfigDelta], which describe the intent of this
  /// operation.
  public var indexConfigDeltas: [Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta] = []

  /// The state of the operation.
  public var state: Google_Firestore_Admin_V1beta2_OperationState = .unspecified

  /// The progress, in documents, of this operation.
  public var documentProgress: Google_Firestore_Admin_V1beta2_Progress {
    get {return _documentProgress ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_documentProgress = newValue}
  }
  /// Returns true if `documentProgress` has been explicitly set.
  public var hasDocumentProgress: Bool {return self._documentProgress != nil}
  /// Clears the value of `documentProgress`. Subsequent reads from it will return its default value.
  public mutating func clearDocumentProgress() {self._documentProgress = nil}

  /// The progress, in bytes, of this operation.
  public var bytesProgress: Google_Firestore_Admin_V1beta2_Progress {
    get {return _bytesProgress ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_bytesProgress = newValue}
  }
  /// Returns true if `bytesProgress` has been explicitly set.
  public var hasBytesProgress: Bool {return self._bytesProgress != nil}
  /// Clears the value of `bytesProgress`. Subsequent reads from it will return its default value.
  public mutating func clearBytesProgress() {self._bytesProgress = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Information about an index configuration change.
  public struct IndexConfigDelta {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Specifies how the index is changing.
    public var changeType: Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta.ChangeType = .unspecified

    /// The index being changed.
    public var index: Google_Firestore_Admin_V1beta2_Index {
      get {return _index ?? Google_Firestore_Admin_V1beta2_Index()}
      set {_index = newValue}
    }
    /// Returns true if `index` has been explicitly set.
    public var hasIndex: Bool {return self._index != nil}
    /// Clears the value of `index`. Subsequent reads from it will return its default value.
    public mutating func clearIndex() {self._index = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Specifies how the index is changing.
    public enum ChangeType: SwiftProtobuf.Enum {
      public typealias RawValue = Int

      /// The type of change is not specified or known.
      case unspecified // = 0

      /// The single field index is being added.
      case add // = 1

      /// The single field index is being removed.
      case remove // = 2
      case UNRECOGNIZED(Int)

      public init() {
        self = .unspecified
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unspecified
        case 1: self = .add
        case 2: self = .remove
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .unspecified: return 0
        case .add: return 1
        case .remove: return 2
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    public init() {}

    fileprivate var _index: Google_Firestore_Admin_V1beta2_Index? = nil
  }

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _documentProgress: Google_Firestore_Admin_V1beta2_Progress? = nil
  fileprivate var _bytesProgress: Google_Firestore_Admin_V1beta2_Progress? = nil
}

#if swift(>=4.2)

extension Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta.ChangeType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta.ChangeType] = [
    .unspecified,
    .add,
    .remove,
  ]
}

#endif  // swift(>=4.2)

/// Metadata for [google.longrunning.Operation][google.longrunning.Operation] results from
/// [FirestoreAdmin.ExportDocuments][google.firestore.admin.v1beta2.FirestoreAdmin.ExportDocuments].
public struct Google_Firestore_Admin_V1beta2_ExportDocumentsMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The time this operation started.
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// The state of the export operation.
  public var operationState: Google_Firestore_Admin_V1beta2_OperationState = .unspecified

  /// The progress, in documents, of this operation.
  public var progressDocuments: Google_Firestore_Admin_V1beta2_Progress {
    get {return _progressDocuments ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_progressDocuments = newValue}
  }
  /// Returns true if `progressDocuments` has been explicitly set.
  public var hasProgressDocuments: Bool {return self._progressDocuments != nil}
  /// Clears the value of `progressDocuments`. Subsequent reads from it will return its default value.
  public mutating func clearProgressDocuments() {self._progressDocuments = nil}

  /// The progress, in bytes, of this operation.
  public var progressBytes: Google_Firestore_Admin_V1beta2_Progress {
    get {return _progressBytes ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_progressBytes = newValue}
  }
  /// Returns true if `progressBytes` has been explicitly set.
  public var hasProgressBytes: Bool {return self._progressBytes != nil}
  /// Clears the value of `progressBytes`. Subsequent reads from it will return its default value.
  public mutating func clearProgressBytes() {self._progressBytes = nil}

  /// Which collection ids are being exported.
  public var collectionIds: [String] = []

  /// Where the entities are being exported to.
  public var outputUriPrefix: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _progressDocuments: Google_Firestore_Admin_V1beta2_Progress? = nil
  fileprivate var _progressBytes: Google_Firestore_Admin_V1beta2_Progress? = nil
}

/// Metadata for [google.longrunning.Operation][google.longrunning.Operation] results from
/// [FirestoreAdmin.ImportDocuments][google.firestore.admin.v1beta2.FirestoreAdmin.ImportDocuments].
public struct Google_Firestore_Admin_V1beta2_ImportDocumentsMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The time this operation started.
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// The time this operation completed. Will be unset if operation still in
  /// progress.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// The state of the import operation.
  public var operationState: Google_Firestore_Admin_V1beta2_OperationState = .unspecified

  /// The progress, in documents, of this operation.
  public var progressDocuments: Google_Firestore_Admin_V1beta2_Progress {
    get {return _progressDocuments ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_progressDocuments = newValue}
  }
  /// Returns true if `progressDocuments` has been explicitly set.
  public var hasProgressDocuments: Bool {return self._progressDocuments != nil}
  /// Clears the value of `progressDocuments`. Subsequent reads from it will return its default value.
  public mutating func clearProgressDocuments() {self._progressDocuments = nil}

  /// The progress, in bytes, of this operation.
  public var progressBytes: Google_Firestore_Admin_V1beta2_Progress {
    get {return _progressBytes ?? Google_Firestore_Admin_V1beta2_Progress()}
    set {_progressBytes = newValue}
  }
  /// Returns true if `progressBytes` has been explicitly set.
  public var hasProgressBytes: Bool {return self._progressBytes != nil}
  /// Clears the value of `progressBytes`. Subsequent reads from it will return its default value.
  public mutating func clearProgressBytes() {self._progressBytes = nil}

  /// Which collection ids are being imported.
  public var collectionIds: [String] = []

  /// The location of the documents being imported.
  public var inputUriPrefix: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _progressDocuments: Google_Firestore_Admin_V1beta2_Progress? = nil
  fileprivate var _progressBytes: Google_Firestore_Admin_V1beta2_Progress? = nil
}

/// Returned in the [google.longrunning.Operation][google.longrunning.Operation] response field.
public struct Google_Firestore_Admin_V1beta2_ExportDocumentsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Location of the output files. This can be used to begin an import
  /// into Cloud Firestore (this project or another project) after the operation
  /// completes successfully.
  public var outputUriPrefix: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Describes the progress of the operation.
/// Unit of work is generic and must be interpreted based on where [Progress][google.firestore.admin.v1beta2.Progress]
/// is used.
public struct Google_Firestore_Admin_V1beta2_Progress {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The amount of work estimated.
  public var estimatedWork: Int64 = 0

  /// The amount of work completed.
  public var completedWork: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.firestore.admin.v1beta2"

extension Google_Firestore_Admin_V1beta2_OperationState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "OPERATION_STATE_UNSPECIFIED"),
    1: .same(proto: "INITIALIZING"),
    2: .same(proto: "PROCESSING"),
    3: .same(proto: "CANCELLING"),
    4: .same(proto: "FINALIZING"),
    5: .same(proto: "SUCCESSFUL"),
    6: .same(proto: "FAILED"),
    7: .same(proto: "CANCELLED"),
  ]
}

extension Google_Firestore_Admin_V1beta2_IndexOperationMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IndexOperationMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_time"),
    2: .standard(proto: "end_time"),
    3: .same(proto: "index"),
    4: .same(proto: "state"),
    5: .standard(proto: "progress_documents"),
    6: .standard(proto: "progress_bytes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.index) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._progressDocuments) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._progressBytes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.index.isEmpty {
      try visitor.visitSingularStringField(value: self.index, fieldNumber: 3)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 4)
    }
    if let v = self._progressDocuments {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._progressBytes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1beta2_IndexOperationMetadata, rhs: Google_Firestore_Admin_V1beta2_IndexOperationMetadata) -> Bool {
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.index != rhs.index {return false}
    if lhs.state != rhs.state {return false}
    if lhs._progressDocuments != rhs._progressDocuments {return false}
    if lhs._progressBytes != rhs._progressBytes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1beta2_FieldOperationMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FieldOperationMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_time"),
    2: .standard(proto: "end_time"),
    3: .same(proto: "field"),
    4: .standard(proto: "index_config_deltas"),
    5: .same(proto: "state"),
    6: .standard(proto: "document_progress"),
    7: .standard(proto: "bytes_progress"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.field) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.indexConfigDeltas) }()
      case 5: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._documentProgress) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._bytesProgress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.field.isEmpty {
      try visitor.visitSingularStringField(value: self.field, fieldNumber: 3)
    }
    if !self.indexConfigDeltas.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.indexConfigDeltas, fieldNumber: 4)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 5)
    }
    if let v = self._documentProgress {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if let v = self._bytesProgress {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1beta2_FieldOperationMetadata, rhs: Google_Firestore_Admin_V1beta2_FieldOperationMetadata) -> Bool {
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.field != rhs.field {return false}
    if lhs.indexConfigDeltas != rhs.indexConfigDeltas {return false}
    if lhs.state != rhs.state {return false}
    if lhs._documentProgress != rhs._documentProgress {return false}
    if lhs._bytesProgress != rhs._bytesProgress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Firestore_Admin_V1beta2_FieldOperationMetadata.protoMessageName + ".IndexConfigDelta"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "change_type"),
    2: .same(proto: "index"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.changeType) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._index) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.changeType != .unspecified {
      try visitor.visitSingularEnumField(value: self.changeType, fieldNumber: 1)
    }
    if let v = self._index {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta, rhs: Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta) -> Bool {
    if lhs.changeType != rhs.changeType {return false}
    if lhs._index != rhs._index {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1beta2_FieldOperationMetadata.IndexConfigDelta.ChangeType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CHANGE_TYPE_UNSPECIFIED"),
    1: .same(proto: "ADD"),
    2: .same(proto: "REMOVE"),
  ]
}

extension Google_Firestore_Admin_V1beta2_ExportDocumentsMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ExportDocumentsMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_time"),
    2: .standard(proto: "end_time"),
    3: .standard(proto: "operation_state"),
    4: .standard(proto: "progress_documents"),
    5: .standard(proto: "progress_bytes"),
    6: .standard(proto: "collection_ids"),
    7: .standard(proto: "output_uri_prefix"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.operationState) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._progressDocuments) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._progressBytes) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.collectionIds) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.outputUriPrefix) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.operationState != .unspecified {
      try visitor.visitSingularEnumField(value: self.operationState, fieldNumber: 3)
    }
    if let v = self._progressDocuments {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._progressBytes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.collectionIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.collectionIds, fieldNumber: 6)
    }
    if !self.outputUriPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.outputUriPrefix, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1beta2_ExportDocumentsMetadata, rhs: Google_Firestore_Admin_V1beta2_ExportDocumentsMetadata) -> Bool {
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.operationState != rhs.operationState {return false}
    if lhs._progressDocuments != rhs._progressDocuments {return false}
    if lhs._progressBytes != rhs._progressBytes {return false}
    if lhs.collectionIds != rhs.collectionIds {return false}
    if lhs.outputUriPrefix != rhs.outputUriPrefix {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1beta2_ImportDocumentsMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImportDocumentsMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "start_time"),
    2: .standard(proto: "end_time"),
    3: .standard(proto: "operation_state"),
    4: .standard(proto: "progress_documents"),
    5: .standard(proto: "progress_bytes"),
    6: .standard(proto: "collection_ids"),
    7: .standard(proto: "input_uri_prefix"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.operationState) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._progressDocuments) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._progressBytes) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.collectionIds) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.inputUriPrefix) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if self.operationState != .unspecified {
      try visitor.visitSingularEnumField(value: self.operationState, fieldNumber: 3)
    }
    if let v = self._progressDocuments {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._progressBytes {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.collectionIds.isEmpty {
      try visitor.visitRepeatedStringField(value: self.collectionIds, fieldNumber: 6)
    }
    if !self.inputUriPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.inputUriPrefix, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1beta2_ImportDocumentsMetadata, rhs: Google_Firestore_Admin_V1beta2_ImportDocumentsMetadata) -> Bool {
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.operationState != rhs.operationState {return false}
    if lhs._progressDocuments != rhs._progressDocuments {return false}
    if lhs._progressBytes != rhs._progressBytes {return false}
    if lhs.collectionIds != rhs.collectionIds {return false}
    if lhs.inputUriPrefix != rhs.inputUriPrefix {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1beta2_ExportDocumentsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ExportDocumentsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "output_uri_prefix"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.outputUriPrefix) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.outputUriPrefix.isEmpty {
      try visitor.visitSingularStringField(value: self.outputUriPrefix, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1beta2_ExportDocumentsResponse, rhs: Google_Firestore_Admin_V1beta2_ExportDocumentsResponse) -> Bool {
    if lhs.outputUriPrefix != rhs.outputUriPrefix {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Firestore_Admin_V1beta2_Progress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Progress"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "estimated_work"),
    2: .standard(proto: "completed_work"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.estimatedWork) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.completedWork) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.estimatedWork != 0 {
      try visitor.visitSingularInt64Field(value: self.estimatedWork, fieldNumber: 1)
    }
    if self.completedWork != 0 {
      try visitor.visitSingularInt64Field(value: self.completedWork, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Firestore_Admin_V1beta2_Progress, rhs: Google_Firestore_Admin_V1beta2_Progress) -> Bool {
    if lhs.estimatedWork != rhs.estimatedWork {return false}
    if lhs.completedWork != rhs.completedWork {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
