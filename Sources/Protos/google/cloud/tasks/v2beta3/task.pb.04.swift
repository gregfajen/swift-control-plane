// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/tasks/v2beta3/task.proto
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

/// A unit of scheduled work.
public struct Google_Cloud_Tasks_V2beta3_Task {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optionally caller-specified in [CreateTask][google.cloud.tasks.v2beta3.CloudTasks.CreateTask].
  ///
  /// The task name.
  ///
  /// The task name must have the following format:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/queues/QUEUE_ID/tasks/TASK_ID`
  ///
  /// * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]),
  ///    hyphens (-), colons (:), or periods (.).
  ///    For more information, see
  ///    [Identifying
  ///    projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the task's location.
  ///    The list of available locations can be obtained by calling
  ///    [ListLocations][google.cloud.location.Locations.ListLocations].
  ///    For more information, see https://cloud.google.com/about/locations/.
  /// * `QUEUE_ID` can contain letters ([A-Za-z]), numbers ([0-9]), or
  ///   hyphens (-). The maximum length is 100 characters.
  /// * `TASK_ID` can contain only letters ([A-Za-z]), numbers ([0-9]),
  ///   hyphens (-), or underscores (_). The maximum length is 500 characters.
  public var name: String {
    get {return _storage._name}
    set {_uniqueStorage()._name = newValue}
  }

  /// Required. The message to send to the worker.
  public var payloadType: OneOf_PayloadType? {
    get {return _storage._payloadType}
    set {_uniqueStorage()._payloadType = newValue}
  }

  /// HTTP request that is sent to the App Engine app handler.
  ///
  /// An App Engine task is a task that has [AppEngineHttpRequest][google.cloud.tasks.v2beta3.AppEngineHttpRequest] set.
  public var appEngineHTTPRequest: Google_Cloud_Tasks_V2beta3_AppEngineHttpRequest {
    get {
      if case .appEngineHTTPRequest(let v)? = _storage._payloadType {return v}
      return Google_Cloud_Tasks_V2beta3_AppEngineHttpRequest()
    }
    set {_uniqueStorage()._payloadType = .appEngineHTTPRequest(newValue)}
  }

  /// HTTP request that is sent to the task's target.
  ///
  /// An HTTP task is a task that has [HttpRequest][google.cloud.tasks.v2beta3.HttpRequest] set.
  public var httpRequest: Google_Cloud_Tasks_V2beta3_HttpRequest {
    get {
      if case .httpRequest(let v)? = _storage._payloadType {return v}
      return Google_Cloud_Tasks_V2beta3_HttpRequest()
    }
    set {_uniqueStorage()._payloadType = .httpRequest(newValue)}
  }

