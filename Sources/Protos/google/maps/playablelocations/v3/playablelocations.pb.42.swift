// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/maps/playablelocations/v3/playablelocations.proto
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

///
/// Life of a query:
///
/// - When a game starts in a new location, your game server issues a
/// [SamplePlayableLocations][google.maps.playablelocations.v3.PlayableLocations.SamplePlayableLocations]
/// request. The request specifies the S2 cell, and contains one or more
/// "criteria" for filtering:
///
/// - Criterion 0: i locations for long-lived bases, or level 0 monsters, or...
/// - Criterion 1: j locations for short-lived bases, or level 1 monsters, ...
/// - Criterion 2: k locations for random objects.
/// - etc (up to 5 criterion may be specified).
///
/// `PlayableLocationList` will then contain mutually
/// exclusive lists of `PlayableLocation` objects that satisfy each of
/// the criteria. Think of it as a collection of real-world locations that you
/// can then associate with your game state.
///
/// Note: These points are impermanent in nature. E.g, parks can close, and
/// places can be removed.
///
/// The response specifies how long you can expect the playable locations to
/// last. Once they expire, you should query the `samplePlayableLocations` API
/// again to get a fresh view of the real world.
public struct Google_Maps_Playablelocations_V3_SamplePlayableLocationsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Specifies the area to search within for playable locations.
  public var areaFilter: Google_Maps_Playablelocations_V3_Sample_AreaFilter {
    get {return _areaFilter ?? Google_Maps_Playablelocations_V3_Sample_AreaFilter()}
    set {_areaFilter = newValue}
  }
  /// Returns true if `areaFilter` has been explicitly set.
  public var hasAreaFilter: Bool {return self._areaFilter != nil}
  /// Clears the value of `areaFilter`. Subsequent reads from it will return its default value.
  public mutating func clearAreaFilter() {self._areaFilter = nil}

  /// Required. Specifies one or more (up to 5) criteria for filtering the
  /// returned playable locations.
  public var criteria: [Google_Maps_Playablelocations_V3_Sample_Criterion] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _areaFilter: Google_Maps_Playablelocations_V3_Sample_AreaFilter? = nil
}

