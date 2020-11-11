// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/dialogflow/cx/v3/entity_type.proto
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

/// Entities are extracted from user input and represent parameters that are
/// meaningful to your application. For example, a date range, a proper name
/// such as a geographic location or landmark, and so on. Entities represent
/// actionable data for your application.
///
/// When you define an entity, you can also include synonyms that all map to
/// that entity. For example, "soft drink", "soda", "pop", and so on.
///
/// There are three types of entities:
///
/// *   **System** - entities that are defined by the Dialogflow API for common
///     data types such as date, time, currency, and so on. A system entity is
///     represented by the `EntityType` type.
///
/// *   **Custom** - entities that are defined by you that represent
///     actionable data that is meaningful to your application. For example,
///     you could define a `pizza.sauce` entity for red or white pizza sauce,
///     a `pizza.cheese` entity for the different types of cheese on a pizza,
///     a `pizza.topping` entity for different toppings, and so on. A custom
///     entity is represented by the `EntityType` type.
///
/// *   **User** - entities that are built for an individual user such as
///     favorites, preferences, playlists, and so on. A user entity is
///     represented by the [SessionEntityType][google.cloud.dialogflow.cx.v3.SessionEntityType] type.
///
/// For more information about entity types, see the [Dialogflow
/// documentation](https://cloud.google.com/dialogflow/docs/entities-overview).
public struct Google_Cloud_Dialogflow_Cx_V3_EntityType {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The unique identifier of the entity type.
  /// Required for [EntityTypes.UpdateEntityType][google.cloud.dialogflow.cx.v3.EntityTypes.UpdateEntityType].
  /// Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
  /// ID>/entityTypes/<Entity Type ID>`.
  public var name: String = String()

  /// Required. The human-readable name of the entity type, unique within the agent.
  public var displayName: String = String()

  /// Required. Indicates the kind of entity type.
  public var kind: Google_Cloud_Dialogflow_Cx_V3_EntityType.Kind = .unspecified

  /// Indicates whether the entity type can be automatically expanded.
  public var autoExpansionMode: Google_Cloud_Dialogflow_Cx_V3_EntityType.AutoExpansionMode = .unspecified

  /// The collection of entity entries associated with the entity type.
  public var entities: [Google_Cloud_Dialogflow_Cx_V3_EntityType.Entity] = []

  /// Collection of exceptional words and phrases that shouldn't be matched.
  /// For example, if you have a size entity type with entry `giant`(an
  /// adjective), you might consider adding `giants`(a noun) as an exclusion.
  /// If the kind of entity type is `KIND_MAP`, then the phrases specified by
  /// entities and excluded phrases should be mutually exclusive.
  public var excludedPhrases: [Google_Cloud_Dialogflow_Cx_V3_EntityType.ExcludedPhrase] = []

  /// Enables fuzzy entity extraction during classification.
  public var enableFuzzyExtraction: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Represents kinds of entities.
  public enum Kind: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not specified. This value should be never used.
    case unspecified // = 0

    /// Map entity types allow mapping of a group of synonyms to a canonical
    /// value.
    case map // = 1

    /// List entity types contain a set of entries that do not map to canonical
    /// values. However, list entity types can contain references to other entity
    /// types (with or without aliases).
    case list // = 2

    /// Regexp entity types allow to specify regular expressions in entries
    /// values.
    case regexp // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .map
      case 2: self = .list
      case 3: self = .regexp
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .map: return 1
      case .list: return 2
      case .regexp: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Represents different entity type expansion modes. Automated expansion
  /// allows an agent to recognize values that have not been explicitly listed in
  /// the entity (for example, new kinds of shopping list items).
  public enum AutoExpansionMode: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Auto expansion disabled for the entity.
    case unspecified // = 0

