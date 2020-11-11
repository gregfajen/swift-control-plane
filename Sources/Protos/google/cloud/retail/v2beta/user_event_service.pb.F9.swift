// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/retail/v2beta/user_event_service.proto
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

/// Request message for WriteUserEvent method.
public struct Google_Cloud_Retail_V2beta_WriteUserEventRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The parent catalog resource name, such as
  /// "projects/1234/locations/global/catalogs/default_catalog".
  public var parent: String = String()

  /// Required. User event to write.
  public var userEvent: Google_Cloud_Retail_V2beta_UserEvent {
    get {return _userEvent ?? Google_Cloud_Retail_V2beta_UserEvent()}
    set {_userEvent = newValue}
  }
  /// Returns true if `userEvent` has been explicitly set.
  public var hasUserEvent: Bool {return self._userEvent != nil}
  /// Clears the value of `userEvent`. Subsequent reads from it will return its default value.
  public mutating func clearUserEvent() {self._userEvent = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _userEvent: Google_Cloud_Retail_V2beta_UserEvent? = nil
}

/// Request message for CollectUserEvent method.
public struct Google_Cloud_Retail_V2beta_CollectUserEventRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The parent catalog name, such as
  /// "projects/1234/locations/global/catalogs/default_catalog".
  public var parent: String = String()

  /// Required. URL encoded UserEvent proto with a length limit of 2,000,000
  /// characters.
  public var userEvent: String = String()

  /// The url including cgi-parameters but excluding the hash fragment with a
  /// length limit of 5,000 characters. This is often more useful than the
  /// referer url, because many browsers only send the domain for 3rd party
  /// requests.
  public var uri: String = String()

  /// The event timestamp in milliseconds. This prevents browser caching of
  /// otherwise identical get requests. The name is abbreviated to reduce the
  /// payload bytes.
  public var ets: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for CatalogRejoin method.
public struct Google_Cloud_Retail_V2beta_RejoinUserEventsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Full resource name of user event, such as
  /// "projects/*/locations/*/catalogs/default_catalog".
  public var parent: String = String()

  /// Required. The type of the catalog rejoin to define the scope and range of
  /// the user events to be rejoined with catalog items.
  public var userEventRejoinScope: Google_Cloud_Retail_V2beta_RejoinUserEventsRequest.UserEventRejoinScope = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The scope of events to be rejoined with latest catalog. If the rejoining
  /// aims at reducing number of unjoined events, set UserEventRejoinScope to
  /// UNJOINED_EVENTS. If the rejoining aims at correcting catalog information
  /// in joined_events, set UserEventRejoinScope to JOINED_EVENTS. If all events
  /// needs to be rejoined, set UserEventRejoinScope to
  /// USER_EVENT_REJOIN_SCOPE_UNSPECIFIED.
  public enum UserEventRejoinScope: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Rejoin catalogs with all events including both joined events and
    /// unjoined events.
    case unspecified // = 0

    /// Only rejoin catalogs with joined events.
    case joinedEvents // = 1

    /// Only rejoin catalogs with unjoined events.
    case unjoinedEvents // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .joinedEvents
      case 2: self = .unjoinedEvents
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .joinedEvents: return 1
      case .unjoinedEvents: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Retail_V2beta_RejoinUserEventsRequest.UserEventRejoinScope: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Retail_V2beta_RejoinUserEventsRequest.UserEventRejoinScope] = [
    .unspecified,
    .joinedEvents,
    .unjoinedEvents,
  ]
}

#endif  // swift(>=4.2)

/// Response message for RejoinUserEvents method.
public struct Google_Cloud_Retail_V2beta_RejoinUserEventsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Number of user events that were joined with latest catalog items.
  public var rejoinedUserEventsCount: Int64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Metadata for RejoinUserEvents method.
public struct Google_Cloud_Retail_V2beta_RejoinUserEventsMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.retail.v2beta"

extension Google_Cloud_Retail_V2beta_WriteUserEventRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".WriteUserEventRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "user_event"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._userEvent) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._userEvent {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_WriteUserEventRequest, rhs: Google_Cloud_Retail_V2beta_WriteUserEventRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._userEvent != rhs._userEvent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_CollectUserEventRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CollectUserEventRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "user_event"),
    3: .same(proto: "uri"),
    4: .same(proto: "ets"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.userEvent) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.uri) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.ets) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.userEvent.isEmpty {
      try visitor.visitSingularStringField(value: self.userEvent, fieldNumber: 2)
    }
    if !self.uri.isEmpty {
      try visitor.visitSingularStringField(value: self.uri, fieldNumber: 3)
    }
    if self.ets != 0 {
      try visitor.visitSingularInt64Field(value: self.ets, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_CollectUserEventRequest, rhs: Google_Cloud_Retail_V2beta_CollectUserEventRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.userEvent != rhs.userEvent {return false}
    if lhs.uri != rhs.uri {return false}
    if lhs.ets != rhs.ets {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_RejoinUserEventsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RejoinUserEventsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "user_event_rejoin_scope"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.userEventRejoinScope) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if self.userEventRejoinScope != .unspecified {
      try visitor.visitSingularEnumField(value: self.userEventRejoinScope, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_RejoinUserEventsRequest, rhs: Google_Cloud_Retail_V2beta_RejoinUserEventsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.userEventRejoinScope != rhs.userEventRejoinScope {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_RejoinUserEventsRequest.UserEventRejoinScope: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "USER_EVENT_REJOIN_SCOPE_UNSPECIFIED"),
    1: .same(proto: "JOINED_EVENTS"),
    2: .same(proto: "UNJOINED_EVENTS"),
  ]
}

extension Google_Cloud_Retail_V2beta_RejoinUserEventsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RejoinUserEventsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "rejoined_user_events_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt64Field(value: &self.rejoinedUserEventsCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.rejoinedUserEventsCount != 0 {
      try visitor.visitSingularInt64Field(value: self.rejoinedUserEventsCount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_RejoinUserEventsResponse, rhs: Google_Cloud_Retail_V2beta_RejoinUserEventsResponse) -> Bool {
    if lhs.rejoinedUserEventsCount != rhs.rejoinedUserEventsCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Retail_V2beta_RejoinUserEventsMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RejoinUserEventsMetadata"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Retail_V2beta_RejoinUserEventsMetadata, rhs: Google_Cloud_Retail_V2beta_RejoinUserEventsMetadata) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
