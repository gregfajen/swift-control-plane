// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/data/tap/v2alpha/transport.proto
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

/// Connection properties.
public struct Envoy_Data_Tap_V2alpha_Connection {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Local address.
  public var localAddress: Envoy_Api_V2_Core_Address {
    get {return _localAddress ?? Envoy_Api_V2_Core_Address()}
    set {_localAddress = newValue}
  }
  /// Returns true if `localAddress` has been explicitly set.
  public var hasLocalAddress: Bool {return self._localAddress != nil}
  /// Clears the value of `localAddress`. Subsequent reads from it will return its default value.
  public mutating func clearLocalAddress() {self._localAddress = nil}

  /// Remote address.
  public var remoteAddress: Envoy_Api_V2_Core_Address {
    get {return _remoteAddress ?? Envoy_Api_V2_Core_Address()}
    set {_remoteAddress = newValue}
  }
  /// Returns true if `remoteAddress` has been explicitly set.
  public var hasRemoteAddress: Bool {return self._remoteAddress != nil}
  /// Clears the value of `remoteAddress`. Subsequent reads from it will return its default value.
  public mutating func clearRemoteAddress() {self._remoteAddress = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _localAddress: Envoy_Api_V2_Core_Address? = nil
  fileprivate var _remoteAddress: Envoy_Api_V2_Core_Address? = nil
}

/// Event in a socket trace.
public struct Envoy_Data_Tap_V2alpha_SocketEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Timestamp for event.
  public var timestamp: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _timestamp ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_timestamp = newValue}
  }
  /// Returns true if `timestamp` has been explicitly set.
  public var hasTimestamp: Bool {return self._timestamp != nil}
  /// Clears the value of `timestamp`. Subsequent reads from it will return its default value.
  public mutating func clearTimestamp() {self._timestamp = nil}

  /// Read or write with content as bytes string.
  public var eventSelector: Envoy_Data_Tap_V2alpha_SocketEvent.OneOf_EventSelector? = nil

  public var read: Envoy_Data_Tap_V2alpha_SocketEvent.Read {
    get {
      if case .read(let v)? = eventSelector {return v}
      return Envoy_Data_Tap_V2alpha_SocketEvent.Read()
    }
    set {eventSelector = .read(newValue)}
  }

  public var write: Envoy_Data_Tap_V2alpha_SocketEvent.Write {
    get {
      if case .write(let v)? = eventSelector {return v}
      return Envoy_Data_Tap_V2alpha_SocketEvent.Write()
    }
    set {eventSelector = .write(newValue)}
  }

  public var closed: Envoy_Data_Tap_V2alpha_SocketEvent.Closed {
    get {
      if case .closed(let v)? = eventSelector {return v}
      return Envoy_Data_Tap_V2alpha_SocketEvent.Closed()
    }
    set {eventSelector = .closed(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Read or write with content as bytes string.
  public enum OneOf_EventSelector: Equatable {
    case read(Envoy_Data_Tap_V2alpha_SocketEvent.Read)
    case write(Envoy_Data_Tap_V2alpha_SocketEvent.Write)
    case closed(Envoy_Data_Tap_V2alpha_SocketEvent.Closed)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketEvent.OneOf_EventSelector, rhs: Envoy_Data_Tap_V2alpha_SocketEvent.OneOf_EventSelector) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.read, .read): return {
        guard case .read(let l) = lhs, case .read(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.write, .write): return {
        guard case .write(let l) = lhs, case .write(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.closed, .closed): return {
        guard case .closed(let l) = lhs, case .closed(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// Data read by Envoy from the transport socket.
  public struct Read {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Binary data read.
    public var data: Envoy_Data_Tap_V2alpha_Body {
      get {return _data ?? Envoy_Data_Tap_V2alpha_Body()}
      set {_data = newValue}
    }
    /// Returns true if `data` has been explicitly set.
    public var hasData: Bool {return self._data != nil}
    /// Clears the value of `data`. Subsequent reads from it will return its default value.
    public mutating func clearData() {self._data = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _data: Envoy_Data_Tap_V2alpha_Body? = nil
  }

  /// Data written by Envoy to the transport socket.
  public struct Write {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Binary data written.
    public var data: Envoy_Data_Tap_V2alpha_Body {
      get {return _data ?? Envoy_Data_Tap_V2alpha_Body()}
      set {_data = newValue}
    }
    /// Returns true if `data` has been explicitly set.
    public var hasData: Bool {return self._data != nil}
    /// Clears the value of `data`. Subsequent reads from it will return its default value.
    public mutating func clearData() {self._data = nil}

    /// Stream was half closed after this write.
    public var endStream: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _data: Envoy_Data_Tap_V2alpha_Body? = nil
  }

  /// The connection was closed.
  public struct Closed {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _timestamp: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// Sequence of read/write events that constitute a buffered trace on a socket.
/// [#next-free-field: 6]
public struct Envoy_Data_Tap_V2alpha_SocketBufferedTrace {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Trace ID unique to the originating Envoy only. Trace IDs can repeat and should not be used
  /// for long term stable uniqueness. Matches connection IDs used in Envoy logs.
  public var traceID: UInt64 = 0

  /// Connection properties.
  public var connection: Envoy_Data_Tap_V2alpha_Connection {
    get {return _connection ?? Envoy_Data_Tap_V2alpha_Connection()}
    set {_connection = newValue}
  }
  /// Returns true if `connection` has been explicitly set.
  public var hasConnection: Bool {return self._connection != nil}
  /// Clears the value of `connection`. Subsequent reads from it will return its default value.
  public mutating func clearConnection() {self._connection = nil}

  /// Sequence of observed events.
  public var events: [Envoy_Data_Tap_V2alpha_SocketEvent] = []

  /// Set to true if read events were truncated due to the :ref:`max_buffered_rx_bytes
  /// <envoy_api_field_service.tap.v2alpha.OutputConfig.max_buffered_rx_bytes>` setting.
  public var readTruncated: Bool = false

  /// Set to true if write events were truncated due to the :ref:`max_buffered_tx_bytes
  /// <envoy_api_field_service.tap.v2alpha.OutputConfig.max_buffered_tx_bytes>` setting.
  public var writeTruncated: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _connection: Envoy_Data_Tap_V2alpha_Connection? = nil
}

/// A streamed socket trace segment. Multiple segments make up a full trace.
public struct Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Trace ID unique to the originating Envoy only. Trace IDs can repeat and should not be used
  /// for long term stable uniqueness. Matches connection IDs used in Envoy logs.
  public var traceID: UInt64 = 0

  public var messagePiece: Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment.OneOf_MessagePiece? = nil

  /// Connection properties.
  public var connection: Envoy_Data_Tap_V2alpha_Connection {
    get {
      if case .connection(let v)? = messagePiece {return v}
      return Envoy_Data_Tap_V2alpha_Connection()
    }
    set {messagePiece = .connection(newValue)}
  }

  /// Socket event.
  public var event: Envoy_Data_Tap_V2alpha_SocketEvent {
    get {
      if case .event(let v)? = messagePiece {return v}
      return Envoy_Data_Tap_V2alpha_SocketEvent()
    }
    set {messagePiece = .event(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MessagePiece: Equatable {
    /// Connection properties.
    case connection(Envoy_Data_Tap_V2alpha_Connection)
    /// Socket event.
    case event(Envoy_Data_Tap_V2alpha_SocketEvent)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment.OneOf_MessagePiece, rhs: Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment.OneOf_MessagePiece) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.connection, .connection): return {
        guard case .connection(let l) = lhs, case .connection(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.event, .event): return {
        guard case .event(let l) = lhs, case .event(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.data.tap.v2alpha"

extension Envoy_Data_Tap_V2alpha_Connection: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Connection"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "local_address"),
    3: .standard(proto: "remote_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try { try decoder.decodeSingularMessageField(value: &self._localAddress) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._remoteAddress) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._localAddress {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._remoteAddress {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_Connection, rhs: Envoy_Data_Tap_V2alpha_Connection) -> Bool {
    if lhs._localAddress != rhs._localAddress {return false}
    if lhs._remoteAddress != rhs._remoteAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Tap_V2alpha_SocketEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SocketEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "timestamp"),
    2: .same(proto: "read"),
    3: .same(proto: "write"),
    4: .same(proto: "closed"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._timestamp) }()
      case 2: try {
        var v: Envoy_Data_Tap_V2alpha_SocketEvent.Read?
        if let current = self.eventSelector {
          try decoder.handleConflictingOneOf()
          if case .read(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.eventSelector = .read(v)}
      }()
      case 3: try {
        var v: Envoy_Data_Tap_V2alpha_SocketEvent.Write?
        if let current = self.eventSelector {
          try decoder.handleConflictingOneOf()
          if case .write(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.eventSelector = .write(v)}
      }()
      case 4: try {
        var v: Envoy_Data_Tap_V2alpha_SocketEvent.Closed?
        if let current = self.eventSelector {
          try decoder.handleConflictingOneOf()
          if case .closed(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.eventSelector = .closed(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._timestamp {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.eventSelector {
    case .read?: try {
      guard case .read(let v)? = self.eventSelector else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .write?: try {
      guard case .write(let v)? = self.eventSelector else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .closed?: try {
      guard case .closed(let v)? = self.eventSelector else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketEvent, rhs: Envoy_Data_Tap_V2alpha_SocketEvent) -> Bool {
    if lhs._timestamp != rhs._timestamp {return false}
    if lhs.eventSelector != rhs.eventSelector {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Tap_V2alpha_SocketEvent.Read: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Data_Tap_V2alpha_SocketEvent.protoMessageName + ".Read"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._data {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketEvent.Read, rhs: Envoy_Data_Tap_V2alpha_SocketEvent.Read) -> Bool {
    if lhs._data != rhs._data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Tap_V2alpha_SocketEvent.Write: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Data_Tap_V2alpha_SocketEvent.protoMessageName + ".Write"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
    2: .standard(proto: "end_stream"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._data) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.endStream) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._data {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.endStream != false {
      try visitor.visitSingularBoolField(value: self.endStream, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketEvent.Write, rhs: Envoy_Data_Tap_V2alpha_SocketEvent.Write) -> Bool {
    if lhs._data != rhs._data {return false}
    if lhs.endStream != rhs.endStream {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Tap_V2alpha_SocketEvent.Closed: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Data_Tap_V2alpha_SocketEvent.protoMessageName + ".Closed"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketEvent.Closed, rhs: Envoy_Data_Tap_V2alpha_SocketEvent.Closed) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Tap_V2alpha_SocketBufferedTrace: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SocketBufferedTrace"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trace_id"),
    2: .same(proto: "connection"),
    3: .same(proto: "events"),
    4: .standard(proto: "read_truncated"),
    5: .standard(proto: "write_truncated"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.traceID) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._connection) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.events) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.readTruncated) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.writeTruncated) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.traceID != 0 {
      try visitor.visitSingularUInt64Field(value: self.traceID, fieldNumber: 1)
    }
    if let v = self._connection {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.events.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.events, fieldNumber: 3)
    }
    if self.readTruncated != false {
      try visitor.visitSingularBoolField(value: self.readTruncated, fieldNumber: 4)
    }
    if self.writeTruncated != false {
      try visitor.visitSingularBoolField(value: self.writeTruncated, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketBufferedTrace, rhs: Envoy_Data_Tap_V2alpha_SocketBufferedTrace) -> Bool {
    if lhs.traceID != rhs.traceID {return false}
    if lhs._connection != rhs._connection {return false}
    if lhs.events != rhs.events {return false}
    if lhs.readTruncated != rhs.readTruncated {return false}
    if lhs.writeTruncated != rhs.writeTruncated {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SocketStreamedTraceSegment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "trace_id"),
    2: .same(proto: "connection"),
    3: .same(proto: "event"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self.traceID) }()
      case 2: try {
        var v: Envoy_Data_Tap_V2alpha_Connection?
        if let current = self.messagePiece {
          try decoder.handleConflictingOneOf()
          if case .connection(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.messagePiece = .connection(v)}
      }()
      case 3: try {
        var v: Envoy_Data_Tap_V2alpha_SocketEvent?
        if let current = self.messagePiece {
          try decoder.handleConflictingOneOf()
          if case .event(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.messagePiece = .event(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.traceID != 0 {
      try visitor.visitSingularUInt64Field(value: self.traceID, fieldNumber: 1)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.messagePiece {
    case .connection?: try {
      guard case .connection(let v)? = self.messagePiece else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .event?: try {
      guard case .event(let v)? = self.messagePiece else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment, rhs: Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment) -> Bool {
    if lhs.traceID != rhs.traceID {return false}
    if lhs.messagePiece != rhs.messagePiece {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
