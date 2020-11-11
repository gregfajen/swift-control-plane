// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/data/tap/v2alpha/wrapper.proto
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

/// Wrapper for all fully buffered and streamed tap traces that Envoy emits. This is required for
/// sending traces over gRPC APIs or more easily persisting binary messages to files.
public struct Envoy_Data_Tap_V2alpha_TraceWrapper {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var trace: Envoy_Data_Tap_V2alpha_TraceWrapper.OneOf_Trace? = nil

  /// An HTTP buffered tap trace.
  public var httpBufferedTrace: Envoy_Data_Tap_V2alpha_HttpBufferedTrace {
    get {
      if case .httpBufferedTrace(let v)? = trace {return v}
      return Envoy_Data_Tap_V2alpha_HttpBufferedTrace()
    }
    set {trace = .httpBufferedTrace(newValue)}
  }

  /// An HTTP streamed tap trace segment.
  public var httpStreamedTraceSegment: Envoy_Data_Tap_V2alpha_HttpStreamedTraceSegment {
    get {
      if case .httpStreamedTraceSegment(let v)? = trace {return v}
      return Envoy_Data_Tap_V2alpha_HttpStreamedTraceSegment()
    }
    set {trace = .httpStreamedTraceSegment(newValue)}
  }

  /// A socket buffered tap trace.
  public var socketBufferedTrace: Envoy_Data_Tap_V2alpha_SocketBufferedTrace {
    get {
      if case .socketBufferedTrace(let v)? = trace {return v}
      return Envoy_Data_Tap_V2alpha_SocketBufferedTrace()
    }
    set {trace = .socketBufferedTrace(newValue)}
  }

  /// A socket streamed tap trace segment.
  public var socketStreamedTraceSegment: Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment {
    get {
      if case .socketStreamedTraceSegment(let v)? = trace {return v}
      return Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment()
    }
    set {trace = .socketStreamedTraceSegment(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Trace: Equatable {
    /// An HTTP buffered tap trace.
    case httpBufferedTrace(Envoy_Data_Tap_V2alpha_HttpBufferedTrace)
    /// An HTTP streamed tap trace segment.
    case httpStreamedTraceSegment(Envoy_Data_Tap_V2alpha_HttpStreamedTraceSegment)
    /// A socket buffered tap trace.
    case socketBufferedTrace(Envoy_Data_Tap_V2alpha_SocketBufferedTrace)
    /// A socket streamed tap trace segment.
    case socketStreamedTraceSegment(Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Data_Tap_V2alpha_TraceWrapper.OneOf_Trace, rhs: Envoy_Data_Tap_V2alpha_TraceWrapper.OneOf_Trace) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.httpBufferedTrace, .httpBufferedTrace): return {
        guard case .httpBufferedTrace(let l) = lhs, case .httpBufferedTrace(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.httpStreamedTraceSegment, .httpStreamedTraceSegment): return {
        guard case .httpStreamedTraceSegment(let l) = lhs, case .httpStreamedTraceSegment(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.socketBufferedTrace, .socketBufferedTrace): return {
        guard case .socketBufferedTrace(let l) = lhs, case .socketBufferedTrace(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.socketStreamedTraceSegment, .socketStreamedTraceSegment): return {
        guard case .socketStreamedTraceSegment(let l) = lhs, case .socketStreamedTraceSegment(let r) = rhs else { preconditionFailure() }
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

extension Envoy_Data_Tap_V2alpha_TraceWrapper: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TraceWrapper"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "http_buffered_trace"),
    2: .standard(proto: "http_streamed_trace_segment"),
    3: .standard(proto: "socket_buffered_trace"),
    4: .standard(proto: "socket_streamed_trace_segment"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Envoy_Data_Tap_V2alpha_HttpBufferedTrace?
        if let current = self.trace {
          try decoder.handleConflictingOneOf()
          if case .httpBufferedTrace(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.trace = .httpBufferedTrace(v)}
      }()
      case 2: try {
        var v: Envoy_Data_Tap_V2alpha_HttpStreamedTraceSegment?
        if let current = self.trace {
          try decoder.handleConflictingOneOf()
          if case .httpStreamedTraceSegment(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.trace = .httpStreamedTraceSegment(v)}
      }()
      case 3: try {
        var v: Envoy_Data_Tap_V2alpha_SocketBufferedTrace?
        if let current = self.trace {
          try decoder.handleConflictingOneOf()
          if case .socketBufferedTrace(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.trace = .socketBufferedTrace(v)}
      }()
      case 4: try {
        var v: Envoy_Data_Tap_V2alpha_SocketStreamedTraceSegment?
        if let current = self.trace {
          try decoder.handleConflictingOneOf()
          if case .socketStreamedTraceSegment(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.trace = .socketStreamedTraceSegment(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.trace {
    case .httpBufferedTrace?: try {
      guard case .httpBufferedTrace(let v)? = self.trace else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .httpStreamedTraceSegment?: try {
      guard case .httpStreamedTraceSegment(let v)? = self.trace else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .socketBufferedTrace?: try {
      guard case .socketBufferedTrace(let v)? = self.trace else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .socketStreamedTraceSegment?: try {
      guard case .socketStreamedTraceSegment(let v)? = self.trace else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Tap_V2alpha_TraceWrapper, rhs: Envoy_Data_Tap_V2alpha_TraceWrapper) -> Bool {
    if lhs.trace != rhs.trace {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}