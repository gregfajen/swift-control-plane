// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/gaming/v1/realms.proto
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

/// Request message for RealmsService.ListRealms.
public struct Google_Cloud_Gaming_V1_ListRealmsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The parent resource name. Uses the form:
  /// `projects/{project}/locations/{location}`.
  public var parent: String = String()

  /// Optional. The maximum number of items to return.  If unspecified, server
  /// will pick an appropriate default. Server may return fewer items than
  /// requested. A caller should only rely on response's
  /// [next_page_token][google.cloud.gaming.v1.ListRealmsResponse.next_page_token] to
  /// determine if there are more realms left to be queried.
  public var pageSize: Int32 = 0

  /// Optional. The next_page_token value returned from a previous List request,
  /// if any.
  public var pageToken: String = String()

  /// Optional. The filter to apply to list results.
  public var filter: String = String()

  /// Optional. Specifies the ordering of results following syntax at
  /// https://cloud.google.com/apis/design/design_patterns#sorting_order.
  public var orderBy: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response message for RealmsService.ListRealms.
public struct Google_Cloud_Gaming_V1_ListRealmsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of realms.
  public var realms: [Google_Cloud_Gaming_V1_Realm] = []

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  public var nextPageToken: String = String()

  /// List of locations that could not be reached.
  public var unreachable: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for RealmsService.GetRealm.
public struct Google_Cloud_Gaming_V1_GetRealmRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the realm to retrieve. Uses the form:
  /// `projects/{project}/locations/{location}/realms/{realm}`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for RealmsService.CreateRealm.
public struct Google_Cloud_Gaming_V1_CreateRealmRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The parent resource name. Uses the form:
  /// `projects/{project}/locations/{location}`.
  public var parent: String = String()

  /// Required. The ID of the realm resource to be created.
  public var realmID: String = String()

  /// Required. The realm resource to be created.
  public var realm: Google_Cloud_Gaming_V1_Realm {
    get {return _realm ?? Google_Cloud_Gaming_V1_Realm()}
    set {_realm = newValue}
  }
  /// Returns true if `realm` has been explicitly set.
  public var hasRealm: Bool {return self._realm != nil}
  /// Clears the value of `realm`. Subsequent reads from it will return its default value.
  public mutating func clearRealm() {self._realm = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _realm: Google_Cloud_Gaming_V1_Realm? = nil
}

/// Request message for RealmsService.DeleteRealm.
public struct Google_Cloud_Gaming_V1_DeleteRealmRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the realm to delete. Uses the form:
  /// `projects/{project}/locations/{location}/realms/{realm}`.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request message for RealmsService.UpdateRealm.
public struct Google_Cloud_Gaming_V1_UpdateRealmRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The realm to be updated.
  /// Only fields specified in update_mask are updated.
  public var realm: Google_Cloud_Gaming_V1_Realm {
    get {return _realm ?? Google_Cloud_Gaming_V1_Realm()}
    set {_realm = newValue}
  }
  /// Returns true if `realm` has been explicitly set.
  public var hasRealm: Bool {return self._realm != nil}
  /// Clears the value of `realm`. Subsequent reads from it will return its default value.
  public mutating func clearRealm() {self._realm = nil}

  /// Required. The update mask applies to the resource. For the `FieldMask`
  /// definition, see
  ///
  /// https:
  /// //developers.google.com/protocol-buffers
  /// // /docs/reference/google.protobuf#fieldmask
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

  fileprivate var _realm: Google_Cloud_Gaming_V1_Realm? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// Request message for RealmsService.PreviewRealmUpdate.
