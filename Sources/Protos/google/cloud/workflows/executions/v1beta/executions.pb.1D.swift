// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/workflows/executions/v1beta/executions.proto
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

/// Defines possible views for execution resource.
public enum Google_Cloud_Workflows_Executions_V1beta_ExecutionView: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The default / unset value.
  case unspecified // = 0

  /// Includes only basic metadata about the execution.
  /// Following fields are returned: name, start_time, end_time, state
  /// and workflow_revision_id.
  case basic // = 1

  /// Includes all data.
  case full // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .basic
    case 2: self = .full
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .basic: return 1
    case .full: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Workflows_Executions_V1beta_ExecutionView: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Workflows_Executions_V1beta_ExecutionView] = [
    .unspecified,
    .basic,
    .full,
  ]
}

#endif  // swift(>=4.2)

/// A running instance of a [Workflow][google.cloud.workflows.v1beta.Workflow].
public struct Google_Cloud_Workflows_Executions_V1beta_Execution {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The resource name of the execution.
  /// Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  public var name: String = String()

  /// Output only. Marks the beginning of execution.
  public var startTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _startTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_startTime = newValue}
  }
  /// Returns true if `startTime` has been explicitly set.
  public var hasStartTime: Bool {return self._startTime != nil}
  /// Clears the value of `startTime`. Subsequent reads from it will return its default value.
  public mutating func clearStartTime() {self._startTime = nil}

  /// Output only. Marks the end of execution, successful or not.
  public var endTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _endTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_endTime = newValue}
  }
  /// Returns true if `endTime` has been explicitly set.
  public var hasEndTime: Bool {return self._endTime != nil}
  /// Clears the value of `endTime`. Subsequent reads from it will return its default value.
  public mutating func clearEndTime() {self._endTime = nil}

  /// Output only. Current state of the execution.
  public var state: Google_Cloud_Workflows_Executions_V1beta_Execution.State = .unspecified

  /// Input parameters of the execution represented as a JSON string.
  /// The size limit is 32KB.
  public var argument: String = String()

  /// Output only. Output of the execution represented as a JSON string. The
  /// value can only be present if the execution's state is `SUCCEEDED`.
  public var result: String = String()

  /// Output only. The error which caused the execution to finish prematurely.
  /// The value is only present if the execution's state is `FAILED`
  /// or `CANCELLED`.
  public var error: Google_Cloud_Workflows_Executions_V1beta_Execution.Error {
    get {return _error ?? Google_Cloud_Workflows_Executions_V1beta_Execution.Error()}
    set {_error = newValue}
  }
  /// Returns true if `error` has been explicitly set.
  public var hasError: Bool {return self._error != nil}
  /// Clears the value of `error`. Subsequent reads from it will return its default value.
  public mutating func clearError() {self._error = nil}

  /// Output only. Revision of the workflow this execution is using.
  public var workflowRevisionID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Describes the current state of the execution. More states may be added
  /// in the future.
  public enum State: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Invalid state.
    case unspecified // = 0

    /// The execution is in progress.
    case active // = 1

    /// The execution finished successfully.
    case succeeded // = 2

    /// The execution failed with an error.
    case failed // = 3

    /// The execution was stopped intentionally.
    case cancelled // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .active
      case 2: self = .succeeded
      case 3: self = .failed
      case 4: self = .cancelled
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .active: return 1
      case .succeeded: return 2
      case .failed: return 3
      case .cancelled: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Error describes why the execution was abnormally terminated.
  public struct Error {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Error payload returned by the execution, represented as a JSON string.
    public var payload: String = String()

    /// Human readable error context, helpful for debugging purposes.
    public var context: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _startTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _endTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _error: Google_Cloud_Workflows_Executions_V1beta_Execution.Error? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Workflows_Executions_V1beta_Execution.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Workflows_Executions_V1beta_Execution.State] = [
    .unspecified,
    .active,
    .succeeded,
    .failed,
    .cancelled,
  ]
}

#endif  // swift(>=4.2)

/// Request for the
/// [ListExecutions][google.cloud.workflows.executions.v1beta.Executions.ListExecutions]
/// method.
public struct Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Name of the workflow for which the executions should be listed.
  /// Format: projects/{project}/locations/{location}/workflows/{workflow}
  public var parent: String = String()

  /// Maximum number of executions to return per call.
  /// Max supported value depends on the selected Execution view: it's 10000 for
  /// BASIC and 100 for FULL. The default value used if the field is not
  /// specified is 100, regardless of the selected view. Values greater than
  /// the max value will be coerced down to it.
  public var pageSize: Int32 = 0

  /// A page token, received from a previous `ListExecutions` call.
  /// Provide this to retrieve the subsequent page.
  ///
  /// When paginating, all other parameters provided to `ListExecutions` must
  /// match the call that provided the page token.
  public var pageToken: String = String()

  /// Optional. A view defining which fields should be filled in the returned executions.
  /// The API will default to the BASIC view.
  public var view: Google_Cloud_Workflows_Executions_V1beta_ExecutionView = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Response for the
/// [ListExecutions][google.cloud.workflows.executions.v1beta.Executions.ListExecutions]
/// method.
public struct Google_Cloud_Workflows_Executions_V1beta_ListExecutionsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The executions which match the request.
  public var executions: [Google_Cloud_Workflows_Executions_V1beta_Execution] = []

  /// A token, which can be sent as `page_token` to retrieve the next page.
  /// If this field is omitted, there are no subsequent pages.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for the
