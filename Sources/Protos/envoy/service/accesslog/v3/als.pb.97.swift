// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/service/accesslog/v3/als.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

/// Empty response for the StreamAccessLogs API. Will never be sent. See below.
public struct Envoy_Service_Accesslog_V3_StreamAccessLogsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Stream message for the StreamAccessLogs API. Envoy will open a stream to the server and stream
/// access logs without ever expecting a response.
public struct Envoy_Service_Accesslog_V3_StreamAccessLogsMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Identifier data that will only be sent in the first message on the stream. This is effectively
  /// structured metadata and is a performance optimization.
  public var identifier: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.Identifier {
    get {return _identifier ?? Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.Identifier()}
    set {_identifier = newValue}
  }
  /// Returns true if `identifier` has been explicitly set.
  public var hasIdentifier: Bool {return self._identifier != nil}
  /// Clears the value of `identifier`. Subsequent reads from it will return its default value.
  public mutating func clearIdentifier() {self._identifier = nil}

  /// Batches of log entries of a single type. Generally speaking, a given stream should only
  /// ever include one type of log entry.
  public var logEntries: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.OneOf_LogEntries? = nil

  public var httpLogs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.HTTPAccessLogEntries {
    get {
      if case .httpLogs(let v)? = logEntries {return v}
      return Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.HTTPAccessLogEntries()
    }
    set {logEntries = .httpLogs(newValue)}
  }

  public var tcpLogs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.TCPAccessLogEntries {
    get {
      if case .tcpLogs(let v)? = logEntries {return v}
      return Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.TCPAccessLogEntries()
    }
    set {logEntries = .tcpLogs(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Batches of log entries of a single type. Generally speaking, a given stream should only
  /// ever include one type of log entry.
  public enum OneOf_LogEntries: Equatable {
    case httpLogs(Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.HTTPAccessLogEntries)
    case tcpLogs(Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.TCPAccessLogEntries)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.OneOf_LogEntries, rhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.OneOf_LogEntries) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.httpLogs, .httpLogs): return {
        guard case .httpLogs(let l) = lhs, case .httpLogs(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.tcpLogs, .tcpLogs): return {
        guard case .tcpLogs(let l) = lhs, case .tcpLogs(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public struct Identifier {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The node sending the access log messages over the stream.
    public var node: Envoy_Config_Core_V3_Node {
      get {return _node ?? Envoy_Config_Core_V3_Node()}
      set {_node = newValue}
    }
    /// Returns true if `node` has been explicitly set.
    public var hasNode: Bool {return self._node != nil}
    /// Clears the value of `node`. Subsequent reads from it will return its default value.
    public mutating func clearNode() {self._node = nil}

    /// The friendly name of the log configured in :ref:`CommonGrpcAccessLogConfig
    /// <envoy_api_msg_extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfig>`.
    public var logName: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _node: Envoy_Config_Core_V3_Node? = nil
  }

  /// Wrapper for batches of HTTP access log entries.
  public struct HTTPAccessLogEntries {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var logEntry: [Envoy_Data_Accesslog_V3_HTTPAccessLogEntry] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Wrapper for batches of TCP access log entries.
  public struct TCPAccessLogEntries {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var logEntry: [Envoy_Data_Accesslog_V3_TCPAccessLogEntry] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _identifier: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.Identifier? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.service.accesslog.v3"

extension Envoy_Service_Accesslog_V3_StreamAccessLogsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamAccessLogsResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Accesslog_V3_StreamAccessLogsResponse, rhs: Envoy_Service_Accesslog_V3_StreamAccessLogsResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Accesslog_V3_StreamAccessLogsMessage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamAccessLogsMessage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "identifier"),
    2: .standard(proto: "http_logs"),
    3: .standard(proto: "tcp_logs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._identifier) }()
      case 2: try {
        var v: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.HTTPAccessLogEntries?
        if let current = self.logEntries {
          try decoder.handleConflictingOneOf()
          if case .httpLogs(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.logEntries = .httpLogs(v)}
      }()
      case 3: try {
        var v: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.TCPAccessLogEntries?
        if let current = self.logEntries {
          try decoder.handleConflictingOneOf()
          if case .tcpLogs(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.logEntries = .tcpLogs(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._identifier {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.logEntries {
    case .httpLogs?: try {
      guard case .httpLogs(let v)? = self.logEntries else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .tcpLogs?: try {
      guard case .tcpLogs(let v)? = self.logEntries else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage, rhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage) -> Bool {
    if lhs._identifier != rhs._identifier {return false}
    if lhs.logEntries != rhs.logEntries {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.Identifier: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.protoMessageName + ".Identifier"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "node"),
    2: .standard(proto: "log_name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._node) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.logName) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._node {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.logName.isEmpty {
      try visitor.visitSingularStringField(value: self.logName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.Identifier, rhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.Identifier) -> Bool {
    if lhs._node != rhs._node {return false}
    if lhs.logName != rhs.logName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.HTTPAccessLogEntries: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.protoMessageName + ".HTTPAccessLogEntries"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "log_entry"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.logEntry) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.logEntry.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.logEntry, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.HTTPAccessLogEntries, rhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.HTTPAccessLogEntries) -> Bool {
    if lhs.logEntry != rhs.logEntry {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.TCPAccessLogEntries: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.protoMessageName + ".TCPAccessLogEntries"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "log_entry"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.logEntry) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.logEntry.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.logEntry, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.TCPAccessLogEntries, rhs: Envoy_Service_Accesslog_V3_StreamAccessLogsMessage.TCPAccessLogEntries) -> Bool {
    if lhs.logEntry != rhs.logEntry {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}