public struct Google_Cloud_Gaming_V1_PreviewRealmUpdateRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The realm to be updated.
  /// Only fields specified in update_mask are updated.
  public var realm: Google_Cloud_Gaming_V1_Realm {
    get {return _realm ?? Google_Cloud_Gaming_V1_Realm()}
    set {_realm = newValue}
  }
  /// Returns true if `realm` has been explicitly set.
  public var hasRealm: Bool {return self._realm != nil}
  /// Clears the value of `realm`. Subsequent reads from it will return its default value.
  public mutating func clearRealm() {self._realm = nil}

  /// Required. The update mask applies to the resource. For the `FieldMask`
  /// definition, see
  ///
  /// https:
  /// //developers.google.com/protocol-buffers
  /// // /docs/reference/google.protobuf#fieldmask
  public var updateMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _updateMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_updateMask = newValue}
  }
  /// Returns true if `updateMask` has been explicitly set.
  public var hasUpdateMask: Bool {return self._updateMask != nil}
  /// Clears the value of `updateMask`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateMask() {self._updateMask = nil}

  /// Optional. The target timestamp to compute the preview.
  public var previewTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _previewTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_previewTime = newValue}
  }
  /// Returns true if `previewTime` has been explicitly set.
  public var hasPreviewTime: Bool {return self._previewTime != nil}
  /// Clears the value of `previewTime`. Subsequent reads from it will return its default value.
  public mutating func clearPreviewTime() {self._previewTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _realm: Google_Cloud_Gaming_V1_Realm? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
  fileprivate var _previewTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Response message for RealmsService.PreviewRealmUpdate.
public struct Google_Cloud_Gaming_V1_PreviewRealmUpdateResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ETag of the realm.
  public var etag: String = String()

  /// The target state.
  public var targetState: Google_Cloud_Gaming_V1_TargetState {
    get {return _targetState ?? Google_Cloud_Gaming_V1_TargetState()}
    set {_targetState = newValue}
  }
  /// Returns true if `targetState` has been explicitly set.
  public var hasTargetState: Bool {return self._targetState != nil}
  /// Clears the value of `targetState`. Subsequent reads from it will return its default value.
  public mutating func clearTargetState() {self._targetState = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _targetState: Google_Cloud_Gaming_V1_TargetState? = nil
}

/// A realm resource.
public struct Google_Cloud_Gaming_V1_Realm {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the realm. Uses the form:
  /// `projects/{project}/locations/{location}/realms/{realm}`. For
  /// example, `projects/my-project/locations/{location}/realms/my-realm`.
  public var name: String = String()

  /// Output only. The creation time.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. The last-modified time.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  /// The labels associated with this realm. Each label is a key-value pair.
  public var labels: Dictionary<String,String> = [:]

  /// Required. Time zone where all policies targeting this realm are evaluated. The value
  /// of this field must be from the IANA time zone database:
  /// https://www.iana.org/time-zones.
  public var timeZone: String = String()

  /// ETag of the resource.
  public var etag: String = String()

  /// Human readable description of the realm.
  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.gaming.v1"

extension Google_Cloud_Gaming_V1_ListRealmsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListRealmsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "page_size"),
    3: .standard(proto: "page_token"),
    4: .same(proto: "filter"),
    5: .standard(proto: "order_by"),
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
      case 4: try { try decoder.decodeSingularStringField(value: &self.filter) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.orderBy) }()
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
    if !self.filter.isEmpty {
      try visitor.visitSingularStringField(value: self.filter, fieldNumber: 4)
    }
    if !self.orderBy.isEmpty {
      try visitor.visitSingularStringField(value: self.orderBy, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_ListRealmsRequest, rhs: Google_Cloud_Gaming_V1_ListRealmsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.filter != rhs.filter {return false}
    if lhs.orderBy != rhs.orderBy {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_ListRealmsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListRealmsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "realms"),
    2: .standard(proto: "next_page_token"),
    3: .same(proto: "unreachable"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.realms) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.unreachable) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.realms.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.realms, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    if !self.unreachable.isEmpty {
      try visitor.visitRepeatedStringField(value: self.unreachable, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_ListRealmsResponse, rhs: Google_Cloud_Gaming_V1_ListRealmsResponse) -> Bool {
    if lhs.realms != rhs.realms {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unreachable != rhs.unreachable {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_GetRealmRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetRealmRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_GetRealmRequest, rhs: Google_Cloud_Gaming_V1_GetRealmRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_CreateRealmRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateRealmRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "realm_id"),
    3: .same(proto: "realm"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.realmID) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._realm) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if !self.realmID.isEmpty {
      try visitor.visitSingularStringField(value: self.realmID, fieldNumber: 2)
    }
    if let v = self._realm {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_CreateRealmRequest, rhs: Google_Cloud_Gaming_V1_CreateRealmRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.realmID != rhs.realmID {return false}
    if lhs._realm != rhs._realm {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_DeleteRealmRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteRealmRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_DeleteRealmRequest, rhs: Google_Cloud_Gaming_V1_DeleteRealmRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_UpdateRealmRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateRealmRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "realm"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._realm) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._realm {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_UpdateRealmRequest, rhs: Google_Cloud_Gaming_V1_UpdateRealmRequest) -> Bool {
    if lhs._realm != rhs._realm {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_PreviewRealmUpdateRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PreviewRealmUpdateRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "realm"),
    2: .standard(proto: "update_mask"),
    3: .standard(proto: "preview_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._realm) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._previewTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._realm {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._previewTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_PreviewRealmUpdateRequest, rhs: Google_Cloud_Gaming_V1_PreviewRealmUpdateRequest) -> Bool {
    if lhs._realm != rhs._realm {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs._previewTime != rhs._previewTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_PreviewRealmUpdateResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PreviewRealmUpdateResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .same(proto: "etag"),
    3: .standard(proto: "target_state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularStringField(value: &self.etag) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._targetState) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.etag.isEmpty {
      try visitor.visitSingularStringField(value: self.etag, fieldNumber: 2)
    }
    if let v = self._targetState {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_PreviewRealmUpdateResponse, rhs: Google_Cloud_Gaming_V1_PreviewRealmUpdateResponse) -> Bool {
    if lhs.etag != rhs.etag {return false}
    if lhs._targetState != rhs._targetState {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Gaming_V1_Realm: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Realm"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "create_time"),
    3: .standard(proto: "update_time"),
    4: .same(proto: "labels"),
    6: .standard(proto: "time_zone"),
    7: .same(proto: "etag"),
    8: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      case 4: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.timeZone) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.etag) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 4)
    }
    if !self.timeZone.isEmpty {
      try visitor.visitSingularStringField(value: self.timeZone, fieldNumber: 6)
    }
    if !self.etag.isEmpty {
      try visitor.visitSingularStringField(value: self.etag, fieldNumber: 7)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Gaming_V1_Realm, rhs: Google_Cloud_Gaming_V1_Realm) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.timeZone != rhs.timeZone {return false}
    if lhs.etag != rhs.etag {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
