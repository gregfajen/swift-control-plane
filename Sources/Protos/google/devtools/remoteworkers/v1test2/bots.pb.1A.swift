// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/remoteworkers/v1test2/bots.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 Google LLC.
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

/// A coarse description of the status of the bot that the server uses to
/// determine whether to assign the bot new leases.
public enum Google_Devtools_Remoteworkers_V1test2_BotStatus: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Default value; do not use.
  case unspecified // = 0

  /// The bot is healthy, and will accept leases as normal.
  case ok // = 1

  /// The bot is unhealthy and will not accept new leases. For example, the bot
  /// may have detected that available disk space is too low. This situation may
  /// resolve itself, but will typically require human intervention.
  case unhealthy // = 2

  /// The bot has been asked to reboot the host. The bot will not accept new
  /// leases; once all leases are complete, this session will no longer be
  /// updated but the bot will be expected to establish a new session after the
  /// reboot completes.
  case hostRebooting // = 3

  /// The bot has been asked to shut down. As with HOST_REBOOTING, once all
  /// leases are completed, the session will no longer be updated and the bot
  /// will not be expected to establish a new session.
  ///
  /// Bots are typically only asked to shut down if its host computer will be
  /// modified in some way, such as deleting a VM.
  case botTerminating // = 4

  /// The bot is initializing and is not ready to accept leases.
  case initializing // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .ok
    case 2: self = .unhealthy
    case 3: self = .hostRebooting
    case 4: self = .botTerminating
    case 5: self = .initializing
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .ok: return 1
    case .unhealthy: return 2
    case .hostRebooting: return 3
    case .botTerminating: return 4
    case .initializing: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Devtools_Remoteworkers_V1test2_BotStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Remoteworkers_V1test2_BotStatus] = [
    .unspecified,
    .ok,
    .unhealthy,
    .hostRebooting,
    .botTerminating,
    .initializing,
  ]
}

#endif  // swift(>=4.2)

/// The state of the lease. All leases start in the PENDING state. A bot can
/// change PENDING to ACTIVE or (in the case of an error) COMPLETED, or from
/// ACTIVE to COMPLETED. The server can change PENDING or ACTIVE to CANCELLED if
/// it wants the bot to release its resources - for example, if the bot needs to
/// be quarantined (it's producing bad output) or a cell needs to be drained.
public enum Google_Devtools_Remoteworkers_V1test2_LeaseState: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Default value; do not use.
  case unspecified // = 0

  /// Pending: the server expects the bot to accept this lease. This may only be
  /// set by the server.
  case pending // = 1

  /// Active: the bot has accepted this lease. This may only be set by the bot.
  case active // = 2

  /// Completed: the bot is no longer leased. This may only be set by the bot,
  /// and the status field must be populated iff the state is COMPLETED.
  case completed // = 4

  /// Cancelled: The bot should immediately release all resources associated with
  /// the lease. This may only be set by the server.
  case cancelled // = 5
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .pending
    case 2: self = .active
    case 4: self = .completed
    case 5: self = .cancelled
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .pending: return 1
    case .active: return 2
    case .completed: return 4
    case .cancelled: return 5
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Devtools_Remoteworkers_V1test2_LeaseState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Remoteworkers_V1test2_LeaseState] = [
    .unspecified,
    .pending,
    .active,
    .completed,
    .cancelled,
  ]
}

#endif  // swift(>=4.2)

/// A bot session represents the state of a bot while in continuous contact with
/// the server for a period of time. The session includes information about the
/// worker - that is, the *worker* (the physical or virtual hardware) is
/// considered to be a property of the bot (the software agent running on that
/// hardware), which is the reverse of real life, but more natural from the point
/// of the view of this API, which communicates solely with the bot and not
/// directly with the underlying worker.
public struct Google_Devtools_Remoteworkers_V1test2_BotSession {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The bot session name, as selected by the server. Output only during a call
  /// to CreateBotSession.
  public var name: String = String()

