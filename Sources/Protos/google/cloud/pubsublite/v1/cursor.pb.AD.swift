// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/pubsublite/v1/cursor.proto
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

/// The first streaming request that must be sent on a newly-opened stream. The
/// client must wait for the response before sending subsequent requests on the
/// stream.
public struct Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The subscription for which to manage committed cursors.
  public var subscription: String = String()

  /// The partition for which to manage committed cursors. Partitions are zero
  /// indexed, so `partition` must be in the range [0, topic.num_partitions).
  public var partition: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response to an InitialCommitCursorRequest.
public struct Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Streaming request to update the committed cursor. Subsequent
/// SequencedCommitCursorRequests override outstanding ones.
public struct Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The new value for the committed cursor.
  public var cursor: Google_Cloud_Pubsublite_V1_Cursor {
    get {return _cursor ?? Google_Cloud_Pubsublite_V1_Cursor()}
    set {_cursor = newValue}
  }
  /// Returns true if `cursor` has been explicitly set.
  public var hasCursor: Bool {return self._cursor != nil}
  /// Clears the value of `cursor`. Subsequent reads from it will return its default value.
  public mutating func clearCursor() {self._cursor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _cursor: Google_Cloud_Pubsublite_V1_Cursor? = nil
}

/// Response to a SequencedCommitCursorRequest.
public struct Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The number of outstanding SequencedCommitCursorRequests acknowledged by
  /// this response. Note that SequencedCommitCursorRequests are acknowledged in
  /// the order that they are received.
  public var acknowledgedCommits: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request sent from the client to the server on a stream.
