// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/build/v1/publish_build_event.proto
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

/// Publishes 'lifecycle events' that update the high-level state of a build:
/// - BuildEnqueued: When a build is scheduled.
/// - InvocationAttemptStarted: When work for a build starts; there can be
///     multiple invocations for a build (e.g. retries).
/// - InvocationAttemptCompleted: When work for a build finishes.
/// - BuildFinished: When a build is finished.
public struct Google_Devtools_Build_V1_PublishLifecycleEventRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The interactivity of this build.
  public var serviceLevel: Google_Devtools_Build_V1_PublishLifecycleEventRequest.ServiceLevel = .noninteractive

  /// Required. The lifecycle build event. If this is a build tool event, the RPC will fail
  /// with INVALID_REQUEST.
  public var buildEvent: Google_Devtools_Build_V1_OrderedBuildEvent {
    get {return _buildEvent ?? Google_Devtools_Build_V1_OrderedBuildEvent()}
    set {_buildEvent = newValue}
  }
  /// Returns true if `buildEvent` has been explicitly set.
  public var hasBuildEvent: Bool {return self._buildEvent != nil}
  /// Clears the value of `buildEvent`. Subsequent reads from it will return its default value.
  public mutating func clearBuildEvent() {self._buildEvent = nil}

  /// If the next event for this build or invocation (depending on the event
  /// type) hasn't been published after this duration from when {build_event}
  /// is written to BES, consider this stream expired. If this field is not set,
  /// BES backend will use its own default value.
  public var streamTimeout: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _streamTimeout ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_streamTimeout = newValue}
  }
  /// Returns true if `streamTimeout` has been explicitly set.
  public var hasStreamTimeout: Bool {return self._streamTimeout != nil}
  /// Clears the value of `streamTimeout`. Subsequent reads from it will return its default value.
  public mutating func clearStreamTimeout() {self._streamTimeout = nil}

  /// Additional information about a build request. These are define by the event
  /// publishers, and the Build Event Service does not validate or interpret
  /// them. They are used while notifying internal systems of new builds and
  /// invocations if the OrderedBuildEvent.event type is
  /// BuildEnqueued/InvocationAttemptStarted.
  public var notificationKeywords: [String] = []

  /// Required. The project this build is associated with.
  /// This should match the project used for the initial call to
  /// PublishLifecycleEvent (containing a BuildEnqueued message).
  public var projectID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The service level of the build request. Backends only uses this value when
  /// the BuildEnqueued event is published to determine what level of service
  /// this build should receive.
  public enum ServiceLevel: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Non-interactive builds can tolerate longer event latencies. This is the
    /// default ServiceLevel if callers do not specify one.
    case noninteractive // = 0

    /// The events of an interactive build should be delivered with low latency.
    case interactive // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .noninteractive
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .noninteractive
      case 1: self = .interactive
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .noninteractive: return 0
      case .interactive: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _buildEvent: Google_Devtools_Build_V1_OrderedBuildEvent? = nil
  fileprivate var _streamTimeout: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

#if swift(>=4.2)

extension Google_Devtools_Build_V1_PublishLifecycleEventRequest.ServiceLevel: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Build_V1_PublishLifecycleEventRequest.ServiceLevel] = [
    .noninteractive,
    .interactive,
  ]
}

#endif  // swift(>=4.2)

/// States which event has been committed. Any failure to commit will cause
/// RPC errors, hence not recorded by this proto.
public struct Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The stream that contains this event.
  public var streamID: Google_Devtools_Build_V1_StreamId {
    get {return _streamID ?? Google_Devtools_Build_V1_StreamId()}
    set {_streamID = newValue}
  }
  /// Returns true if `streamID` has been explicitly set.
  public var hasStreamID: Bool {return self._streamID != nil}
  /// Clears the value of `streamID`. Subsequent reads from it will return its default value.
  public mutating func clearStreamID() {self._streamID = nil}

  /// The sequence number of this event that has been committed.
  public var sequenceNumber: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _streamID: Google_Devtools_Build_V1_StreamId? = nil
}

/// Build event with contextual information about the stream it belongs to and
/// its position in that stream.
public struct Google_Devtools_Build_V1_OrderedBuildEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Which build event stream this event belongs to.
  public var streamID: Google_Devtools_Build_V1_StreamId {
    get {return _streamID ?? Google_Devtools_Build_V1_StreamId()}
    set {_streamID = newValue}
  }
  /// Returns true if `streamID` has been explicitly set.
  public var hasStreamID: Bool {return self._streamID != nil}
  /// Clears the value of `streamID`. Subsequent reads from it will return its default value.
  public mutating func clearStreamID() {self._streamID = nil}

  /// The position of this event in the stream. The sequence numbers for a build
  /// event stream should be a sequence of consecutive natural numbers starting
  /// from one. (1, 2, 3, ...)
  public var sequenceNumber: Int64 = 0

  /// The actual event.
  public var event: Google_Devtools_Build_V1_BuildEvent {
    get {return _event ?? Google_Devtools_Build_V1_BuildEvent()}
    set {_event = newValue}
  }
  /// Returns true if `event` has been explicitly set.
  public var hasEvent: Bool {return self._event != nil}
  /// Clears the value of `event`. Subsequent reads from it will return its default value.
  public mutating func clearEvent() {self._event = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _streamID: Google_Devtools_Build_V1_StreamId? = nil
  fileprivate var _event: Google_Devtools_Build_V1_BuildEvent? = nil
}