    /// Allows an agent to recognize values that have not been explicitly
    /// listed in the entity.
    case `default` // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .default
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .default: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// An **entity entry** for an associated entity type.
  /// Next Id = 8
  public struct Entity {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. The primary value associated with this entity entry.
    /// For example, if the entity type is *vegetable*, the value could be
    /// *scallions*.
    ///
    /// For `KIND_MAP` entity types:
    ///
    /// *   A canonical value to be used in place of synonyms.
    ///
    /// For `KIND_LIST` entity types:
    ///
    /// *   A string that can contain references to other entity types (with or
    ///     without aliases).
    public var value: String = String()

    /// Required. A collection of value synonyms. For example, if the entity type
    /// is *vegetable*, and `value` is *scallions*, a synonym could be *green
    /// onions*.
    ///
    /// For `KIND_LIST` entity types:
    ///
    /// *   This collection must contain exactly one synonym equal to `value`.
    public var synonyms: [String] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// An excluded entity phrase that should not be matched.
  public struct ExcludedPhrase {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Required. The word or phrase to be excluded.
    public var value: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Dialogflow_Cx_V3_EntityType.Kind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Dialogflow_Cx_V3_EntityType.Kind] = [
    .unspecified,
    .map,
    .list,
    .regexp,
  ]
}

extension Google_Cloud_Dialogflow_Cx_V3_EntityType.AutoExpansionMode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Dialogflow_Cx_V3_EntityType.AutoExpansionMode] = [
    .unspecified,
    .default,
  ]
}

#endif  // swift(>=4.2)

/// The request message for [EntityTypes.ListEntityTypes][google.cloud.dialogflow.cx.v3.EntityTypes.ListEntityTypes].
public struct Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The agent to list all entity types for.
  /// Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
  public var parent: String = String()

  /// The language to list entity types for. The following fields are language
  /// dependent:
  ///
  /// *   `EntityType.entities.value`
  /// *   `EntityType.entities.synonyms`
  /// *   `EntityType.excluded_phrases.value`
  ///
  /// If not specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported.
  /// Note: languages must be enabled in the agent before they can be used.
  public var languageCode: String = String()

  /// The maximum number of items to return in a single page. By default 100 and
  /// at most 1000.
  public var pageSize: Int32 = 0

  /// The next_page_token value returned from a previous list request.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The response message for [EntityTypes.ListEntityTypes][google.cloud.dialogflow.cx.v3.EntityTypes.ListEntityTypes].
public struct Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of entity types. There will be a maximum number of items returned
  /// based on the page_size field in the request.
  public var entityTypes: [Google_Cloud_Dialogflow_Cx_V3_EntityType] = []

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The request message for [EntityTypes.GetEntityType][google.cloud.dialogflow.cx.v3.EntityTypes.GetEntityType].
public struct Google_Cloud_Dialogflow_Cx_V3_GetEntityTypeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the entity type.
  /// Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
  /// ID>/entityTypes/<Entity Type ID>`.
  public var name: String = String()

  /// The language to retrieve the entity type for. The following fields are
  /// language dependent:
  ///
  /// *   `EntityType.entities.value`
  /// *   `EntityType.entities.synonyms`
  /// *   `EntityType.excluded_phrases.value`
  ///
  /// If not specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported.
  /// Note: languages must be enabled in the agent before they can be used.
  public var languageCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The request message for [EntityTypes.CreateEntityType][google.cloud.dialogflow.cx.v3.EntityTypes.CreateEntityType].
public struct Google_Cloud_Dialogflow_Cx_V3_CreateEntityTypeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The agent to create a entity type for.
  /// Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>`.
  public var parent: String = String()

  /// Required. The entity type to create.
  public var entityType: Google_Cloud_Dialogflow_Cx_V3_EntityType {
    get {return _entityType ?? Google_Cloud_Dialogflow_Cx_V3_EntityType()}
    set {_entityType = newValue}
  }
  /// Returns true if `entityType` has been explicitly set.
  public var hasEntityType: Bool {return self._entityType != nil}
  /// Clears the value of `entityType`. Subsequent reads from it will return its default value.
  public mutating func clearEntityType() {self._entityType = nil}

  /// The language of the following fields in `entity_type`:
  ///
  /// *   `EntityType.entities.value`
  /// *   `EntityType.entities.synonyms`
  /// *   `EntityType.excluded_phrases.value`
  ///
  /// If not specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported.
  /// Note: languages must be enabled in the agent before they can be used.
  public var languageCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _entityType: Google_Cloud_Dialogflow_Cx_V3_EntityType? = nil
}