  /// A unique bot ID within the farm used to persistently identify this bot over
  /// time (i.e., over multiple sessions). This ID must be unique within a
  /// farm. Typically, the bot ID will be the same as the name of the primary
  /// device in the worker (e.g., what you'd get from typing `uname -n` on *nix),
  /// but this is not required since a single device may allow multiple bots to
  /// run on it, each with access to different resources. What is important is
  /// that this ID is meaningful to humans, who might need to hunt a physical
  /// machine down to fix it.
  ///
  /// When CreateBotSession is successfully called with a bot_id, all prior
  /// sessions with the same ID are invalidated. If a bot attempts to update an
  /// invalid session, the server must reject that request, and may also
  /// quarantine the other bot with the same bot IDs (ie, stop sending it new
  /// leases and alert an admin).
  public var botID: String = String()

  /// The status of the bot. This must be populated in every call to
  /// UpdateBotSession.
  public var status: Google_Devtools_Remoteworkers_V1test2_BotStatus = .unspecified

  /// A description of the worker hosting this bot. The Worker message is used
  /// here in the Status context (see Worker for more information).  If multiple
  /// bots are running on the worker, this field should only describe the
  /// resources accessible from this bot.
  ///
  /// During the call to CreateBotSession, the server may make arbitrary changes
  /// to the worker's `server_properties` field (see that field for more
  /// information). Otherwise, this field is input-only.
  public var worker: Google_Devtools_Remoteworkers_V1test2_Worker {
    get {return _worker ?? Google_Devtools_Remoteworkers_V1test2_Worker()}
    set {_worker = newValue}
  }
  /// Returns true if `worker` has been explicitly set.
  public var hasWorker: Bool {return self._worker != nil}
  /// Clears the value of `worker`. Subsequent reads from it will return its default value.
  public mutating func clearWorker() {self._worker = nil}

  /// A list of all leases that are a part of this session. See the Lease message
  /// for details.
  public var leases: [Google_Devtools_Remoteworkers_V1test2_Lease] = []

  /// The time at which this bot session will expire, unless the bot calls
  /// UpdateBotSession again. Output only.
  public var expireTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _expireTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_expireTime = newValue}
  }
  /// Returns true if `expireTime` has been explicitly set.
  public var hasExpireTime: Bool {return self._expireTime != nil}
  /// Clears the value of `expireTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpireTime() {self._expireTime = nil}

  /// The version of the bot code currently running. The server may use this
  /// information to issue an admin action to tell the bot to update itself.
  public var version: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _worker: Google_Devtools_Remoteworkers_V1test2_Worker? = nil
  fileprivate var _expireTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// A Lease is a lease that the scheduler has assigned to this bot. If the bot
/// notices (by UpdateBotSession) that it has any leases in the PENDING state, it
/// should call UpdateBotSession to put the leases into the ACTIVE state and
/// start executing their assignments.
///
/// All fields in this message are output-only, *except* the `state` and `status`
/// fields. Note that repeated fields can only be updated as a unit, so on every
/// update the bot must provide an update for *all* the leases the server expects
/// it to report on.
///
/// The scheduler *should* ensure that all leases scheduled to a bot can actually
/// be accepted, but race conditions may occur. In such cases, the bot should
/// attempt to accept the leases in the order they are listed by the server, to
/// allow the server to control priorities.
///
/// The server will remove COMPLETED leases from time to time, after which the
/// bot shouldn't report on them any more (the server will ignore superfluous
/// COMPLETED records).
public struct Google_Devtools_Remoteworkers_V1test2_Lease {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A short string uniquely identifing the lease within this bot session.
  public var id: String = String()

  /// The actual work to be performed, if any. May be omitted by the server if
  /// the lease is not in the `PENDING` state. The message must be meaningful to
  /// the bot. Output only (must only be set by the server).
  public var payload: SwiftProtobuf.Google_Protobuf_Any {
    get {return _payload ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_payload = newValue}
  }
  /// Returns true if `payload` has been explicitly set.
  public var hasPayload: Bool {return self._payload != nil}
  /// Clears the value of `payload`. Subsequent reads from it will return its default value.
  public mutating func clearPayload() {self._payload = nil}

