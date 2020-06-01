// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/ip_tagging/v3/ip_tagging.proto
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

public struct Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The type of request the filter should apply to.
  public var requestType: Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.RequestType = .both

  /// [#comment:TODO(ccaraman): Extend functionality to load IP tags from file system.
  /// Tracked by issue https://github.com/envoyproxy/envoy/issues/2695]
  /// The set of IP tags for the filter.
  public var ipTags: [Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.IPTag] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The type of requests the filter should apply to. The supported types
  /// are internal, external or both. The
  /// :ref:`x-forwarded-for<config_http_conn_man_headers_x-forwarded-for_internal_origin>` header is
  /// used to determine if a request is internal and will result in
  /// :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>`
  /// being set. The filter defaults to both, and it will apply to all request types.
  public enum RequestType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Both external and internal requests will be tagged. This is the default value.
    case both // = 0

    /// Only internal requests will be tagged.
    case `internal` // = 1

    /// Only external requests will be tagged.
    case external // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .both
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .both
      case 1: self = .internal
      case 2: self = .external
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .both: return 0
      case .internal: return 1
      case .external: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Supplies the IP tag name and the IP address subnets.
  public struct IPTag {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Specifies the IP tag name to apply.
    public var ipTagName: String = String()

    /// A list of IP address subnets that will be tagged with
    /// ip_tag_name. Both IPv4 and IPv6 are supported.
    public var ipList: [Envoy_Config_Core_V3_CidrRange] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=4.2)

extension Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.RequestType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.RequestType] = [
    .both,
    .internal,
    .external,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.ip_tagging.v3"

extension Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".IPTagging"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "request_type"),
    4: .standard(proto: "ip_tags"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.requestType)
      case 4: try decoder.decodeRepeatedMessageField(value: &self.ipTags)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.requestType != .both {
      try visitor.visitSingularEnumField(value: self.requestType, fieldNumber: 1)
    }
    if !self.ipTags.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.ipTags, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging, rhs: Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging) -> Bool {
    if lhs.requestType != rhs.requestType {return false}
    if lhs.ipTags != rhs.ipTags {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.RequestType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BOTH"),
    1: .same(proto: "INTERNAL"),
    2: .same(proto: "EXTERNAL"),
  ]
}

extension Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.IPTag: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.protoMessageName + ".IPTag"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ip_tag_name"),
    2: .standard(proto: "ip_list"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.ipTagName)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.ipList)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.ipTagName.isEmpty {
      try visitor.visitSingularStringField(value: self.ipTagName, fieldNumber: 1)
    }
    if !self.ipList.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.ipList, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.IPTag, rhs: Envoy_Extensions_Filters_Http_IpTagging_V3_IPTagging.IPTag) -> Bool {
    if lhs.ipTagName != rhs.ipTagName {return false}
    if lhs.ipList != rhs.ipList {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
