// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/workflows/v1beta/workflows.proto
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

/// Workflow program to be executed by Workflows.
public struct Google_Cloud_Workflows_V1beta_Workflow {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the workflow.
  /// Format: projects/{project}/locations/{location}/workflows/{workflow}
  public var name: String = String()

  /// Description of the workflow provided by the user.
  /// Must be at most 1000 unicode characters long.
  public var description_p: String = String()

  /// Output only. State of the workflow deployment.
  public var state: Google_Cloud_Workflows_V1beta_Workflow.State = .unspecified

  /// Output only. The revision of the workflow.
  /// A new revision of a workflow is created as a result of updating the
  /// following fields of a workflow:
  /// - `source_code`
  /// - `service_account`
  /// The format is "000001-a4d", where the first 6 characters define
  /// the zero-padded revision ordinal number. They are followed by a hyphen and
  /// 3 hexadecimal random characters.
  public var revisionID: String = String()

  /// Output only. The timestamp of when the workflow was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. The last update timestamp of the workflow.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  /// Output only. The timestamp that the latest revision of the workflow
  /// was created.
  public var revisionCreateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _revisionCreateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_revisionCreateTime = newValue}
  }
  /// Returns true if `revisionCreateTime` has been explicitly set.
  public var hasRevisionCreateTime: Bool {return self._revisionCreateTime != nil}
  /// Clears the value of `revisionCreateTime`. Subsequent reads from it will return its default value.
  public mutating func clearRevisionCreateTime() {self._revisionCreateTime = nil}

  /// Labels associated with this workflow.
  /// Labels can contain at most 64 entries. Keys and values can be no longer
  /// than 63 characters and can only contain lowercase letters, numeric
  /// characters, underscores and dashes. Label keys must start with a letter.
  /// International characters are allowed.
  public var labels: Dictionary<String,String> = [:]

  /// Name of the service account associated with the latest workflow version.
  /// This service account represents the identity of the workflow and determines
  /// what permissions the workflow has.
  /// Format: projects/{project}/serviceAccounts/{account}
  ///
  /// Using `-` as a wildcard for the `{project}` will infer the project from
  /// the account. The `{account}` value can be the `email` address or the
  /// `unique_id` of the service account.
  ///
  /// If not provided, workflow will use the project's default service account.
  /// Modifying this field for an existing workflow results in a new workflow
  /// revision.
  public var serviceAccount: String = String()

  /// Required. Location of the workflow source code.
  /// Modifying this field for an existing workflow results in a new workflow
  /// revision.
  public var sourceCode: Google_Cloud_Workflows_V1beta_Workflow.OneOf_SourceCode? = nil

  /// Workflow code to be executed. The size limit is 32KB.
  public var sourceContents: String {
    get {
      if case .sourceContents(let v)? = sourceCode {return v}
      return String()
    }
    set {sourceCode = .sourceContents(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Required. Location of the workflow source code.
  /// Modifying this field for an existing workflow results in a new workflow
  /// revision.
  public enum OneOf_SourceCode: Equatable {
    /// Workflow code to be executed. The size limit is 32KB.
    case sourceContents(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Workflows_V1beta_Workflow.OneOf_SourceCode, rhs: Google_Cloud_Workflows_V1beta_Workflow.OneOf_SourceCode) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.sourceContents, .sourceContents): return {
        guard case .sourceContents(let l) = lhs, case .sourceContents(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  /// Describes the current state of workflow deployment. More states may be
  /// added in the future.
  public enum State: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Invalid state.
    case unspecified // = 0

    /// The workflow has been deployed successfully and is serving.
    case active // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .active
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .active: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _revisionCreateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Workflows_V1beta_Workflow.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Workflows_V1beta_Workflow.State] = [
    .unspecified,
    .active,
  ]
}

#endif  // swift(>=4.2)

/// Request for the
/// [ListWorkflows][google.cloud.workflows.v1beta.Workflows.ListWorkflows]
/// method.
public struct Google_Cloud_Workflows_V1beta_ListWorkflowsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Project and location from which the workflows should be listed.
  /// Format: projects/{project}/locations/{location}
  public var parent: String = String()

  /// Maximum number of workflows to return per call. The service may return
  /// fewer than this value. If the value is not specified, a default value of
  /// 500 will be used. The maximum permitted value is 1000 and values greater
  /// than 1000 will be coerced down to 1000.
  public var pageSize: Int32 = 0

  /// A page token, received from a previous `ListWorkflows` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// When paginating, all other parameters provided to `ListWorkflows` must
  /// match the call that provided the page token.
  public var pageToken: String = String()

  /// Filter to restrict results to specific workflows.
  public var filter: String = String()

  /// Comma-separated list of fields that that specify the order of the results.
  /// Default sorting order for a field is ascending. To specify descending order
  /// for a field, append a " desc" suffix.
  /// If not specified, the results will be returned in an unspecified order.
  public var orderBy: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response for the
/// [ListWorkflows][google.cloud.workflows.v1beta.Workflows.ListWorkflows]
/// method.
public struct Google_Cloud_Workflows_V1beta_ListWorkflowsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The workflows which match the request.
  public var workflows: [Google_Cloud_Workflows_V1beta_Workflow] = []

  /// A token, which can be sent as `page_token` to retrieve the next page.
  /// If this field is omitted, there are no subsequent pages.
  public var nextPageToken: String = String()

  /// Unreachable resources.
  public var unreachable: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for the
/// [GetWorkflow][google.cloud.workflows.v1beta.Workflows.GetWorkflow] method.
public struct Google_Cloud_Workflows_V1beta_GetWorkflowRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Name of the workflow which information should be retrieved.
  /// Format: projects/{project}/locations/{location}/workflows/{workflow}
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for the
/// [CreateWorkflow][google.cloud.workflows.v1beta.Workflows.CreateWorkflow]
/// method.
public struct Google_Cloud_Workflows_V1beta_CreateWorkflowRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Project and location in which the workflow should be created.
  /// Format:  projects/{project}/locations/{location}
  public var parent: String = String()

  /// Required. Workflow to be created.
  public var workflow: Google_Cloud_Workflows_V1beta_Workflow {
    get {return _workflow ?? Google_Cloud_Workflows_V1beta_Workflow()}
    set {_workflow = newValue}
  }
  /// Returns true if `workflow` has been explicitly set.
  public var hasWorkflow: Bool {return self._workflow != nil}
  /// Clears the value of `workflow`. Subsequent reads from it will return its default value.
  public mutating func clearWorkflow() {self._workflow = nil}

  /// Required. The ID of the workflow to be created. It has to fulfill the
  /// following requirements:
  ///
  /// * Must contain only letters, numbers, underscores and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-64 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the customer project and location.
  public var workflowID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _workflow: Google_Cloud_Workflows_V1beta_Workflow? = nil
}

/// Request for the
/// [DeleteWorkflow][google.cloud.workflows.v1beta.Workflows.DeleteWorkflow]
/// method.
public struct Google_Cloud_Workflows_V1beta_DeleteWorkflowRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Name of the workflow to be deleted.
  /// Format: projects/{project}/locations/{location}/workflows/{workflow}
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for the
/// [UpdateWorkflow][google.cloud.workflows.v1beta.Workflows.UpdateWorkflow]
/// method.
public struct Google_Cloud_Workflows_V1beta_UpdateWorkflowRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Workflow to be updated.
  public var workflow: Google_Cloud_Workflows_V1beta_Workflow {
    get {return _workflow ?? Google_Cloud_Workflows_V1beta_Workflow()}
    set {_workflow = newValue}
  }
  /// Returns true if `workflow` has been explicitly set.
  public var hasWorkflow: Bool {return self._workflow != nil}
  /// Clears the value of `workflow`. Subsequent reads from it will return its default value.
  public mutating func clearWorkflow() {self._workflow = nil}

  /// List of fields to be updated. If not present, the entire workflow
  /// will be updated.
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

  fileprivate var _workflow: Google_Cloud_Workflows_V1beta_Workflow? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// Represents the metadata of the long-running operation.
public struct Google_Cloud_Workflows_V1beta_OperationMetadata {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The time the operation was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// The time the operation finished running.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// Server-defined resource path for the target of the operation.
  public var target: String = String()

  /// Name of the verb executed by the operation.
  public var verb: String = String()

  /// API version used to start the operation.
  public var apiVersion: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.workflows.v1beta"

extension Google_Cloud_Workflows_V1beta_Workflow: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Workflow"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "description"),
    3: .same(proto: "state"),
    4: .standard(proto: "revision_id"),
    5: .standard(proto: "create_time"),
    6: .standard(proto: "update_time"),
    7: .standard(proto: "revision_create_time"),
    8: .same(proto: "labels"),
    9: .standard(proto: "service_account"),
    10: .standard(proto: "source_contents"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.revisionID) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._revisionCreateTime) }()
      case 8: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.serviceAccount) }()
      case 10: try {
        if self.sourceCode != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.sourceCode = .sourceContents(v)}
      }()
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
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 3)
    }
    if !self.revisionID.isEmpty {
      try visitor.visitSingularStringField(value: self.revisionID, fieldNumber: 4)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if let v = self._revisionCreateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 8)
    }
    if !self.serviceAccount.isEmpty {
      try visitor.visitSingularStringField(value: self.serviceAccount, fieldNumber: 9)
    }
    if case .sourceContents(let v)? = self.sourceCode {
      try visitor.visitSingularStringField(value: v, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_Workflow, rhs: Google_Cloud_Workflows_V1beta_Workflow) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.state != rhs.state {return false}
    if lhs.revisionID != rhs.revisionID {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs._revisionCreateTime != rhs._revisionCreateTime {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.serviceAccount != rhs.serviceAccount {return false}
    if lhs.sourceCode != rhs.sourceCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_V1beta_Workflow.State: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATE_UNSPECIFIED"),
    1: .same(proto: "ACTIVE"),
  ]
}

extension Google_Cloud_Workflows_V1beta_ListWorkflowsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListWorkflowsRequest"
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

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_ListWorkflowsRequest, rhs: Google_Cloud_Workflows_V1beta_ListWorkflowsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.filter != rhs.filter {return false}
    if lhs.orderBy != rhs.orderBy {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_V1beta_ListWorkflowsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListWorkflowsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "workflows"),
    2: .standard(proto: "next_page_token"),
    3: .same(proto: "unreachable"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.workflows) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.unreachable) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.workflows.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.workflows, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    if !self.unreachable.isEmpty {
      try visitor.visitRepeatedStringField(value: self.unreachable, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_ListWorkflowsResponse, rhs: Google_Cloud_Workflows_V1beta_ListWorkflowsResponse) -> Bool {
    if lhs.workflows != rhs.workflows {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unreachable != rhs.unreachable {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_V1beta_GetWorkflowRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetWorkflowRequest"
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

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_GetWorkflowRequest, rhs: Google_Cloud_Workflows_V1beta_GetWorkflowRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_V1beta_CreateWorkflowRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateWorkflowRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "workflow"),
    3: .standard(proto: "workflow_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._workflow) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.workflowID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._workflow {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.workflowID.isEmpty {
      try visitor.visitSingularStringField(value: self.workflowID, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_CreateWorkflowRequest, rhs: Google_Cloud_Workflows_V1beta_CreateWorkflowRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._workflow != rhs._workflow {return false}
    if lhs.workflowID != rhs.workflowID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_V1beta_DeleteWorkflowRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteWorkflowRequest"
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

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_DeleteWorkflowRequest, rhs: Google_Cloud_Workflows_V1beta_DeleteWorkflowRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_V1beta_UpdateWorkflowRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateWorkflowRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "workflow"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._workflow) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._workflow {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_UpdateWorkflowRequest, rhs: Google_Cloud_Workflows_V1beta_UpdateWorkflowRequest) -> Bool {
    if lhs._workflow != rhs._workflow {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_V1beta_OperationMetadata: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".OperationMetadata"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "create_time"),
    2: .standard(proto: "end_time"),
    3: .same(proto: "target"),
    4: .same(proto: "verb"),
    5: .standard(proto: "api_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.target) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.verb) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.apiVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 3)
    }
    if !self.verb.isEmpty {
      try visitor.visitSingularStringField(value: self.verb, fieldNumber: 4)
    }
    if !self.apiVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.apiVersion, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_V1beta_OperationMetadata, rhs: Google_Cloud_Workflows_V1beta_OperationMetadata) -> Bool {
    if lhs._createTime != rhs._createTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.target != rhs.target {return false}
    if lhs.verb != rhs.verb {return false}
    if lhs.apiVersion != rhs.apiVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