/// The request message for [EntityTypes.UpdateEntityType][google.cloud.dialogflow.cx.v3.EntityTypes.UpdateEntityType].
public struct Google_Cloud_Dialogflow_Cx_V3_UpdateEntityTypeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The entity type to update.
  public var entityType: Google_Cloud_Dialogflow_Cx_V3_EntityType {
    get {return _entityType ?? Google_Cloud_Dialogflow_Cx_V3_EntityType()}
    set {_entityType = newValue}
  }
  /// Returns true if `entityType` has been explicitly set.
  public var hasEntityType: Bool {return self._entityType != nil}
  /// Clears the value of `entityType`. Subsequent reads from it will return its default value.
  public mutating func clearEntityType() {self._entityType = nil}

  /// The language of the following fields in `entity_type`:
  ///
  /// *   `EntityType.entities.value`
  /// *   `EntityType.entities.synonyms`
  /// *   `EntityType.excluded_phrases.value`
  ///
  /// If not specified, the agent's default language is used.
  /// [Many
  /// languages](https://cloud.google.com/dialogflow/docs/reference/language)
  /// are supported.
  /// Note: languages must be enabled in the agent before they can be used.
  public var languageCode: String = String()

  /// The mask to control which fields get updated.
  public var updateMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _updateMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_updateMask = newValue}
  }
  /// Returns true if `updateMask` has been explicitly set.
  public var hasUpdateMask: Bool {return self._updateMask != nil}
  /// Clears the value of `updateMask`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateMask() {self._updateMask = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _entityType: Google_Cloud_Dialogflow_Cx_V3_EntityType? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// The request message for [EntityTypes.DeleteEntityType][google.cloud.dialogflow.cx.v3.EntityTypes.DeleteEntityType].
public struct Google_Cloud_Dialogflow_Cx_V3_DeleteEntityTypeRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the entity type to delete.
  /// Format: `projects/<Project ID>/locations/<Location ID>/agents/<Agent
  /// ID>/entityTypes/<Entity Type ID>`.
  public var name: String = String()

  /// This field has no effect for entity type not being used.
  /// For entity types that are used by intents or pages:
  ///
  /// *  If `force` is set to false, an error will be returned with message
  ///    indicating the referencing resources.
  /// *  If `force` is set to true, Dialogflow will remove the entity type, as
  ///    well as any references to the entity type (i.e. Page
  ///    [parameter][google.cloud.dialogflow.cx.v3.Form.Parameter] of the entity type will be changed to
  ///    '@sys.any' and intent [parameter][google.cloud.dialogflow.cx.v3.Intent.Parameter] of the entity type
  ///    will be removed).
  public var force: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.dialogflow.cx.v3"

