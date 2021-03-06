// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/watcher/v1/watch.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2017 Google Inc.
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

/// The message used by the client to register interest in an entity.
public struct Google_Watcher_V1_Request {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The `target` value **must** be a valid URL path pointing to an entity
  /// to watch. Note that the service name **must** be
  /// removed from the target field (e.g., the target field must say
  /// "/foo/bar", not "myservice.googleapis.com/foo/bar"). A client is
  /// also allowed to pass system-specific parameters in the URL that
  /// are only obeyed by some implementations. Some parameters will be
  /// implementation-specific. However, some have predefined meaning
  /// and are listed here:
  ///
  ///  * recursive = true|false [default=false]
  ///    If set to true, indicates that the client wants to watch all elements
  ///    of entities in the subtree rooted at the entity's name in `target`. For
  ///    descendants that are not the immediate children of the target, the
  ///    `Change.element` will contain slashes.
  ///
  ///    Note that some namespaces and entities will not support recursive
  ///    watching. When watching such an entity, a client must not set recursive
  ///    to true. Otherwise, it will receive an `UNIMPLEMENTED` error.
  ///
  /// Normal URL encoding must be used inside `target`.  For example, if a query
  /// parameter name or value, or the non-query parameter portion of `target`
  /// contains a special character, it must be %-encoded.  We recommend that
  /// clients and servers use their runtime's URL library to produce and consume
  /// target values.
  public var target: String = String()

  /// The `resume_marker` specifies how much of the existing underlying state is
  /// delivered to the client when the watch request is received by the
  /// system. The client can set this marker in one of the following ways to get
  /// different semantics:
  ///
  /// *   Parameter is not specified or has the value "".
  ///     Semantics: Fetch initial state.
  ///     The client wants the entity's initial state to be delivered. See the
  ///     description in "Initial State".
  ///
  /// *   Parameter is set to the string "now" (UTF-8 encoding).
  ///     Semantics: Fetch new changes only.
  ///     The client just wants to get the changes received by the system after
  ///     the watch point. The system may deliver changes from before the watch
  ///     point as well.
  ///
  /// *   Parameter is set to a value received in an earlier
  ///     `Change.resume_marker` field while watching the same entity.
  ///     Semantics: Resume from a specific point.
  ///     The client wants to receive the changes from a specific point; this
  ///     value must correspond to a value received in the `Change.resume_marker`
  ///     field. The system may deliver changes from before the `resume_marker`
  ///     as well. If the system cannot resume the stream from this point (e.g.,
  ///     if it is too far behind in the stream), it can raise the
  ///     `FAILED_PRECONDITION` error.
  ///
  /// An implementation MUST support an unspecified parameter and the
  /// empty string "" marker (initial state fetching) and the "now" marker.
  /// It need not support resuming from a specific point.
  public var resumeMarker: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A batch of Change messages.
public struct Google_Watcher_V1_ChangeBatch {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A list of Change messages.
  public var changes: [Google_Watcher_V1_Change] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A Change indicates the most recent state of an element.
public struct Google_Watcher_V1_Change {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the element, interpreted relative to the entity's actual
  /// name. "" refers to the entity itself. The element name is a valid
  /// UTF-8 string.
  public var element: String = String()

  /// The state of the `element`.
  public var state: Google_Watcher_V1_Change.State = .exists

  /// The actual change data. This field is present only when `state() == EXISTS`
  /// or `state() == ERROR`. Please see
  /// [google.protobuf.Any][google.protobuf.Any] about how to use the Any type.
  public var data: SwiftProtobuf.Google_Protobuf_Any {
    get {return _data ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_data = newValue}
  }
  /// Returns true if `data` has been explicitly set.
  public var hasData: Bool {return self._data != nil}
  /// Clears the value of `data`. Subsequent reads from it will return its default value.
  public mutating func clearData() {self._data = nil}

  /// If present, provides a compact representation of all the messages that have
  /// been received by the caller for the given entity, e.g., it could be a
  /// sequence number or a multi-part timestamp/version vector. This marker can
  /// be provided in the Request message, allowing the caller to resume the
  /// stream watching at a specific point without fetching the initial state.
  public var resumeMarker: Data = Data()

  /// If true, this Change is followed by more Changes that are in the same group
  /// as this Change.
  public var continued: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A reported value can be in one of the following states:
  public enum State: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The element exists and its full value is included in data.
    case exists // = 0

    /// The element does not exist.
    case doesNotExist // = 1

    /// Element may or may not exist. Used only for initial state delivery when
    /// the client is not interested in fetching the initial state. See the
    /// "Initial State" section above.
    case initialStateSkipped // = 2

    /// The element may exist, but some error has occurred. More information is
    /// available in the data field - the value is a serialized Status
    /// proto (from [google.rpc.Status][])
    case error // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .exists
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .exists
      case 1: self = .doesNotExist
      case 2: self = .initialStateSkipped
      case 3: self = .error
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .exists: return 0
      case .doesNotExist: return 1
      case .initialStateSkipped: return 2
      case .error: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _data: SwiftProtobuf.Google_Protobuf_Any? = nil
}

#if swift(>=4.2)

extension Google_Watcher_V1_Change.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Watcher_V1_Change.State] = [
    .exists,
    .doesNotExist,
    .initialStateSkipped,
    .error,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.watcher.v1"

extension Google_Watcher_V1_Request: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Request"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "target"),
    2: .standard(proto: "resume_marker"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.target) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.resumeMarker) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 1)
    }
    if !self.resumeMarker.isEmpty {
      try visitor.visitSingularBytesField(value: self.resumeMarker, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Watcher_V1_Request, rhs: Google_Watcher_V1_Request) -> Bool {
    if lhs.target != rhs.target {return false}
    if lhs.resumeMarker != rhs.resumeMarker {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Watcher_V1_ChangeBatch: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ChangeBatch"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "changes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.changes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.changes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.changes, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Watcher_V1_ChangeBatch, rhs: Google_Watcher_V1_ChangeBatch) -> Bool {
    if lhs.changes != rhs.changes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Watcher_V1_Change: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Change"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "element"),
    2: .same(proto: "state"),
    6: .same(proto: "data"),
    4: .standard(proto: "resume_marker"),
    5: .same(proto: "continued"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.element) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.resumeMarker) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.continued) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.element.isEmpty {
      try visitor.visitSingularStringField(value: self.element, fieldNumber: 1)
    }
    if self.state != .exists {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 2)
    }
    if !self.resumeMarker.isEmpty {
      try visitor.visitSingularBytesField(value: self.resumeMarker, fieldNumber: 4)
    }
    if self.continued != false {
      try visitor.visitSingularBoolField(value: self.continued, fieldNumber: 5)
    }
    if let v = self._data {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Watcher_V1_Change, rhs: Google_Watcher_V1_Change) -> Bool {
    if lhs.element != rhs.element {return false}
    if lhs.state != rhs.state {return false}
    if lhs._data != rhs._data {return false}
    if lhs.resumeMarker != rhs.resumeMarker {return false}
    if lhs.continued != rhs.continued {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Watcher_V1_Change.State: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "EXISTS"),
    1: .same(proto: "DOES_NOT_EXIST"),
    2: .same(proto: "INITIAL_STATE_SKIPPED"),
    3: .same(proto: "ERROR"),
  ]
}