  /// Any result the bot wishes to provide about the lease. Must not be changed
  /// after the first call with the lease in the `COMPLETED` or `CANCELLED`
  /// state. Input only (must only be set by the bot, will not be echoed by the
  /// server).
  public var result: SwiftProtobuf.Google_Protobuf_Any {
    get {return _result ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_result = newValue}
  }
  /// Returns true if `result` has been explicitly set.
  public var hasResult: Bool {return self._result != nil}
  /// Clears the value of `result`. Subsequent reads from it will return its default value.
  public mutating func clearResult() {self._result = nil}

  /// The state of the lease. See LeaseState for more information.
  public var state: Google_Devtools_Remoteworkers_V1test2_LeaseState = .unspecified

  /// The final status of the lease (should be populated by the bot if the state
  /// is completed). This is the status of the lease, not of any task represented
  /// by the lease. For example, if the bot could not accept the lease because it
  /// asked for some resource the bot didn't have, this status will be
  /// FAILED_PRECONDITION. But if the assignment in the lease didn't execute
  /// correctly, this field will be `OK` while the failure of the assignment must
  /// communicated via the `result` field.
  public var status: Google_Rpc_Status {
    get {return _status ?? Google_Rpc_Status()}
    set {_status = newValue}
  }
  /// Returns true if `status` has been explicitly set.
  public var hasStatus: Bool {return self._status != nil}
  /// Clears the value of `status`. Subsequent reads from it will return its default value.
  public mutating func clearStatus() {self._status = nil}

  /// The requirements that are being claimed by this lease. This field may be
  /// omitted by the server if the lease is not pending.
  public var requirements: Google_Devtools_Remoteworkers_V1test2_Worker {
    get {return _requirements ?? Google_Devtools_Remoteworkers_V1test2_Worker()}
    set {_requirements = newValue}
  }
  /// Returns true if `requirements` has been explicitly set.
  public var hasRequirements: Bool {return self._requirements != nil}
  /// Clears the value of `requirements`. Subsequent reads from it will return its default value.
  public mutating func clearRequirements() {self._requirements = nil}

  /// The time at which this lease expires. The server *may* extend this over
  /// time, but due to race conditions, the bot is not *required* to respect any
  /// expiry date except the first one.
  public var expireTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _expireTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_expireTime = newValue}
  }
  /// Returns true if `expireTime` has been explicitly set.
  public var hasExpireTime: Bool {return self._expireTime != nil}
  /// Clears the value of `expireTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpireTime() {self._expireTime = nil}

  /// DEPRECATED. The assignment should be provided to the bot via the `payload`
  /// field. Clients that wish to use a simple name (such as a queue of work
  /// provided elsewhere) should define a custom message type and encode it into
  /// `payload`.
  public var assignment: String = String()

  /// DEPRECATED. Use `payload` instead.
  public var inlineAssignment: SwiftProtobuf.Google_Protobuf_Any {
    get {return _inlineAssignment ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_inlineAssignment = newValue}
  }
  /// Returns true if `inlineAssignment` has been explicitly set.
  public var hasInlineAssignment: Bool {return self._inlineAssignment != nil}
  /// Clears the value of `inlineAssignment`. Subsequent reads from it will return its default value.
  public mutating func clearInlineAssignment() {self._inlineAssignment = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _payload: SwiftProtobuf.Google_Protobuf_Any? = nil
  fileprivate var _result: SwiftProtobuf.Google_Protobuf_Any? = nil
  fileprivate var _status: Google_Rpc_Status? = nil
  fileprivate var _requirements: Google_Devtools_Remoteworkers_V1test2_Worker? = nil
  fileprivate var _expireTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _inlineAssignment: SwiftProtobuf.Google_Protobuf_Any? = nil
}

