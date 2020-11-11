// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/http.proto
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

public enum Envoy_Type_CodecClientType: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case http1 // = 0
  case http2 // = 1

  /// [#not-implemented-hide:] QUIC implementation is not production ready yet. Use this enum with
  /// caution to prevent accidental execution of QUIC code. I.e. `!= HTTP2` is no longer sufficient
  /// to distinguish HTTP1 and HTTP2 traffic.
  case http3 // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .http1
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .http1
    case 1: self = .http2
    case 2: self = .http3
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .http1: return 0
    case .http2: return 1
    case .http3: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Type_CodecClientType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Type_CodecClientType] = [
    .http1,
    .http2,
    .http3,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Envoy_Type_CodecClientType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "HTTP1"),
    1: .same(proto: "HTTP2"),
    2: .same(proto: "HTTP3"),
  ]
}