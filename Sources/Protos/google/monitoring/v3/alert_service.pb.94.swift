// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/monitoring/v3/alert_service.proto
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

/// The protocol for the `CreateAlertPolicy` request.
public struct Google_Monitoring_V3_CreateAlertPolicyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The project in which to create the alerting policy. The format is:
  ///
  ///     projects/[PROJECT_ID_OR_NUMBER]
  ///
  /// Note that this field names the parent container in which the alerting
  /// policy will be written, not the name of the created policy. The alerting
  /// policy that is returned will have a name that contains a normalized
  /// representation of this name as a prefix but adds a suffix of the form
  /// `/alertPolicies/[ALERT_POLICY_ID]`, identifying the policy in the
  /// container.
  public var name: String = String()

  /// Required. The requested alerting policy. You should omit the `name` field in this
  /// policy. The name will be returned in the new policy, including
  /// a new `[ALERT_POLICY_ID]` value.
  public var alertPolicy: Google_Monitoring_V3_AlertPolicy {
    get {return _alertPolicy ?? Google_Monitoring_V3_AlertPolicy()}
    set {_alertPolicy = newValue}
  }
  /// Returns true if `alertPolicy` has been explicitly set.
  public var hasAlertPolicy: Bool {return self._alertPolicy != nil}
  /// Clears the value of `alertPolicy`. Subsequent reads from it will return its default value.
  public mutating func clearAlertPolicy() {self._alertPolicy = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _alertPolicy: Google_Monitoring_V3_AlertPolicy? = nil
}

/// The protocol for the `GetAlertPolicy` request.
public struct Google_Monitoring_V3_GetAlertPolicyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The alerting policy to retrieve. The format is:
  ///
  ///     projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The protocol for the `ListAlertPolicies` request.
public struct Google_Monitoring_V3_ListAlertPoliciesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The project whose alert policies are to be listed. The format is:
  ///
  ///     projects/[PROJECT_ID_OR_NUMBER]
  ///
  /// Note that this field names the parent container in which the alerting
  /// policies to be listed are stored. To retrieve a single alerting policy
  /// by name, use the
  /// [GetAlertPolicy][google.monitoring.v3.AlertPolicyService.GetAlertPolicy]
  /// operation, instead.
  public var name: String = String()

  /// If provided, this field specifies the criteria that must be met by
  /// alert policies to be included in the response.
  ///
  /// For more details, see [sorting and
  /// filtering](https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).
  public var filter: String = String()

  /// A comma-separated list of fields by which to sort the result. Supports
  /// the same set of field references as the `filter` field. Entries can be
  /// prefixed with a minus sign to sort by the field in descending order.
  ///
  /// For more details, see [sorting and
  /// filtering](https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).
  public var orderBy: String = String()

  /// The maximum number of results to return in a single response.
  public var pageSize: Int32 = 0

  /// If this field is not empty then it must contain the `nextPageToken` value
  /// returned by a previous call to this method.  Using this field causes the
  /// method to return more results from the previous method call.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The protocol for the `ListAlertPolicies` response.
public struct Google_Monitoring_V3_ListAlertPoliciesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The returned alert policies.
  public var alertPolicies: [Google_Monitoring_V3_AlertPolicy] = []

  /// If there might be more results than were returned, then this field is set
  /// to a non-empty value. To see the additional results,
  /// use that value as `page_token` in the next call to this method.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The protocol for the `UpdateAlertPolicy` request.