/// AdminTemp is a prelimiary set of administration tasks. It's called "Temp"
/// because we do not yet know the best way to represent admin tasks; it's
/// possible that this will be entirely replaced in later versions of this API.
/// If this message proves to be sufficient, it will be renamed in the alpha or
/// beta release of this API.
///
/// This message (suitably marshalled into a protobuf.Any) can be used as the
/// inline_assignment field in a lease; the lease assignment field should simply
/// be `"admin"` in these cases.
///
/// This message is heavily based on Swarming administration tasks from the LUCI
/// project (http://github.com/luci/luci-py/appengine/swarming).
public struct Google_Devtools_Remoteworkers_V1test2_AdminTemp {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The admin action; see `Command` for legal values.
  public var command: Google_Devtools_Remoteworkers_V1test2_AdminTemp.Command = .unspecified

  /// The argument to the admin action; see `Command` for semantics.
  public var arg: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Possible administration actions.
  public enum Command: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Illegal value.
    case unspecified // = 0

    /// Download and run a new version of the bot. `arg` will be a resource
    /// accessible via `ByteStream.Read` to obtain the new bot code.
    case botUpdate // = 1

    /// Restart the bot without downloading a new version. `arg` will be a
    /// message to log.
    case botRestart // = 2

    /// Shut down the bot. `arg` will be a task resource name (similar to those
    /// in tasks.proto) that the bot can use to tell the server that it is
    /// terminating.
    case botTerminate // = 3

    /// Restart the host computer. `arg` will be a message to log.
    case hostRestart // = 4
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .botUpdate
      case 2: self = .botRestart
      case 3: self = .botTerminate
      case 4: self = .hostRestart
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .botUpdate: return 1
      case .botRestart: return 2
      case .botTerminate: return 3
      case .hostRestart: return 4
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Devtools_Remoteworkers_V1test2_AdminTemp.Command: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Remoteworkers_V1test2_AdminTemp.Command] = [
    .unspecified,
    .botUpdate,
    .botRestart,
    .botTerminate,
    .hostRestart,
  ]
}

#endif  // swift(>=4.2)

/// Request message for CreateBotSession.
public struct Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The farm resource.
  public var parent: String = String()

  /// Required. The bot session to create. Server-assigned fields like name must be unset.
  public var botSession: Google_Devtools_Remoteworkers_V1test2_BotSession {
    get {return _botSession ?? Google_Devtools_Remoteworkers_V1test2_BotSession()}
    set {_botSession = newValue}
  }
  /// Returns true if `botSession` has been explicitly set.
  public var hasBotSession: Bool {return self._botSession != nil}
  /// Clears the value of `botSession`. Subsequent reads from it will return its default value.
  public mutating func clearBotSession() {self._botSession = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _botSession: Google_Devtools_Remoteworkers_V1test2_BotSession? = nil
}

/// Request message for UpdateBotSession.
public struct Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The bot session name. Must match bot_session.name.
  public var name: String = String()

  /// Required. The bot session resource to update.
  public var botSession: Google_Devtools_Remoteworkers_V1test2_BotSession {
    get {return _botSession ?? Google_Devtools_Remoteworkers_V1test2_BotSession()}
    set {_botSession = newValue}
  }
  /// Returns true if `botSession` has been explicitly set.
  public var hasBotSession: Bool {return self._botSession != nil}
  /// Clears the value of `botSession`. Subsequent reads from it will return its default value.
  public mutating func clearBotSession() {self._botSession = nil}

  /// Required. The fields on the bot that should be updated. See the BotSession resource
  /// for which fields are updatable by which caller.
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

  fileprivate var _botSession: Google_Devtools_Remoteworkers_V1test2_BotSession? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.remoteworkers.v1test2"

extension Google_Devtools_Remoteworkers_V1test2_BotStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BOT_STATUS_UNSPECIFIED"),
    1: .same(proto: "OK"),
    2: .same(proto: "UNHEALTHY"),
    3: .same(proto: "HOST_REBOOTING"),
    4: .same(proto: "BOT_TERMINATING"),
    5: .same(proto: "INITIALIZING"),
  ]
}

extension Google_Devtools_Remoteworkers_V1test2_LeaseState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "LEASE_STATE_UNSPECIFIED"),
    1: .same(proto: "PENDING"),
    2: .same(proto: "ACTIVE"),
    4: .same(proto: "COMPLETED"),
    5: .same(proto: "CANCELLED"),
  ]
}

