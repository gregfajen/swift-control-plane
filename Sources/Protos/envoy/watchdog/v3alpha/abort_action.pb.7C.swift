// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/watchdog/v3alpha/abort_action.proto
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

/// A GuardDogAction that will terminate the process by killing the
/// stuck thread. This would allow easier access to the call stack of the stuck
/// thread since we would run signal handlers on that thread. By default
/// this will be registered to run as the last watchdog action on KILL and
/// MULTIKILL events if those are enabled.
public struct Envoy_Watchdog_V3alpha_AbortActionConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// How long to wait for the thread to respond to the thread kill function
  /// before killing the process from this action. This is a blocking action.
  /// By default this is 5 seconds.
  public var waitDuration: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _waitDuration ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_waitDuration = newValue}
  }
  /// Returns true if `waitDuration` has been explicitly set.
  public var hasWaitDuration: Bool {return self._waitDuration != nil}
  /// Clears the value of `waitDuration`. Subsequent reads from it will return its default value.
  public mutating func clearWaitDuration() {self._waitDuration = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _waitDuration: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.watchdog.v3alpha"

extension Envoy_Watchdog_V3alpha_AbortActionConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AbortActionConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "wait_duration"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._waitDuration) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._waitDuration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Watchdog_V3alpha_AbortActionConfig, rhs: Envoy_Watchdog_V3alpha_AbortActionConfig) -> Bool {
    if lhs._waitDuration != rhs._waitDuration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