/// Streaming request message for PublishBuildToolEventStream.
public struct Google_Devtools_Build_V1_PublishBuildToolEventStreamRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The build event with position info.
  /// New publishing clients should use this field rather than the 3 above.
  public var orderedBuildEvent: Google_Devtools_Build_V1_OrderedBuildEvent {
    get {return _orderedBuildEvent ?? Google_Devtools_Build_V1_OrderedBuildEvent()}
    set {_orderedBuildEvent = newValue}
  }
  /// Returns true if `orderedBuildEvent` has been explicitly set.
  public var hasOrderedBuildEvent: Bool {return self._orderedBuildEvent != nil}
  /// Clears the value of `orderedBuildEvent`. Subsequent reads from it will return its default value.
  public mutating func clearOrderedBuildEvent() {self._orderedBuildEvent = nil}

  /// The keywords to be attached to the notification which notifies the start
  /// of a new build event stream. BES only reads this field when sequence_number
  /// or ordered_build_event.sequence_number is 1 in this message. If this field
  /// is empty, BES will not publish notification messages for this stream.
  public var notificationKeywords: [String] = []

  /// Required. The project this build is associated with.
  /// This should match the project used for the initial call to
  /// PublishLifecycleEvent (containing a BuildEnqueued message).
  public var projectID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _orderedBuildEvent: Google_Devtools_Build_V1_OrderedBuildEvent? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.build.v1"

extension Google_Devtools_Build_V1_PublishLifecycleEventRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PublishLifecycleEventRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "service_level"),
    2: .standard(proto: "build_event"),
    3: .standard(proto: "stream_timeout"),
    4: .standard(proto: "notification_keywords"),
    6: .standard(proto: "project_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.serviceLevel) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._buildEvent) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._streamTimeout) }()
      case 4: try { try decoder.decodeRepeatedStringField(value: &self.notificationKeywords) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.serviceLevel != .noninteractive {
      try visitor.visitSingularEnumField(value: self.serviceLevel, fieldNumber: 1)
    }
    if let v = self._buildEvent {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._streamTimeout {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.notificationKeywords.isEmpty {
      try visitor.visitRepeatedStringField(value: self.notificationKeywords, fieldNumber: 4)
    }
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Build_V1_PublishLifecycleEventRequest, rhs: Google_Devtools_Build_V1_PublishLifecycleEventRequest) -> Bool {
    if lhs.serviceLevel != rhs.serviceLevel {return false}
    if lhs._buildEvent != rhs._buildEvent {return false}
    if lhs._streamTimeout != rhs._streamTimeout {return false}
    if lhs.notificationKeywords != rhs.notificationKeywords {return false}
    if lhs.projectID != rhs.projectID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Build_V1_PublishLifecycleEventRequest.ServiceLevel: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "NONINTERACTIVE"),
    1: .same(proto: "INTERACTIVE"),
  ]
}

extension Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PublishBuildToolEventStreamResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stream_id"),
    2: .standard(proto: "sequence_number"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._streamID) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.sequenceNumber) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._streamID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.sequenceNumber != 0 {
      try visitor.visitSingularInt64Field(value: self.sequenceNumber, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse, rhs: Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse) -> Bool {
    if lhs._streamID != rhs._streamID {return false}
    if lhs.sequenceNumber != rhs.sequenceNumber {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Build_V1_OrderedBuildEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OrderedBuildEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "stream_id"),
    2: .standard(proto: "sequence_number"),
    3: .same(proto: "event"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._streamID) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.sequenceNumber) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._event) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._streamID {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.sequenceNumber != 0 {
      try visitor.visitSingularInt64Field(value: self.sequenceNumber, fieldNumber: 2)
    }
    if let v = self._event {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Build_V1_OrderedBuildEvent, rhs: Google_Devtools_Build_V1_OrderedBuildEvent) -> Bool {
    if lhs._streamID != rhs._streamID {return false}
    if lhs.sequenceNumber != rhs.sequenceNumber {return false}
    if lhs._event != rhs._event {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Build_V1_PublishBuildToolEventStreamRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PublishBuildToolEventStreamRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    4: .standard(proto: "ordered_build_event"),
    5: .standard(proto: "notification_keywords"),
    6: .standard(proto: "project_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 4: try { try decoder.decodeSingularMessageField(value: &self._orderedBuildEvent) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.notificationKeywords) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._orderedBuildEvent {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if !self.notificationKeywords.isEmpty {
      try visitor.visitRepeatedStringField(value: self.notificationKeywords, fieldNumber: 5)
    }
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Build_V1_PublishBuildToolEventStreamRequest, rhs: Google_Devtools_Build_V1_PublishBuildToolEventStreamRequest) -> Bool {
    if lhs._orderedBuildEvent != rhs._orderedBuildEvent {return false}
    if lhs.notificationKeywords != rhs.notificationKeywords {return false}
    if lhs.projectID != rhs.projectID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}