/// [CreateExecution][google.cloud.workflows.executions.v1beta.Executions.CreateExecution]
/// method.
public struct Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Name of the workflow for which an execution should be created.
  /// Format: projects/{project}/locations/{location}/workflows/{workflow}
  /// The latest revision of the workflow will be used.
  public var parent: String = String()

  /// Required. Execution to be created.
  public var execution: Google_Cloud_Workflows_Executions_V1beta_Execution {
    get {return _execution ?? Google_Cloud_Workflows_Executions_V1beta_Execution()}
    set {_execution = newValue}
  }
  /// Returns true if `execution` has been explicitly set.
  public var hasExecution: Bool {return self._execution != nil}
  /// Clears the value of `execution`. Subsequent reads from it will return its default value.
  public mutating func clearExecution() {self._execution = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _execution: Google_Cloud_Workflows_Executions_V1beta_Execution? = nil
}

/// Request for the
/// [GetExecution][google.cloud.workflows.executions.v1beta.Executions.GetExecution]
/// method.
public struct Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Name of the execution to be retrieved.
  /// Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  public var name: String = String()

  /// Optional. A view defining which fields should be filled in the returned execution.
  /// The API will default to the FULL view.
  public var view: Google_Cloud_Workflows_Executions_V1beta_ExecutionView = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Request for the
/// [CancelExecution][google.cloud.workflows.executions.v1beta.Executions.CancelExecution]
/// method.
public struct Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Name of the execution to be cancelled.
  /// Format:
  /// projects/{project}/locations/{location}/workflows/{workflow}/executions/{execution}
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.workflows.executions.v1beta"

extension Google_Cloud_Workflows_Executions_V1beta_ExecutionView: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "EXECUTION_VIEW_UNSPECIFIED"),
    1: .same(proto: "BASIC"),
    2: .same(proto: "FULL"),
  ]
}

extension Google_Cloud_Workflows_Executions_V1beta_Execution: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Execution"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "start_time"),
    3: .standard(proto: "end_time"),
    4: .same(proto: "state"),
    5: .same(proto: "argument"),
    6: .same(proto: "result"),
    7: .same(proto: "error"),
    8: .standard(proto: "workflow_revision_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._startTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._endTime) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.argument) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.result) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._error) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.workflowRevisionID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._startTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._endTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 4)
    }
    if !self.argument.isEmpty {
      try visitor.visitSingularStringField(value: self.argument, fieldNumber: 5)
    }
    if !self.result.isEmpty {
      try visitor.visitSingularStringField(value: self.result, fieldNumber: 6)
    }
    if let v = self._error {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if !self.workflowRevisionID.isEmpty {
      try visitor.visitSingularStringField(value: self.workflowRevisionID, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_Executions_V1beta_Execution, rhs: Google_Cloud_Workflows_Executions_V1beta_Execution) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._startTime != rhs._startTime {return false}
    if lhs._endTime != rhs._endTime {return false}
    if lhs.state != rhs.state {return false}
    if lhs.argument != rhs.argument {return false}
    if lhs.result != rhs.result {return false}
    if lhs._error != rhs._error {return false}
    if lhs.workflowRevisionID != rhs.workflowRevisionID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_Executions_V1beta_Execution.State: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATE_UNSPECIFIED"),
    1: .same(proto: "ACTIVE"),
    2: .same(proto: "SUCCEEDED"),
    3: .same(proto: "FAILED"),
    4: .same(proto: "CANCELLED"),
  ]
}

extension Google_Cloud_Workflows_Executions_V1beta_Execution.Error: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Workflows_Executions_V1beta_Execution.protoMessageName + ".Error"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "payload"),
    2: .same(proto: "context"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.payload) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.context) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.payload.isEmpty {
      try visitor.visitSingularStringField(value: self.payload, fieldNumber: 1)
    }
    if !self.context.isEmpty {
      try visitor.visitSingularStringField(value: self.context, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_Executions_V1beta_Execution.Error, rhs: Google_Cloud_Workflows_Executions_V1beta_Execution.Error) -> Bool {
    if lhs.payload != rhs.payload {return false}
    if lhs.context != rhs.context {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListExecutionsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "page_size"),
    3: .standard(proto: "page_token"),
    4: .same(proto: "view"),
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
      case 4: try { try decoder.decodeSingularEnumField(value: &self.view) }()
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
    if self.view != .unspecified {
      try visitor.visitSingularEnumField(value: self.view, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest, rhs: Google_Cloud_Workflows_Executions_V1beta_ListExecutionsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.view != rhs.view {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_Executions_V1beta_ListExecutionsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListExecutionsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "executions"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.executions) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.executions.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.executions, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_Executions_V1beta_ListExecutionsResponse, rhs: Google_Cloud_Workflows_Executions_V1beta_ListExecutionsResponse) -> Bool {
    if lhs.executions != rhs.executions {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateExecutionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "execution"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._execution) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._execution {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest, rhs: Google_Cloud_Workflows_Executions_V1beta_CreateExecutionRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._execution != rhs._execution {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetExecutionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "view"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.view) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.view != .unspecified {
      try visitor.visitSingularEnumField(value: self.view, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest, rhs: Google_Cloud_Workflows_Executions_V1beta_GetExecutionRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.view != rhs.view {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CancelExecutionRequest"
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

  public static func ==(lhs: Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest, rhs: Google_Cloud_Workflows_Executions_V1beta_CancelExecutionRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}