public struct Google_Monitoring_V3_UpdateAlertPolicyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. A list of alerting policy field names. If this field is not
  /// empty, each listed field in the existing alerting policy is set to the
  /// value of the corresponding field in the supplied policy (`alert_policy`),
  /// or to the field's default value if the field is not in the supplied
  /// alerting policy.  Fields not listed retain their previous value.
  ///
  /// Examples of valid field masks include `display_name`, `documentation`,
  /// `documentation.content`, `documentation.mime_type`, `user_labels`,
  /// `user_label.nameofkey`, `enabled`, `conditions`, `combiner`, etc.
  ///
  /// If this field is empty, then the supplied alerting policy replaces the
  /// existing policy. It is the same as deleting the existing policy and
  /// adding the supplied policy, except for the following:
  ///
  /// +   The new policy will have the same `[ALERT_POLICY_ID]` as the former
  ///     policy. This gives you continuity with the former policy in your
  ///     notifications and incidents.
  /// +   Conditions in the new policy will keep their former `[CONDITION_ID]` if
  ///     the supplied condition includes the `name` field with that
  ///     `[CONDITION_ID]`. If the supplied condition omits the `name` field,
  ///     then a new `[CONDITION_ID]` is created.
  public var updateMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _updateMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_updateMask = newValue}
  }
  /// Returns true if `updateMask` has been explicitly set.
  public var hasUpdateMask: Bool {return self._updateMask != nil}
  /// Clears the value of `updateMask`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateMask() {self._updateMask = nil}

  /// Required. The updated alerting policy or the updated values for the
  /// fields listed in `update_mask`.
  /// If `update_mask` is not empty, any fields in this policy that are
  /// not in `update_mask` are ignored.
  public var alertPolicy: Google_Monitoring_V3_AlertPolicy {
    get {return _alertPolicy ?? Google_Monitoring_V3_AlertPolicy()}
    set {_alertPolicy = newValue}
  }
  /// Returns true if `alertPolicy` has been explicitly set.
  public var hasAlertPolicy: Bool {return self._alertPolicy != nil}
  /// Clears the value of `alertPolicy`. Subsequent reads from it will return its default value.
  public mutating func clearAlertPolicy() {self._alertPolicy = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
  fileprivate var _alertPolicy: Google_Monitoring_V3_AlertPolicy? = nil
}

/// The protocol for the `DeleteAlertPolicy` request.
public struct Google_Monitoring_V3_DeleteAlertPolicyRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The alerting policy to delete. The format is:
  ///
  ///     projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
  ///
  /// For more information, see [AlertPolicy][google.monitoring.v3.AlertPolicy].
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.monitoring.v3"

extension Google_Monitoring_V3_CreateAlertPolicyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateAlertPolicyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .same(proto: "name"),
    2: .standard(proto: "alert_policy"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._alertPolicy) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._alertPolicy {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_V3_CreateAlertPolicyRequest, rhs: Google_Monitoring_V3_CreateAlertPolicyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._alertPolicy != rhs._alertPolicy {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_V3_GetAlertPolicyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetAlertPolicyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_V3_GetAlertPolicyRequest, rhs: Google_Monitoring_V3_GetAlertPolicyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_V3_ListAlertPoliciesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListAlertPoliciesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    4: .same(proto: "name"),
    5: .same(proto: "filter"),
    6: .standard(proto: "order_by"),
    2: .standard(proto: "page_size"),
    3: .standard(proto: "page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.filter) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.orderBy) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 2)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 3)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 4)
    }
    if !self.filter.isEmpty {
      try visitor.visitSingularStringField(value: self.filter, fieldNumber: 5)
    }
    if !self.orderBy.isEmpty {
      try visitor.visitSingularStringField(value: self.orderBy, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_V3_ListAlertPoliciesRequest, rhs: Google_Monitoring_V3_ListAlertPoliciesRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.filter != rhs.filter {return false}
    if lhs.orderBy != rhs.orderBy {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_V3_ListAlertPoliciesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListAlertPoliciesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .standard(proto: "alert_policies"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.alertPolicies) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    if !self.alertPolicies.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.alertPolicies, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_V3_ListAlertPoliciesResponse, rhs: Google_Monitoring_V3_ListAlertPoliciesResponse) -> Bool {
    if lhs.alertPolicies != rhs.alertPolicies {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_V3_UpdateAlertPolicyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateAlertPolicyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "update_mask"),
    3: .standard(proto: "alert_policy"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._alertPolicy) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._alertPolicy {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_V3_UpdateAlertPolicyRequest, rhs: Google_Monitoring_V3_UpdateAlertPolicyRequest) -> Bool {
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs._alertPolicy != rhs._alertPolicy {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Monitoring_V3_DeleteAlertPolicyRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteAlertPolicyRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    3: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 3: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Monitoring_V3_DeleteAlertPolicyRequest, rhs: Google_Monitoring_V3_DeleteAlertPolicyRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}