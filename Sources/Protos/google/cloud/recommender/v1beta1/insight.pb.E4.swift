// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/recommender/v1beta1/insight.proto
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

/// An insight along with the information used to derive the insight. The insight
/// may have associated recomendations as well.
public struct Google_Cloud_Recommender_V1beta1_Insight {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the insight.
  public var name: String = String()

  /// Free-form human readable summary in English. The maximum length is 500
  /// characters.
  public var description_p: String = String()

  /// Fully qualified resource names that this insight is targeting.
  public var targetResources: [String] = []

  /// Insight subtype. Insight content schema will be stable for a given subtype.
  public var insightSubtype: String = String()

  /// A struct of custom fields to explain the insight.
  /// Example: "grantedPermissionsCount": "1000"
  public var content: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _content ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_content = newValue}
  }
  /// Returns true if `content` has been explicitly set.
  public var hasContent: Bool {return self._content != nil}
  /// Clears the value of `content`. Subsequent reads from it will return its default value.
  public mutating func clearContent() {self._content = nil}

  /// Timestamp of the latest data used to generate the insight.
  public var lastRefreshTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _lastRefreshTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_lastRefreshTime = newValue}
  }
  /// Returns true if `lastRefreshTime` has been explicitly set.
  public var hasLastRefreshTime: Bool {return self._lastRefreshTime != nil}
  /// Clears the value of `lastRefreshTime`. Subsequent reads from it will return its default value.
  public mutating func clearLastRefreshTime() {self._lastRefreshTime = nil}

  /// Observation period that led to the insight. The source data used to
  /// generate the insight ends at last_refresh_time and begins at
  /// (last_refresh_time - observation_period).
  public var observationPeriod: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _observationPeriod ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_observationPeriod = newValue}
  }
  /// Returns true if `observationPeriod` has been explicitly set.
  public var hasObservationPeriod: Bool {return self._observationPeriod != nil}
  /// Clears the value of `observationPeriod`. Subsequent reads from it will return its default value.
  public mutating func clearObservationPeriod() {self._observationPeriod = nil}

  /// Information state and metadata.
  public var stateInfo: Google_Cloud_Recommender_V1beta1_InsightStateInfo {
    get {return _stateInfo ?? Google_Cloud_Recommender_V1beta1_InsightStateInfo()}
    set {_stateInfo = newValue}
  }
  /// Returns true if `stateInfo` has been explicitly set.
  public var hasStateInfo: Bool {return self._stateInfo != nil}
  /// Clears the value of `stateInfo`. Subsequent reads from it will return its default value.
  public mutating func clearStateInfo() {self._stateInfo = nil}

  /// Category being targeted by the insight.
  public var category: Google_Cloud_Recommender_V1beta1_Insight.Category = .unspecified

  /// Fingerprint of the Insight. Provides optimistic locking when updating
  /// states.
  public var etag: String = String()

  /// Recommendations derived from this insight.
  public var associatedRecommendations: [Google_Cloud_Recommender_V1beta1_Insight.RecommendationReference] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Insight category.
  public enum Category: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified category.
    case unspecified // = 0

    /// The insight is related to cost.
    case cost // = 1

    /// The insight is related to security.
    case security // = 2

    /// The insight is related to performance.
    case performance // = 3

    /// This insight is related to manageability.
    case manageability // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .cost
      case 2: self = .security
      case 3: self = .performance
      case 4: self = .manageability
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .cost: return 1
      case .security: return 2
      case .performance: return 3
      case .manageability: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Reference to an associated recommendation.
  public struct RecommendationReference {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Recommendation resource name, e.g.
    /// projects/[PROJECT_NUMBER]/locations/[LOCATION]/recommenders/[RECOMMENDER_ID]/recommendations/[RECOMMENDATION_ID]
    public var recommendation: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _content: SwiftProtobuf.Google_Protobuf_Struct? = nil
  fileprivate var _lastRefreshTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _observationPeriod: SwiftProtobuf.Google_Protobuf_Duration? = nil
  fileprivate var _stateInfo: Google_Cloud_Recommender_V1beta1_InsightStateInfo? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Recommender_V1beta1_Insight.Category: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Recommender_V1beta1_Insight.Category] = [
    .unspecified,
    .cost,
    .security,
    .performance,
    .manageability,
  ]
}

#endif  // swift(>=4.2)

/// Information related to insight state.
public struct Google_Cloud_Recommender_V1beta1_InsightStateInfo {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Insight state.
  public var state: Google_Cloud_Recommender_V1beta1_InsightStateInfo.State = .unspecified

  /// A map of metadata for the state, provided by user or automations systems.
  public var stateMetadata: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Represents insight state.
  public enum State: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified state.
    case unspecified // = 0

