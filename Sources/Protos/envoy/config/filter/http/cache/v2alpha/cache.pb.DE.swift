// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/filter/http/cache/v2alpha/cache.proto
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

public struct Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Config specific to the cache storage implementation.
  public var typedConfig: SwiftProtobuf.Google_Protobuf_Any {
    get {return _typedConfig ?? SwiftProtobuf.Google_Protobuf_Any()}
    set {_typedConfig = newValue}
  }
  /// Returns true if `typedConfig` has been explicitly set.
  public var hasTypedConfig: Bool {return self._typedConfig != nil}
  /// Clears the value of `typedConfig`. Subsequent reads from it will return its default value.
  public mutating func clearTypedConfig() {self._typedConfig = nil}

  /// List of matching rules that defines allowed *Vary* headers.
  ///
  /// The *vary* response header holds a list of header names that affect the
  /// contents of a response, as described by
  /// https://httpwg.org/specs/rfc7234.html#caching.negotiated.responses.
  ///
  /// During insertion, *allowed_vary_headers* acts as a allowlist: if a
  /// response's *vary* header mentions any header names that aren't matched by any rules in
  /// *allowed_vary_headers*, that response will not be cached.
  ///
  /// During lookup, *allowed_vary_headers* controls what request headers will be
  /// sent to the cache storage implementation.
  public var allowedVaryHeaders: [Envoy_Type_Matcher_StringMatcher] = []

  /// [#not-implemented-hide:]
  /// <TODO(toddmgreer) implement key customization>
  ///
  /// Modifies cache key creation by restricting which parts of the URL are included.
  public var keyCreatorParams: Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig.KeyCreatorParams {
    get {return _keyCreatorParams ?? Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig.KeyCreatorParams()}
    set {_keyCreatorParams = newValue}
  }
  /// Returns true if `keyCreatorParams` has been explicitly set.
  public var hasKeyCreatorParams: Bool {return self._keyCreatorParams != nil}
  /// Clears the value of `keyCreatorParams`. Subsequent reads from it will return its default value.
  public mutating func clearKeyCreatorParams() {self._keyCreatorParams = nil}

  /// [#not-implemented-hide:]
  /// <TODO(toddmgreer) implement size limit>
  ///
  /// Max body size the cache filter will insert into a cache. 0 means unlimited (though the cache
  /// storage implementation may have its own limit beyond which it will reject insertions).
  public var maxBodyBytes: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// [#not-implemented-hide:]
  /// Modifies cache key creation by restricting which parts of the URL are included.
  public struct KeyCreatorParams {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// If true, exclude the URL scheme from the cache key. Set to true if your origins always
    /// produce the same response for http and https requests.
    public var excludeScheme: Bool = false

    /// If true, exclude the host from the cache key. Set to true if your origins' responses don't
    /// ever depend on host.
    public var excludeHost: Bool = false

    /// If *query_parameters_included* is nonempty, only query parameters matched
    /// by one or more of its matchers are included in the cache key. Any other
    /// query params will not affect cache lookup.
    public var queryParametersIncluded: [Envoy_Api_V2_Route_QueryParameterMatcher] = []

    /// If *query_parameters_excluded* is nonempty, query parameters matched by one
    /// or more of its matchers are excluded from the cache key (even if also
    /// matched by *query_parameters_included*), and will not affect cache lookup.
    public var queryParametersExcluded: [Envoy_Api_V2_Route_QueryParameterMatcher] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _typedConfig: SwiftProtobuf.Google_Protobuf_Any? = nil
  fileprivate var _keyCreatorParams: Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig.KeyCreatorParams? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.filter.http.cache.v2alpha"

extension Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CacheConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "typed_config"),
    2: .standard(proto: "allowed_vary_headers"),
    3: .standard(proto: "key_creator_params"),
    4: .standard(proto: "max_body_bytes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._typedConfig) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.allowedVaryHeaders) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._keyCreatorParams) }()
      case 4: try { try decoder.decodeSingularUInt32Field(value: &self.maxBodyBytes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._typedConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.allowedVaryHeaders.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.allowedVaryHeaders, fieldNumber: 2)
    }
    if let v = self._keyCreatorParams {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.maxBodyBytes != 0 {
      try visitor.visitSingularUInt32Field(value: self.maxBodyBytes, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig, rhs: Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig) -> Bool {
    if lhs._typedConfig != rhs._typedConfig {return false}
    if lhs.allowedVaryHeaders != rhs.allowedVaryHeaders {return false}
    if lhs._keyCreatorParams != rhs._keyCreatorParams {return false}
    if lhs.maxBodyBytes != rhs.maxBodyBytes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig.KeyCreatorParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig.protoMessageName + ".KeyCreatorParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "exclude_scheme"),
    2: .standard(proto: "exclude_host"),
    3: .standard(proto: "query_parameters_included"),
    4: .standard(proto: "query_parameters_excluded"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.excludeScheme) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.excludeHost) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.queryParametersIncluded) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.queryParametersExcluded) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.excludeScheme != false {
      try visitor.visitSingularBoolField(value: self.excludeScheme, fieldNumber: 1)
    }
    if self.excludeHost != false {
      try visitor.visitSingularBoolField(value: self.excludeHost, fieldNumber: 2)
    }
    if !self.queryParametersIncluded.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.queryParametersIncluded, fieldNumber: 3)
    }
    if !self.queryParametersExcluded.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.queryParametersExcluded, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig.KeyCreatorParams, rhs: Envoy_Config_Filter_Http_Cache_V2alpha_CacheConfig.KeyCreatorParams) -> Bool {
    if lhs.excludeScheme != rhs.excludeScheme {return false}
    if lhs.excludeHost != rhs.excludeHost {return false}
    if lhs.queryParametersIncluded != rhs.queryParametersIncluded {return false}
    if lhs.queryParametersExcluded != rhs.queryParametersExcluded {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