extension Google_Devtools_Remoteworkers_V1test2_BotSession: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BotSession"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "bot_id"),
    3: .same(proto: "status"),
    4: .same(proto: "worker"),
    5: .same(proto: "leases"),
    6: .standard(proto: "expire_time"),
    7: .same(proto: "version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.botID) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.status) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._worker) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.leases) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._expireTime) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.version) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.botID.isEmpty {
      try visitor.visitSingularStringField(value: self.botID, fieldNumber: 2)
    }
    if self.status != .unspecified {
      try visitor.visitSingularEnumField(value: self.status, fieldNumber: 3)
    }
    if let v = self._worker {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if !self.leases.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.leases, fieldNumber: 5)
    }
    if let v = self._expireTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.version.isEmpty {
      try visitor.visitSingularStringField(value: self.version, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Remoteworkers_V1test2_BotSession, rhs: Google_Devtools_Remoteworkers_V1test2_BotSession) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.botID != rhs.botID {return false}
    if lhs.status != rhs.status {return false}
    if lhs._worker != rhs._worker {return false}
    if lhs.leases != rhs.leases {return false}
    if lhs._expireTime != rhs._expireTime {return false}
    if lhs.version != rhs.version {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Remoteworkers_V1test2_Lease: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Lease"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    7: .same(proto: "id"),
    8: .same(proto: "payload"),
    9: .same(proto: "result"),
    2: .same(proto: "state"),
    3: .same(proto: "status"),
    4: .same(proto: "requirements"),
    5: .standard(proto: "expire_time"),
    1: .same(proto: "assignment"),
    6: .standard(proto: "inline_assignment"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.assignment) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._status) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._requirements) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._expireTime) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._inlineAssignment) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._payload) }()
      case 9: try { try decoder.decodeSingularMessageField(value: &self._result) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.assignment.isEmpty {
      try visitor.visitSingularStringField(value: self.assignment, fieldNumber: 1)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 2)
    }
    if let v = self._status {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._requirements {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._expireTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._inlineAssignment {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 7)
    }
    if let v = self._payload {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if let v = self._result {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Remoteworkers_V1test2_Lease, rhs: Google_Devtools_Remoteworkers_V1test2_Lease) -> Bool {
    if lhs.id != rhs.id {return false}
    if lhs._payload != rhs._payload {return false}
    if lhs._result != rhs._result {return false}
    if lhs.state != rhs.state {return false}
    if lhs._status != rhs._status {return false}
    if lhs._requirements != rhs._requirements {return false}
    if lhs._expireTime != rhs._expireTime {return false}
    if lhs.assignment != rhs.assignment {return false}
    if lhs._inlineAssignment != rhs._inlineAssignment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Remoteworkers_V1test2_AdminTemp: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AdminTemp"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "command"),
    2: .same(proto: "arg"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.command) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.arg) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.command != .unspecified {
      try visitor.visitSingularEnumField(value: self.command, fieldNumber: 1)
    }
    if !self.arg.isEmpty {
      try visitor.visitSingularStringField(value: self.arg, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Remoteworkers_V1test2_AdminTemp, rhs: Google_Devtools_Remoteworkers_V1test2_AdminTemp) -> Bool {
    if lhs.command != rhs.command {return false}
    if lhs.arg != rhs.arg {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Remoteworkers_V1test2_AdminTemp.Command: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNSPECIFIED"),
    1: .same(proto: "BOT_UPDATE"),
    2: .same(proto: "BOT_RESTART"),
    3: .same(proto: "BOT_TERMINATE"),
    4: .same(proto: "HOST_RESTART"),
  ]
}

extension Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateBotSessionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "bot_session"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._botSession) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._botSession {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest, rhs: Google_Devtools_Remoteworkers_V1test2_CreateBotSessionRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._botSession != rhs._botSession {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateBotSessionRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "bot_session"),
    3: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._botSession) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._botSession {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest, rhs: Google_Devtools_Remoteworkers_V1test2_UpdateBotSessionRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._botSession != rhs._botSession {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
