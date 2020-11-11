// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/maps/playablelocations/v3/resources.proto
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

/// A report submitted by a player about a playable location that is considered
/// inappropriate for use in the game.
public struct Google_Maps_Playablelocations_V3_PlayerReport {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the playable location.
  public var locationName: String = String()

  /// Required. One or more reasons why this playable location is considered bad.
  public var reasons: [Google_Maps_Playablelocations_V3_PlayerReport.BadLocationReason] = []

  /// Required. A free-form description detailing why the playable location is
  /// considered bad.
  public var reasonDetails: String = String()

  /// Language code (in BCP-47 format) indicating the language of the freeform
  /// description provided in `reason_details`. Examples are "en", "en-US" or
  /// "ja-Latn". For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  public var languageCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The reason why the playable location is considered bad.
  public enum BadLocationReason: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified reason. Do not use.
    case unspecified // = 0

    /// The reason isn't one of the reasons in this enumeration.
    case other // = 1

    /// The playable location isn't accessible to pedestrians. For example, if
    /// it's in the middle of a highway.
    case notPedestrianAccessible // = 2

    /// The playable location isn't open to the public. For example, a private
    /// office building.
    case notOpenToPublic // = 4

    /// The playable location is permanently closed. For example, when a business
    /// has been shut down.
    case permanentlyClosed // = 5

    /// The playable location is temporarily inaccessible. For example, when a
    /// business has closed for renovations.
    case temporarilyInaccessible // = 6
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .other
      case 2: self = .notPedestrianAccessible
      case 4: self = .notOpenToPublic
      case 5: self = .permanentlyClosed
      case 6: self = .temporarilyInaccessible
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .other: return 1
      case .notPedestrianAccessible: return 2
      case .notOpenToPublic: return 4
      case .permanentlyClosed: return 5
      case .temporarilyInaccessible: return 6
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Maps_Playablelocations_V3_PlayerReport.BadLocationReason: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Maps_Playablelocations_V3_PlayerReport.BadLocationReason] = [
    .unspecified,
    .other,
    .notPedestrianAccessible,
    .notOpenToPublic,
    .permanentlyClosed,
    .temporarilyInaccessible,
  ]
}

#endif  // swift(>=4.2)

/// Encapsulates impression event details.
public struct Google_Maps_Playablelocations_V3_Impression {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the playable location.
  public var locationName: String = String()

  /// Required. The type of impression event.
  public var impressionType: Google_Maps_Playablelocations_V3_Impression.ImpressionType = .unspecified

  /// An arbitrary, developer-defined type identifier for each type of game
  /// object used in your game.
  ///
  /// Since players interact with differ types of game objects in different ways,
  /// this field allows you to segregate impression data by type for analysis.
  ///
  /// You should assign a unique `game_object_type` ID to represent a distinct
  /// type of game object in your game.
  ///
  /// For example, 1=monster location, 2=powerup location.
  public var gameObjectType: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The type of impression event.
  public enum ImpressionType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified type. Do not use.
    case unspecified // = 0

    /// The playable location was presented to a player.
    case presented // = 1

    /// A player interacted with the playable location.
    case interacted // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .presented
      case 2: self = .interacted
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .presented: return 1
      case .interacted: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Maps_Playablelocations_V3_Impression.ImpressionType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Maps_Playablelocations_V3_Impression.ImpressionType] = [
    .unspecified,
    .presented,
    .interacted,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.maps.playablelocations.v3"

extension Google_Maps_Playablelocations_V3_PlayerReport: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PlayerReport"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "location_name"),
    2: .same(proto: "reasons"),
    3: .standard(proto: "reason_details"),
    4: .standard(proto: "language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.locationName) }()
      case 2: try { try decoder.decodeRepeatedEnumField(value: &self.reasons) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.reasonDetails) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.locationName.isEmpty {
      try visitor.visitSingularStringField(value: self.locationName, fieldNumber: 1)
    }
    if !self.reasons.isEmpty {
      try visitor.visitPackedEnumField(value: self.reasons, fieldNumber: 2)
    }
    if !self.reasonDetails.isEmpty {
      try visitor.visitSingularStringField(value: self.reasonDetails, fieldNumber: 3)
    }
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_PlayerReport, rhs: Google_Maps_Playablelocations_V3_PlayerReport) -> Bool {
    if lhs.locationName != rhs.locationName {return false}
    if lhs.reasons != rhs.reasons {return false}
    if lhs.reasonDetails != rhs.reasonDetails {return false}
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Maps_Playablelocations_V3_PlayerReport.BadLocationReason: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BAD_LOCATION_REASON_UNSPECIFIED"),
    1: .same(proto: "OTHER"),
    2: .same(proto: "NOT_PEDESTRIAN_ACCESSIBLE"),
    4: .same(proto: "NOT_OPEN_TO_PUBLIC"),
    5: .same(proto: "PERMANENTLY_CLOSED"),
    6: .same(proto: "TEMPORARILY_INACCESSIBLE"),
  ]
}

extension Google_Maps_Playablelocations_V3_Impression: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Impression"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "location_name"),
    2: .standard(proto: "impression_type"),
    4: .standard(proto: "game_object_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.locationName) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.impressionType) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.gameObjectType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.locationName.isEmpty {
      try visitor.visitSingularStringField(value: self.locationName, fieldNumber: 1)
    }
    if self.impressionType != .unspecified {
      try visitor.visitSingularEnumField(value: self.impressionType, fieldNumber: 2)
    }
    if self.gameObjectType != 0 {
      try visitor.visitSingularInt32Field(value: self.gameObjectType, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Playablelocations_V3_Impression, rhs: Google_Maps_Playablelocations_V3_Impression) -> Bool {
    if lhs.locationName != rhs.locationName {return false}
    if lhs.impressionType != rhs.impressionType {return false}
    if lhs.gameObjectType != rhs.gameObjectType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Maps_Playablelocations_V3_Impression.ImpressionType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "IMPRESSION_TYPE_UNSPECIFIED"),
    1: .same(proto: "PRESENTED"),
    2: .same(proto: "INTERACTED"),
  ]
}