public struct Google_Cloud_Pubsublite_V1_StreamingCommitCursorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The type of request this is.
  public var request: Google_Cloud_Pubsublite_V1_StreamingCommitCursorRequest.OneOf_Request? = nil

  /// Initial request on the stream.
  public var initial: Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest {
    get {
      if case .initial(let v)? = request {return v}
      return Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest()
    }
    set {request = .initial(newValue)}
  }

  /// Request to commit a new cursor value.
  public var commit: Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest {
    get {
      if case .commit(let v)? = request {return v}
      return Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest()
    }
    set {request = .commit(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The type of request this is.
  public enum OneOf_Request: Equatable {
    /// Initial request on the stream.
    case initial(Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest)
    /// Request to commit a new cursor value.
    case commit(Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorRequest.OneOf_Request, rhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorRequest.OneOf_Request) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.initial, .initial): return {
        guard case .initial(let l) = lhs, case .initial(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.commit, .commit): return {
        guard case .commit(let l) = lhs, case .commit(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Response to a StreamingCommitCursorRequest.
public struct Google_Cloud_Pubsublite_V1_StreamingCommitCursorResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The type of request this is.
  public var request: Google_Cloud_Pubsublite_V1_StreamingCommitCursorResponse.OneOf_Request? = nil

  /// Initial response on the stream.
  public var initial: Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse {
    get {
      if case .initial(let v)? = request {return v}
      return Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse()
    }
    set {request = .initial(newValue)}
  }

  /// Response to committing a new cursor value.
  public var commit: Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse {
    get {
      if case .commit(let v)? = request {return v}
      return Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse()
    }
    set {request = .commit(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The type of request this is.
  public enum OneOf_Request: Equatable {
    /// Initial response on the stream.
    case initial(Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse)
    /// Response to committing a new cursor value.
    case commit(Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorResponse.OneOf_Request, rhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorResponse.OneOf_Request) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.initial, .initial): return {
        guard case .initial(let l) = lhs, case .initial(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.commit, .commit): return {
        guard case .commit(let l) = lhs, case .commit(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Request for CommitCursor.
public struct Google_Cloud_Pubsublite_V1_CommitCursorRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The subscription for which to update the cursor.
  public var subscription: String = String()

  /// The partition for which to update the cursor. Partitions are zero indexed,
  /// so `partition` must be in the range [0, topic.num_partitions).
  public var partition: Int64 = 0

  /// The new value for the committed cursor.
  public var cursor: Google_Cloud_Pubsublite_V1_Cursor {
    get {return _cursor ?? Google_Cloud_Pubsublite_V1_Cursor()}
    set {_cursor = newValue}
  }
  /// Returns true if `cursor` has been explicitly set.
  public var hasCursor: Bool {return self._cursor != nil}
  /// Clears the value of `cursor`. Subsequent reads from it will return its default value.
  public mutating func clearCursor() {self._cursor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _cursor: Google_Cloud_Pubsublite_V1_Cursor? = nil
}

/// Response for CommitCursor.
public struct Google_Cloud_Pubsublite_V1_CommitCursorResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for ListPartitionCursors.
public struct Google_Cloud_Pubsublite_V1_ListPartitionCursorsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The subscription for which to retrieve cursors.
  /// Structured like
  /// `projects/{project_number}/locations/{location}/subscriptions/{subscription_id}`.
  public var parent: String = String()

  /// The maximum number of cursors to return. The service may return fewer than
  /// this value.
  /// If unset or zero, all cursors for the parent will be returned.
  public var pageSize: Int32 = 0

  /// A page token, received from a previous `ListPartitionCursors` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// When paginating, all other parameters provided to `ListPartitionCursors`
  /// must match the call that provided the page token.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A pair of a Cursor and the partition it is for.
public struct Google_Cloud_Pubsublite_V1_PartitionCursor {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The partition this is for.
  public var partition: Int64 = 0

  /// The value of the cursor.
  public var cursor: Google_Cloud_Pubsublite_V1_Cursor {
    get {return _cursor ?? Google_Cloud_Pubsublite_V1_Cursor()}
    set {_cursor = newValue}
  }
  /// Returns true if `cursor` has been explicitly set.
  public var hasCursor: Bool {return self._cursor != nil}
  /// Clears the value of `cursor`. Subsequent reads from it will return its default value.
  public mutating func clearCursor() {self._cursor = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _cursor: Google_Cloud_Pubsublite_V1_Cursor? = nil
}

/// Response for ListPartitionCursors
public struct Google_Cloud_Pubsublite_V1_ListPartitionCursorsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The partition cursors from this request.
  public var partitionCursors: [Google_Cloud_Pubsublite_V1_PartitionCursor] = []

  /// A token, which can be sent as `page_token` to retrieve the next page.
  /// If this field is omitted, there are no subsequent pages.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.pubsublite.v1"

extension Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InitialCommitCursorRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "subscription"),
    2: .same(proto: "partition"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.subscription) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.partition) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.subscription.isEmpty {
      try visitor.visitSingularStringField(value: self.subscription, fieldNumber: 1)
    }
    if self.partition != 0 {
      try visitor.visitSingularInt64Field(value: self.partition, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest, rhs: Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest) -> Bool {
    if lhs.subscription != rhs.subscription {return false}
    if lhs.partition != rhs.partition {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InitialCommitCursorResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse, rhs: Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SequencedCommitCursorRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "cursor"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._cursor) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._cursor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest, rhs: Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest) -> Bool {
    if lhs._cursor != rhs._cursor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SequencedCommitCursorResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "acknowledged_commits"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.acknowledgedCommits) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.acknowledgedCommits != 0 {
      try visitor.visitSingularInt64Field(value: self.acknowledgedCommits, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse, rhs: Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse) -> Bool {
    if lhs.acknowledgedCommits != rhs.acknowledgedCommits {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_StreamingCommitCursorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamingCommitCursorRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "initial"),
    2: .same(proto: "commit"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_Cloud_Pubsublite_V1_InitialCommitCursorRequest?
        if let current = self.request {
          try decoder.handleConflictingOneOf()
          if case .initial(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.request = .initial(v)}
      }()
      case 2: try {
        var v: Google_Cloud_Pubsublite_V1_SequencedCommitCursorRequest?
        if let current = self.request {
          try decoder.handleConflictingOneOf()
          if case .commit(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.request = .commit(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.request {
    case .initial?: try {
      guard case .initial(let v)? = self.request else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .commit?: try {
      guard case .commit(let v)? = self.request else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorRequest, rhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorRequest) -> Bool {
    if lhs.request != rhs.request {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_StreamingCommitCursorResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamingCommitCursorResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "initial"),
    2: .same(proto: "commit"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Google_Cloud_Pubsublite_V1_InitialCommitCursorResponse?
        if let current = self.request {
          try decoder.handleConflictingOneOf()
          if case .initial(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.request = .initial(v)}
      }()
      case 2: try {
        var v: Google_Cloud_Pubsublite_V1_SequencedCommitCursorResponse?
        if let current = self.request {
          try decoder.handleConflictingOneOf()
          if case .commit(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.request = .commit(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.request {
    case .initial?: try {
      guard case .initial(let v)? = self.request else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .commit?: try {
      guard case .commit(let v)? = self.request else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorResponse, rhs: Google_Cloud_Pubsublite_V1_StreamingCommitCursorResponse) -> Bool {
    if lhs.request != rhs.request {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_CommitCursorRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CommitCursorRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "subscription"),
    2: .same(proto: "partition"),
    3: .same(proto: "cursor"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.subscription) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.partition) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._cursor) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.subscription.isEmpty {
      try visitor.visitSingularStringField(value: self.subscription, fieldNumber: 1)
    }
    if self.partition != 0 {
      try visitor.visitSingularInt64Field(value: self.partition, fieldNumber: 2)
    }
    if let v = self._cursor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_CommitCursorRequest, rhs: Google_Cloud_Pubsublite_V1_CommitCursorRequest) -> Bool {
    if lhs.subscription != rhs.subscription {return false}
    if lhs.partition != rhs.partition {return false}
    if lhs._cursor != rhs._cursor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_CommitCursorResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CommitCursorResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_CommitCursorResponse, rhs: Google_Cloud_Pubsublite_V1_CommitCursorResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_ListPartitionCursorsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListPartitionCursorsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "page_size"),
    3: .standard(proto: "page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 2)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_ListPartitionCursorsRequest, rhs: Google_Cloud_Pubsublite_V1_ListPartitionCursorsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_PartitionCursor: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PartitionCursor"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "partition"),
    2: .same(proto: "cursor"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.partition) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._cursor) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.partition != 0 {
      try visitor.visitSingularInt64Field(value: self.partition, fieldNumber: 1)
    }
    if let v = self._cursor {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_PartitionCursor, rhs: Google_Cloud_Pubsublite_V1_PartitionCursor) -> Bool {
    if lhs.partition != rhs.partition {return false}
    if lhs._cursor != rhs._cursor {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Pubsublite_V1_ListPartitionCursorsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListPartitionCursorsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "partition_cursors"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.partitionCursors) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.partitionCursors.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.partitionCursors, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Pubsublite_V1_ListPartitionCursorsResponse, rhs: Google_Cloud_Pubsublite_V1_ListPartitionCursorsResponse) -> Bool {
    if lhs.partitionCursors != rhs.partitionCursors {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
