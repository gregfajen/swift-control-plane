// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/core/v3/socket_option.proto
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

/// Generic socket option message. This would be used to set socket options that
/// might not exist in upstream kernels or precompiled Envoy binaries.
/// [#next-free-field: 7]
public struct Envoy_Config_Core_V3_SocketOption {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// An optional name to give this socket option for debugging, etc.
  /// Uniqueness is not required and no special meaning is assumed.
  public var description_p: String = String()

  /// Corresponding to the level value passed to setsockopt, such as IPPROTO_TCP
  public var level: Int64 = 0

  /// The numeric name as passed to setsockopt
  public var name: Int64 = 0

  public var value: Envoy_Config_Core_V3_SocketOption.OneOf_Value? = nil

  /// Because many sockopts take an int value.
  public var intValue: Int64 {
    get {
      if case .intValue(let v)? = value {return v}
      return 0
    }
    set {value = .intValue(newValue)}
  }

  /// Otherwise it's a byte buffer.
  public var bufValue: Data {
    get {
      if case .bufValue(let v)? = value {return v}
      return Data()
    }
    set {value = .bufValue(newValue)}
  }

  /// The state in which the option will be applied. When used in BindConfig
  /// STATE_PREBIND is currently the only valid value.
  public var state: Envoy_Config_Core_V3_SocketOption.SocketState = .statePrebind

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Value: Equatable {
    /// Because many sockopts take an int value.
    case intValue(Int64)
    /// Otherwise it's a byte buffer.
    case bufValue(Data)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Core_V3_SocketOption.OneOf_Value, rhs: Envoy_Config_Core_V3_SocketOption.OneOf_Value) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.intValue, .intValue): return {
        guard case .intValue(let l) = lhs, case .intValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.bufValue, .bufValue): return {
        guard case .bufValue(let l) = lhs, case .bufValue(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public enum SocketState: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Socket options are applied after socket creation but before binding the socket to a port
    case statePrebind // = 0

    /// Socket options are applied after binding the socket to a port but before calling listen()
    case stateBound // = 1

    /// Socket options are applied after calling listen()
    case stateListening // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .statePrebind
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .statePrebind
      case 1: self = .stateBound
      case 2: self = .stateListening
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .statePrebind: return 0
      case .stateBound: return 1
      case .stateListening: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Envoy_Config_Core_V3_SocketOption.SocketState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Config_Core_V3_SocketOption.SocketState] = [
    .statePrebind,
    .stateBound,
    .stateListening,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.core.v3"

extension Envoy_Config_Core_V3_SocketOption: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SocketOption"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "description"),
    2: .same(proto: "level"),
    3: .same(proto: "name"),
    4: .standard(proto: "int_value"),
    5: .standard(proto: "buf_value"),
    6: .same(proto: "state"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 2: try { try decoder.decodeSingularInt64Field(value: &self.level) }()
      case 3: try { try decoder.decodeSingularInt64Field(value: &self.name) }()
      case 4: try {
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Int64?
        try decoder.decodeSingularInt64Field(value: &v)
        if let v = v {self.value = .intValue(v)}
      }()
      case 5: try {
        if self.value != nil {try decoder.handleConflictingOneOf()}
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {self.value = .bufValue(v)}
      }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 1)
    }
    if self.level != 0 {
      try visitor.visitSingularInt64Field(value: self.level, fieldNumber: 2)
    }
    if self.name != 0 {
      try visitor.visitSingularInt64Field(value: self.name, fieldNumber: 3)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.value {
    case .intValue?: try {
      guard case .intValue(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularInt64Field(value: v, fieldNumber: 4)
    }()
    case .bufValue?: try {
      guard case .bufValue(let v)? = self.value else { preconditionFailure() }
      try visitor.visitSingularBytesField(value: v, fieldNumber: 5)
    }()
    case nil: break
    }
    if self.state != .statePrebind {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Core_V3_SocketOption, rhs: Envoy_Config_Core_V3_SocketOption) -> Bool {
    if lhs.description_p != rhs.description_p {return false}
    if lhs.level != rhs.level {return false}
    if lhs.name != rhs.name {return false}
    if lhs.value != rhs.value {return false}
    if lhs.state != rhs.state {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Core_V3_SocketOption.SocketState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATE_PREBIND"),
    1: .same(proto: "STATE_BOUND"),
    2: .same(proto: "STATE_LISTENING"),
  ]
}