///
/// Response for the
/// [SamplePlayableLocations][google.maps.playablelocations.v3.PlayableLocations.SamplePlayableLocations]
/// method.
public struct Google_Maps_Playablelocations_V3_SamplePlayableLocationsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Each PlayableLocation object corresponds to a game_object_type specified
  /// in the request.
  public var locationsPerGameObjectType: Dictionary<Int32,Google_Maps_Playablelocations_V3_Sample_PlayableLocationList> = [:]

  /// Required. Specifies the "time-to-live" for the set of playable locations. You can use
  /// this value to determine how long to cache the set of playable locations.
  /// After this length of time, your back-end game server should issue a new
  /// [SamplePlayableLocations][google.maps.playablelocations.v3.PlayableLocations.SamplePlayableLocations]
  /// request to get a fresh set of playable locations (because for example, they
  /// might have been removed, a park might have closed for the day, a
  /// business might have closed permanently).
  public var ttl: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _ttl ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_ttl = newValue}
  }
  /// Returns true if `ttl` has been explicitly set.
  public var hasTtl: Bool {return self._ttl != nil}
  /// Clears the value of `ttl`. Subsequent reads from it will return its default value.
  public mutating func clearTtl() {self._ttl = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _ttl: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

/// A request for logging your player's bad location reports.
public struct Google_Maps_Playablelocations_V3_LogPlayerReportsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Player reports. The maximum number of player reports that you can log at
  /// once is 50.
  public var playerReports: [Google_Maps_Playablelocations_V3_PlayerReport] = []

  /// Required. A string that uniquely identifies the log player reports request. This
  /// allows you to detect duplicate requests. We recommend that you use UUIDs
  /// for this value. The value must not exceed 50 characters.
  ///
  /// You should reuse the `request_id` only when retrying a request in the case
  /// of a failure. In that case, the request must be identical to the one that
  /// failed.
  public var requestID: String = String()

  /// Required. Information about the client device (for example, device model and
  /// operating system).
  public var clientInfo: Google_Maps_Unity_ClientInfo {
    get {return _clientInfo ?? Google_Maps_Unity_ClientInfo()}
    set {_clientInfo = newValue}
  }
  /// Returns true if `clientInfo` has been explicitly set.
  public var hasClientInfo: Bool {return self._clientInfo != nil}
  /// Clears the value of `clientInfo`. Subsequent reads from it will return its default value.
  public mutating func clearClientInfo() {self._clientInfo = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _clientInfo: Google_Maps_Unity_ClientInfo? = nil
}

/// A response for the [LogPlayerReports][google.maps.playablelocations.v3.PlayableLocations.LogPlayerReports]
/// method.
///
/// This method returns no data upon success.
public struct Google_Maps_Playablelocations_V3_LogPlayerReportsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A request for logging impressions.
public struct Google_Maps_Playablelocations_V3_LogImpressionsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Impression event details. The maximum number of impression reports that you
  /// can log at once is 50.
  public var impressions: [Google_Maps_Playablelocations_V3_Impression] = []

  /// Required. A string that uniquely identifies the log impressions request. This allows
  /// you to detect duplicate requests. We recommend that you use UUIDs for this
  /// value. The value must not exceed 50 characters.
  ///
  /// You should reuse the `request_id` only when retrying a request in case of
  /// failure. In this case, the request must be identical to the one that
  /// failed.
  public var requestID: String = String()

  /// Required. Information about the client device. For example, device model and
  /// operating system.
  public var clientInfo: Google_Maps_Unity_ClientInfo {
    get {return _clientInfo ?? Google_Maps_Unity_ClientInfo()}
    set {_clientInfo = newValue}
  }
  /// Returns true if `clientInfo` has been explicitly set.
  public var hasClientInfo: Bool {return self._clientInfo != nil}
  /// Clears the value of `clientInfo`. Subsequent reads from it will return its default value.
  public mutating func clearClientInfo() {self._clientInfo = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _clientInfo: Google_Maps_Unity_ClientInfo? = nil
}

/// A response for the [LogImpressions][google.maps.playablelocations.v3.PlayableLocations.LogImpressions] method.
/// This method returns no data upon success.
public struct Google_Maps_Playablelocations_V3_LogImpressionsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.maps.playablelocations.v3"

extension Google_Maps_Playablelocations_V3_SamplePlayableLocationsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SamplePlayableLocationsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "area_filter"),
    2: .same(proto: "criteria"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._areaFilter) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.criteria) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._areaFilter {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.criteria.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.criteria, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_SamplePlayableLocationsRequest, rhs: Google_Maps_Playablelocations_V3_SamplePlayableLocationsRequest) -> Bool {
    if lhs._areaFilter != rhs._areaFilter {return false}
    if lhs.criteria != rhs.criteria {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Maps_Playablelocations_V3_SamplePlayableLocationsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SamplePlayableLocationsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "locations_per_game_object_type"),
    9: .same(proto: "ttl"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Google_Maps_Playablelocations_V3_Sample_PlayableLocationList>.self, value: &self.locationsPerGameObjectType) }()
      case 9: try { try decoder.decodeSingularMessageField(value: &self._ttl) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.locationsPerGameObjectType.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufInt32,Google_Maps_Playablelocations_V3_Sample_PlayableLocationList>.self, value: self.locationsPerGameObjectType, fieldNumber: 1)
    }
    if let v = self._ttl {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_SamplePlayableLocationsResponse, rhs: Google_Maps_Playablelocations_V3_SamplePlayableLocationsResponse) -> Bool {
    if lhs.locationsPerGameObjectType != rhs.locationsPerGameObjectType {return false}
    if lhs._ttl != rhs._ttl {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Maps_Playablelocations_V3_LogPlayerReportsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogPlayerReportsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "player_reports"),
    2: .standard(proto: "request_id"),
    3: .standard(proto: "client_info"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.playerReports) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.requestID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._clientInfo) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.playerReports.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.playerReports, fieldNumber: 1)
    }
    if !self.requestID.isEmpty {
      try visitor.visitSingularStringField(value: self.requestID, fieldNumber: 2)
    }
    if let v = self._clientInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_LogPlayerReportsRequest, rhs: Google_Maps_Playablelocations_V3_LogPlayerReportsRequest) -> Bool {
    if lhs.playerReports != rhs.playerReports {return false}
    if lhs.requestID != rhs.requestID {return false}
    if lhs._clientInfo != rhs._clientInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Maps_Playablelocations_V3_LogPlayerReportsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogPlayerReportsResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_LogPlayerReportsResponse, rhs: Google_Maps_Playablelocations_V3_LogPlayerReportsResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Maps_Playablelocations_V3_LogImpressionsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogImpressionsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "impressions"),
    2: .standard(proto: "request_id"),
    3: .standard(proto: "client_info"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.impressions) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.requestID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._clientInfo) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.impressions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.impressions, fieldNumber: 1)
    }
    if !self.requestID.isEmpty {
      try visitor.visitSingularStringField(value: self.requestID, fieldNumber: 2)
    }
    if let v = self._clientInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_LogImpressionsRequest, rhs: Google_Maps_Playablelocations_V3_LogImpressionsRequest) -> Bool {
    if lhs.impressions != rhs.impressions {return false}
    if lhs.requestID != rhs.requestID {return false}
    if lhs._clientInfo != rhs._clientInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Maps_Playablelocations_V3_LogImpressionsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LogImpressionsResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_LogImpressionsResponse, rhs: Google_Maps_Playablelocations_V3_LogImpressionsResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}