  /// The time when the task is scheduled to be attempted.
  ///
  /// For App Engine queues, this is when the task will be attempted or retried.
  ///
  /// `schedule_time` will be truncated to the nearest microsecond.
  public var scheduleTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._scheduleTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._scheduleTime = newValue}
  }
  /// Returns true if `scheduleTime` has been explicitly set.
  public var hasScheduleTime: Bool {return _storage._scheduleTime != nil}
  /// Clears the value of `scheduleTime`. Subsequent reads from it will return its default value.
  public mutating func clearScheduleTime() {_uniqueStorage()._scheduleTime = nil}

  /// Output only. The time that the task was created.
  ///
  /// `create_time` will be truncated to the nearest second.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _storage._createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uniqueStorage()._createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return _storage._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {_uniqueStorage()._createTime = nil}

  /// The deadline for requests sent to the worker. If the worker does not
  /// respond by this deadline then the request is cancelled and the attempt
  /// is marked as a `DEADLINE_EXCEEDED` failure. Cloud Tasks will retry the
  /// task according to the [RetryConfig][google.cloud.tasks.v2beta3.RetryConfig].
  ///
  /// Note that when the request is cancelled, Cloud Tasks will stop listening
  /// for the response, but whether the worker stops processing depends on the
  /// worker. For example, if the worker is stuck, it may not react to cancelled
  /// requests.
  ///
  /// The default and maximum values depend on the type of request:
  ///
  /// * For [HTTP tasks][google.cloud.tasks.v2beta3.HttpRequest], the default is 10 minutes. The deadline
  ///   must be in the interval [15 seconds, 30 minutes].
  ///
  /// * For [App Engine tasks][google.cloud.tasks.v2beta3.AppEngineHttpRequest], 0 indicates that the
  ///   request has the default deadline. The default deadline depends on the
  ///   [scaling
  ///   type](https://cloud.google.com/appengine/docs/standard/go/how-instances-are-managed#instance_scaling)
  ///   of the service: 10 minutes for standard apps with automatic scaling, 24
  ///   hours for standard apps with manual and basic scaling, and 60 minutes for
  ///   flex apps. If the request deadline is set, it must be in the interval [15
  ///   seconds, 24 hours 15 seconds]. Regardless of the task's
  ///   `dispatch_deadline`, the app handler will not run for longer than than
  ///   the service's timeout. We recommend setting the `dispatch_deadline` to
  ///   at most a few seconds more than the app handler's timeout. For more
  ///   information see
  ///   [Timeouts](https://cloud.google.com/tasks/docs/creating-appengine-handlers#timeouts).
  ///
  /// `dispatch_deadline` will be truncated to the nearest millisecond. The
  /// deadline is an approximate deadline.
  public var dispatchDeadline: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _storage._dispatchDeadline ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_uniqueStorage()._dispatchDeadline = newValue}
  }
  /// Returns true if `dispatchDeadline` has been explicitly set.
  public var hasDispatchDeadline: Bool {return _storage._dispatchDeadline != nil}
  /// Clears the value of `dispatchDeadline`. Subsequent reads from it will return its default value.
  public mutating func clearDispatchDeadline() {_uniqueStorage()._dispatchDeadline = nil}

  /// Output only. The number of attempts dispatched.
  ///
  /// This count includes attempts which have been dispatched but haven't
  /// received a response.
  public var dispatchCount: Int32 {
    get {return _storage._dispatchCount}
    set {_uniqueStorage()._dispatchCount = newValue}
  }

  /// Output only. The number of attempts which have received a response.
  public var responseCount: Int32 {
    get {return _storage._responseCount}
    set {_uniqueStorage()._responseCount = newValue}
  }

  /// Output only. The status of the task's first attempt.
  ///
  /// Only [dispatch_time][google.cloud.tasks.v2beta3.Attempt.dispatch_time] will be set.
  /// The other [Attempt][google.cloud.tasks.v2beta3.Attempt] information is not retained by Cloud Tasks.
  public var firstAttempt: Google_Cloud_Tasks_V2beta3_Attempt {
    get {return _storage._firstAttempt ?? Google_Cloud_Tasks_V2beta3_Attempt()}
    set {_uniqueStorage()._firstAttempt = newValue}
  }
  /// Returns true if `firstAttempt` has been explicitly set.
  public var hasFirstAttempt: Bool {return _storage._firstAttempt != nil}
  /// Clears the value of `firstAttempt`. Subsequent reads from it will return its default value.
  public mutating func clearFirstAttempt() {_uniqueStorage()._firstAttempt = nil}

  /// Output only. The status of the task's last attempt.
  public var lastAttempt: Google_Cloud_Tasks_V2beta3_Attempt {
    get {return _storage._lastAttempt ?? Google_Cloud_Tasks_V2beta3_Attempt()}
    set {_uniqueStorage()._lastAttempt = newValue}
  }
  /// Returns true if `lastAttempt` has been explicitly set.
  public var hasLastAttempt: Bool {return _storage._lastAttempt != nil}
  /// Clears the value of `lastAttempt`. Subsequent reads from it will return its default value.
  public mutating func clearLastAttempt() {_uniqueStorage()._lastAttempt = nil}

  /// Output only. The view specifies which subset of the [Task][google.cloud.tasks.v2beta3.Task] has
  /// been returned.
  public var view: Google_Cloud_Tasks_V2beta3_Task.View {
    get {return _storage._view}
    set {_uniqueStorage()._view = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Required. The message to send to the worker.
  public enum OneOf_PayloadType: Equatable {
    /// HTTP request that is sent to the App Engine app handler.
    ///
    /// An App Engine task is a task that has [AppEngineHttpRequest][google.cloud.tasks.v2beta3.AppEngineHttpRequest] set.
    case appEngineHTTPRequest(Google_Cloud_Tasks_V2beta3_AppEngineHttpRequest)
    /// HTTP request that is sent to the task's target.
    ///
    /// An HTTP task is a task that has [HttpRequest][google.cloud.tasks.v2beta3.HttpRequest] set.
    case httpRequest(Google_Cloud_Tasks_V2beta3_HttpRequest)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Tasks_V2beta3_Task.OneOf_PayloadType, rhs: Google_Cloud_Tasks_V2beta3_Task.OneOf_PayloadType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.appEngineHTTPRequest, .appEngineHTTPRequest): return {
        guard case .appEngineHTTPRequest(let l) = lhs, case .appEngineHTTPRequest(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.httpRequest, .httpRequest): return {
        guard case .httpRequest(let l) = lhs, case .httpRequest(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// The view specifies a subset of [Task][google.cloud.tasks.v2beta3.Task] data.
  ///
  /// When a task is returned in a response, not all
  /// information is retrieved by default because some data, such as
  /// payloads, might be desirable to return only when needed because
  /// of its large size or because of the sensitivity of data that it
  /// contains.
  public enum View: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified. Defaults to BASIC.
    case unspecified // = 0

    /// The basic view omits fields which can be large or can contain
    /// sensitive data.
    ///
    /// This view does not include the
    /// [body in AppEngineHttpRequest][google.cloud.tasks.v2beta3.AppEngineHttpRequest.body].
    /// Bodies are desirable to return only when needed, because they
    /// can be large and because of the sensitivity of the data that you
    /// choose to store in it.
    case basic // = 1

    /// All information is returned.
    ///
    /// Authorization for [FULL][google.cloud.tasks.v2beta3.Task.View.FULL] requires
    /// `cloudtasks.tasks.fullView` [Google IAM](https://cloud.google.com/iam/)
    /// permission on the [Queue][google.cloud.tasks.v2beta3.Queue] resource.
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

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension Google_Cloud_Tasks_V2beta3_Task.View: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Tasks_V2beta3_Task.View] = [
    .unspecified,
    .basic,
    .full,
  ]
}

#endif  // swift(>=4.2)

/// The status of a task attempt.
public struct Google_Cloud_Tasks_V2beta3_Attempt {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The time that this attempt was scheduled.
  ///
  /// `schedule_time` will be truncated to the nearest microsecond.
  public var scheduleTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _scheduleTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_scheduleTime = newValue}
  }
  /// Returns true if `scheduleTime` has been explicitly set.
  public var hasScheduleTime: Bool {return self._scheduleTime != nil}
  /// Clears the value of `scheduleTime`. Subsequent reads from it will return its default value.
  public mutating func clearScheduleTime() {self._scheduleTime = nil}

  /// Output only. The time that this attempt was dispatched.
  ///
  /// `dispatch_time` will be truncated to the nearest microsecond.
  public var dispatchTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _dispatchTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_dispatchTime = newValue}
  }
  /// Returns true if `dispatchTime` has been explicitly set.
  public var hasDispatchTime: Bool {return self._dispatchTime != nil}
  /// Clears the value of `dispatchTime`. Subsequent reads from it will return its default value.
  public mutating func clearDispatchTime() {self._dispatchTime = nil}

  /// Output only. The time that this attempt response was received.
  ///
  /// `response_time` will be truncated to the nearest microsecond.
  public var responseTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _responseTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_responseTime = newValue}
  }
  /// Returns true if `responseTime` has been explicitly set.
  public var hasResponseTime: Bool {return self._responseTime != nil}
  /// Clears the value of `responseTime`. Subsequent reads from it will return its default value.
  public mutating func clearResponseTime() {self._responseTime = nil}

  /// Output only. The response from the worker for this attempt.
  ///
  /// If `response_time` is unset, then the task has not been attempted or is
  /// currently running and the `response_status` field is meaningless.
  public var responseStatus: Google_Rpc_Status {
    get {return _responseStatus ?? Google_Rpc_Status()}
    set {_responseStatus = newValue}
  }
  /// Returns true if `responseStatus` has been explicitly set.
  public var hasResponseStatus: Bool {return self._responseStatus != nil}
  /// Clears the value of `responseStatus`. Subsequent reads from it will return its default value.
  public mutating func clearResponseStatus() {self._responseStatus = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _scheduleTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _dispatchTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _responseTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _responseStatus: Google_Rpc_Status? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.tasks.v2beta3"

extension Google_Cloud_Tasks_V2beta3_Task: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Task"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    3: .standard(proto: "app_engine_http_request"),
    11: .standard(proto: "http_request"),
    4: .standard(proto: "schedule_time"),
    5: .standard(proto: "create_time"),
    12: .standard(proto: "dispatch_deadline"),
    6: .standard(proto: "dispatch_count"),
    7: .standard(proto: "response_count"),
    8: .standard(proto: "first_attempt"),
    9: .standard(proto: "last_attempt"),
    10: .same(proto: "view"),
  ]

  fileprivate class _StorageClass {
    var _name: String = String()
    var _payloadType: Google_Cloud_Tasks_V2beta3_Task.OneOf_PayloadType?
    var _scheduleTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    var _dispatchDeadline: SwiftProtobuf.Google_Protobuf_Duration? = nil
    var _dispatchCount: Int32 = 0
    var _responseCount: Int32 = 0
    var _firstAttempt: Google_Cloud_Tasks_V2beta3_Attempt? = nil
    var _lastAttempt: Google_Cloud_Tasks_V2beta3_Attempt? = nil
    var _view: Google_Cloud_Tasks_V2beta3_Task.View = .unspecified

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _name = source._name
      _payloadType = source._payloadType
      _scheduleTime = source._scheduleTime
      _createTime = source._createTime
      _dispatchDeadline = source._dispatchDeadline
      _dispatchCount = source._dispatchCount
      _responseCount = source._responseCount
      _firstAttempt = source._firstAttempt
      _lastAttempt = source._lastAttempt
      _view = source._view
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._name) }()
        case 3: try {
          var v: Google_Cloud_Tasks_V2beta3_AppEngineHttpRequest?
          if let current = _storage._payloadType {
            try decoder.handleConflictingOneOf()
            if case .appEngineHTTPRequest(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._payloadType = .appEngineHTTPRequest(v)}
        }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._scheduleTime) }()
        case 5: try { try decoder.decodeSingularMessageField(value: &_storage._createTime) }()
        case 6: try { try decoder.decodeSingularInt32Field(value: &_storage._dispatchCount) }()
        case 7: try { try decoder.decodeSingularInt32Field(value: &_storage._responseCount) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._firstAttempt) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._lastAttempt) }()
        case 10: try { try decoder.decodeSingularEnumField(value: &_storage._view) }()
        case 11: try {
          var v: Google_Cloud_Tasks_V2beta3_HttpRequest?
          if let current = _storage._payloadType {
            try decoder.handleConflictingOneOf()
            if case .httpRequest(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._payloadType = .httpRequest(v)}
        }()
        case 12: try { try decoder.decodeSingularMessageField(value: &_storage._dispatchDeadline) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._name.isEmpty {
        try visitor.visitSingularStringField(value: _storage._name, fieldNumber: 1)
      }
      if case .appEngineHTTPRequest(let v)? = _storage._payloadType {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._scheduleTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._createTime {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      if _storage._dispatchCount != 0 {
        try visitor.visitSingularInt32Field(value: _storage._dispatchCount, fieldNumber: 6)
      }
      if _storage._responseCount != 0 {
        try visitor.visitSingularInt32Field(value: _storage._responseCount, fieldNumber: 7)
      }
      if let v = _storage._firstAttempt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if let v = _storage._lastAttempt {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if _storage._view != .unspecified {
        try visitor.visitSingularEnumField(value: _storage._view, fieldNumber: 10)
      }
      if case .httpRequest(let v)? = _storage._payloadType {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
      }
      if let v = _storage._dispatchDeadline {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Tasks_V2beta3_Task, rhs: Google_Cloud_Tasks_V2beta3_Task) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._name != rhs_storage._name {return false}
        if _storage._payloadType != rhs_storage._payloadType {return false}
        if _storage._scheduleTime != rhs_storage._scheduleTime {return false}
        if _storage._createTime != rhs_storage._createTime {return false}
        if _storage._dispatchDeadline != rhs_storage._dispatchDeadline {return false}
        if _storage._dispatchCount != rhs_storage._dispatchCount {return false}
        if _storage._responseCount != rhs_storage._responseCount {return false}
        if _storage._firstAttempt != rhs_storage._firstAttempt {return false}
        if _storage._lastAttempt != rhs_storage._lastAttempt {return false}
        if _storage._view != rhs_storage._view {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Tasks_V2beta3_Task.View: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VIEW_UNSPECIFIED"),
    1: .same(proto: "BASIC"),
    2: .same(proto: "FULL"),
  ]
}

extension Google_Cloud_Tasks_V2beta3_Attempt: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Attempt"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "schedule_time"),
    2: .standard(proto: "dispatch_time"),
    3: .standard(proto: "response_time"),
    4: .standard(proto: "response_status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._scheduleTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._dispatchTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._responseTime) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._responseStatus) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._scheduleTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._dispatchTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._responseTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._responseStatus {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Tasks_V2beta3_Attempt, rhs: Google_Cloud_Tasks_V2beta3_Attempt) -> Bool {
    if lhs._scheduleTime != rhs._scheduleTime {return false}
    if lhs._dispatchTime != rhs._dispatchTime {return false}
    if lhs._responseTime != rhs._responseTime {return false}
    if lhs._responseStatus != rhs._responseStatus {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}