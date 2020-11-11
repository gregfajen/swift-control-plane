// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/service/tap/v2alpha/tap.proto
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

/// [#not-implemented-hide:] Stream message for the Tap API. Envoy will open a stream to the server
/// and stream taps without ever expecting a response.
public struct Envoy_Service_Tap_V2alpha_StreamTapsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Identifier data effectively is a structured metadata. As a performance optimization this will
  /// only be sent in the first message on the stream.
  public var identifier: Envoy_Service_Tap_V2alpha_StreamTapsRequest.Identifier {
    get {return _storage._identifier ?? Envoy_Service_Tap_V2alpha_StreamTapsRequest.Identifier()}
    set {_uniqueStorage()._identifier = newValue}
  }
  /// Returns true if `identifier` has been explicitly set.
  public var hasIdentifier: Bool {return _storage._identifier != nil}
  /// Clears the value of `identifier`. Subsequent reads from it will return its default value.
  public mutating func clearIdentifier() {_uniqueStorage()._identifier = nil}

  /// The trace id. this can be used to merge together a streaming trace. Note that the trace_id
  /// is not guaranteed to be spatially or temporally unique.
  public var traceID: UInt64 {
    get {return _storage._traceID}
    set {_uniqueStorage()._traceID = newValue}
  }

  /// The trace data.
  public var trace: Envoy_Data_Tap_V2alpha_TraceWrapper {
    get {return _storage._trace ?? Envoy_Data_Tap_V2alpha_TraceWrapper()}
    set {_uniqueStorage()._trace = newValue}
  }
  /// Returns true if `trace` has been explicitly set.
  public var hasTrace: Bool {return _storage._trace != nil}
  /// Clears the value of `trace`. Subsequent reads from it will return its default value.
  public mutating func clearTrace() {_uniqueStorage()._trace = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct Identifier {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The node sending taps over the stream.
    public var node: Envoy_Api_V2_Core_Node {
      get {return _node ?? Envoy_Api_V2_Core_Node()}
      set {_node = newValue}
    }
    /// Returns true if `node` has been explicitly set.
    public var hasNode: Bool {return self._node != nil}
    /// Clears the value of `node`. Subsequent reads from it will return its default value.
    public mutating func clearNode() {self._node = nil}

    /// The opaque identifier that was set in the :ref:`output config
    /// <envoy_api_field_service.tap.v2alpha.StreamingGrpcSink.tap_id>`.
    public var tapID: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _node: Envoy_Api_V2_Core_Node? = nil
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// [#not-implemented-hide:]
public struct Envoy_Service_Tap_V2alpha_StreamTapsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.service.tap.v2alpha"

extension Envoy_Service_Tap_V2alpha_StreamTapsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamTapsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "identifier"),
    2: .standard(proto: "trace_id"),
    3: .same(proto: "trace"),
  ]

  fileprivate class _StorageClass {
    var _identifier: Envoy_Service_Tap_V2alpha_StreamTapsRequest.Identifier? = nil
    var _traceID: UInt64 = 0
    var _trace: Envoy_Data_Tap_V2alpha_TraceWrapper? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _identifier = source._identifier
      _traceID = source._traceID
      _trace = source._trace
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._identifier) }()
        case 2: try { try decoder.decodeSingularUInt64Field(value: &_storage._traceID) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._trace) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._identifier {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._traceID != 0 {
        try visitor.visitSingularUInt64Field(value: _storage._traceID, fieldNumber: 2)
      }
      if let v = _storage._trace {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Tap_V2alpha_StreamTapsRequest, rhs: Envoy_Service_Tap_V2alpha_StreamTapsRequest) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._identifier != rhs_storage._identifier {return false}
        if _storage._traceID != rhs_storage._traceID {return false}
        if _storage._trace != rhs_storage._trace {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Tap_V2alpha_StreamTapsRequest.Identifier: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Service_Tap_V2alpha_StreamTapsRequest.protoMessageName + ".Identifier"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "node"),
    2: .standard(proto: "tap_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._node) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.tapID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._node {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.tapID.isEmpty {
      try visitor.visitSingularStringField(value: self.tapID, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Tap_V2alpha_StreamTapsRequest.Identifier, rhs: Envoy_Service_Tap_V2alpha_StreamTapsRequest.Identifier) -> Bool {
    if lhs._node != rhs._node {return false}
    if lhs.tapID != rhs.tapID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Service_Tap_V2alpha_StreamTapsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".StreamTapsResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Service_Tap_V2alpha_StreamTapsResponse, rhs: Envoy_Service_Tap_V2alpha_StreamTapsResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