extension Google_Cloud_Dialogflow_Cx_V3_EntityType: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".EntityType"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "display_name"),
    3: .same(proto: "kind"),
    4: .standard(proto: "auto_expansion_mode"),
    5: .same(proto: "entities"),
    6: .standard(proto: "excluded_phrases"),
    7: .standard(proto: "enable_fuzzy_extraction"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.displayName) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.kind) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.autoExpansionMode) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.entities) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.excludedPhrases) }()
      case 7: try { try decoder.decodeSingularBoolField(value: &self.enableFuzzyExtraction) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 2)
    }
    if self.kind != .unspecified {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 3)
    }
    if self.autoExpansionMode != .unspecified {
      try visitor.visitSingularEnumField(value: self.autoExpansionMode, fieldNumber: 4)
    }
    if !self.entities.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.entities, fieldNumber: 5)
    }
    if !self.excludedPhrases.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.excludedPhrases, fieldNumber: 6)
    }
    if self.enableFuzzyExtraction != false {
      try visitor.visitSingularBoolField(value: self.enableFuzzyExtraction, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_EntityType, rhs: Google_Cloud_Dialogflow_Cx_V3_EntityType) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.kind != rhs.kind {return false}
    if lhs.autoExpansionMode != rhs.autoExpansionMode {return false}
    if lhs.entities != rhs.entities {return false}
    if lhs.excludedPhrases != rhs.excludedPhrases {return false}
    if lhs.enableFuzzyExtraction != rhs.enableFuzzyExtraction {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_EntityType.Kind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "KIND_UNSPECIFIED"),
    1: .same(proto: "KIND_MAP"),
    2: .same(proto: "KIND_LIST"),
    3: .same(proto: "KIND_REGEXP"),
  ]
}

extension Google_Cloud_Dialogflow_Cx_V3_EntityType.AutoExpansionMode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "AUTO_EXPANSION_MODE_UNSPECIFIED"),
    1: .same(proto: "AUTO_EXPANSION_MODE_DEFAULT"),
  ]
}

extension Google_Cloud_Dialogflow_Cx_V3_EntityType.Entity: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Dialogflow_Cx_V3_EntityType.protoMessageName + ".Entity"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
    2: .same(proto: "synonyms"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.value) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.synonyms) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 1)
    }
    if !self.synonyms.isEmpty {
      try visitor.visitRepeatedStringField(value: self.synonyms, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_EntityType.Entity, rhs: Google_Cloud_Dialogflow_Cx_V3_EntityType.Entity) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.synonyms != rhs.synonyms {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_EntityType.ExcludedPhrase: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Dialogflow_Cx_V3_EntityType.protoMessageName + ".ExcludedPhrase"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.value) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.value.isEmpty {
      try visitor.visitSingularStringField(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_EntityType.ExcludedPhrase, rhs: Google_Cloud_Dialogflow_Cx_V3_EntityType.ExcludedPhrase) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListEntityTypesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "language_code"),
    3: .standard(proto: "page_size"),
    4: .standard(proto: "page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 2)
    }
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 3)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesRequest, rhs: Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListEntityTypesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "entity_types"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.entityTypes) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.entityTypes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.entityTypes, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesResponse, rhs: Google_Cloud_Dialogflow_Cx_V3_ListEntityTypesResponse) -> Bool {
    if lhs.entityTypes != rhs.entityTypes {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_GetEntityTypeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetEntityTypeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_GetEntityTypeRequest, rhs: Google_Cloud_Dialogflow_Cx_V3_GetEntityTypeRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_CreateEntityTypeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateEntityTypeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "entity_type"),
    3: .standard(proto: "language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._entityType) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._entityType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_CreateEntityTypeRequest, rhs: Google_Cloud_Dialogflow_Cx_V3_CreateEntityTypeRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._entityType != rhs._entityType {return false}
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_UpdateEntityTypeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateEntityTypeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "entity_type"),
    2: .standard(proto: "language_code"),
    3: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._entityType) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._entityType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 2)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_UpdateEntityTypeRequest, rhs: Google_Cloud_Dialogflow_Cx_V3_UpdateEntityTypeRequest) -> Bool {
    if lhs._entityType != rhs._entityType {return false}
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_Cx_V3_DeleteEntityTypeRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteEntityTypeRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "force"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.force) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.force != false {
      try visitor.visitSingularBoolField(value: self.force, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_Cx_V3_DeleteEntityTypeRequest, rhs: Google_Cloud_Dialogflow_Cx_V3_DeleteEntityTypeRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.force != rhs.force {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