    /// Insight is active. Content for ACTIVE insights can be updated by Google.
    /// ACTIVE insights can be marked DISMISSED OR ACCEPTED.
    case active // = 1

    /// Some action has been taken based on this insight. Insights become
    /// accepted when a recommendation derived from the insight has been marked
    /// CLAIMED, SUCCEEDED, or FAILED. ACTIVE insights can also be marked
    /// ACCEPTED explicitly. Content for ACCEPTED insights is immutable. ACCEPTED
    /// insights can only be marked ACCEPTED (which may update state metadata).
    case accepted // = 2

    /// Insight is dismissed. Content for DISMISSED insights can be updated by
    /// Google. DISMISSED insights can be marked as ACTIVE.
    case dismissed // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .active
      case 2: self = .accepted
      case 3: self = .dismissed
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .active: return 1
      case .accepted: return 2
      case .dismissed: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Recommender_V1beta1_InsightStateInfo.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Recommender_V1beta1_InsightStateInfo.State] = [
    .unspecified,
    .active,
    .accepted,
    .dismissed,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.recommender.v1beta1"

extension Google_Cloud_Recommender_V1beta1_Insight: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Insight"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "description"),
    9: .standard(proto: "target_resources"),
    10: .standard(proto: "insight_subtype"),
    3: .same(proto: "content"),
    4: .standard(proto: "last_refresh_time"),
    5: .standard(proto: "observation_period"),
    6: .standard(proto: "state_info"),
    7: .same(proto: "category"),
    11: .same(proto: "etag"),
    8: .standard(proto: "associated_recommendations"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._content) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._lastRefreshTime) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._observationPeriod) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._stateInfo) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.category) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.associatedRecommendations) }()
      case 9: try { try decoder.decodeRepeatedStringField(value: &self.targetResources) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.insightSubtype) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.etag) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 2)
    }
    if let v = self._content {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._lastRefreshTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._observationPeriod {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._stateInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if self.category != .unspecified {
      try visitor.visitSingularEnumField(value: self.category, fieldNumber: 7)
    }
    if !self.associatedRecommendations.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.associatedRecommendations, fieldNumber: 8)
    }
    if !self.targetResources.isEmpty {
      try visitor.visitRepeatedStringField(value: self.targetResources, fieldNumber: 9)
    }
    if !self.insightSubtype.isEmpty {
      try visitor.visitSingularStringField(value: self.insightSubtype, fieldNumber: 10)
    }
    if !self.etag.isEmpty {
      try visitor.visitSingularStringField(value: self.etag, fieldNumber: 11)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommender_V1beta1_Insight, rhs: Google_Cloud_Recommender_V1beta1_Insight) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.targetResources != rhs.targetResources {return false}
    if lhs.insightSubtype != rhs.insightSubtype {return false}
    if lhs._content != rhs._content {return false}
    if lhs._lastRefreshTime != rhs._lastRefreshTime {return false}
    if lhs._observationPeriod != rhs._observationPeriod {return false}
    if lhs._stateInfo != rhs._stateInfo {return false}
    if lhs.category != rhs.category {return false}
    if lhs.etag != rhs.etag {return false}
    if lhs.associatedRecommendations != rhs.associatedRecommendations {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommender_V1beta1_Insight.Category: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "CATEGORY_UNSPECIFIED"),
    1: .same(proto: "COST"),
    2: .same(proto: "SECURITY"),
    3: .same(proto: "PERFORMANCE"),
    4: .same(proto: "MANAGEABILITY"),
  ]
}

extension Google_Cloud_Recommender_V1beta1_Insight.RecommendationReference: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Recommender_V1beta1_Insight.protoMessageName + ".RecommendationReference"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "recommendation"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.recommendation) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.recommendation.isEmpty {
      try visitor.visitSingularStringField(value: self.recommendation, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommender_V1beta1_Insight.RecommendationReference, rhs: Google_Cloud_Recommender_V1beta1_Insight.RecommendationReference) -> Bool {
    if lhs.recommendation != rhs.recommendation {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommender_V1beta1_InsightStateInfo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".InsightStateInfo"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "state"),
    2: .standard(proto: "state_metadata"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.stateMetadata) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 1)
    }
    if !self.stateMetadata.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.stateMetadata, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Recommender_V1beta1_InsightStateInfo, rhs: Google_Cloud_Recommender_V1beta1_InsightStateInfo) -> Bool {
    if lhs.state != rhs.state {return false}
    if lhs.stateMetadata != rhs.stateMetadata {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Recommender_V1beta1_InsightStateInfo.State: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATE_UNSPECIFIED"),
    1: .same(proto: "ACTIVE"),
    2: .same(proto: "ACCEPTED"),
    3: .same(proto: "DISMISSED"),
  ]
}
