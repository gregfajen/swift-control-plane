// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/trace/v3/skywalking.proto
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

/// Configuration for the SkyWalking tracer. Please note that if SkyWalking tracer is used as the
/// provider of http tracer, then
/// :ref:`start_child_span <envoy_v3_api_field_extensions.filters.http.router.v3.Router.start_child_span>`
/// in the router must be set to true to get the correct topology and tracing data. Moreover, SkyWalking
/// Tracer does not support SkyWalking extension header (``sw8-x``) temporarily.
/// [#extension: envoy.tracers.skywalking]
public struct Envoy_Config_Trace_V3_SkyWalkingConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// SkyWalking collector service.
  public var grpcService: Envoy_Config_Core_V3_GrpcService {
    get {return _storage._grpcService ?? Envoy_Config_Core_V3_GrpcService()}
    set {_uniqueStorage()._grpcService = newValue}
  }
  /// Returns true if `grpcService` has been explicitly set.
  public var hasGrpcService: Bool {return _storage._grpcService != nil}
  /// Clears the value of `grpcService`. Subsequent reads from it will return its default value.
  public mutating func clearGrpcService() {_uniqueStorage()._grpcService = nil}

  public var clientConfig: Envoy_Config_Trace_V3_ClientConfig {
    get {return _storage._clientConfig ?? Envoy_Config_Trace_V3_ClientConfig()}
    set {_uniqueStorage()._clientConfig = newValue}
  }
  /// Returns true if `clientConfig` has been explicitly set.
  public var hasClientConfig: Bool {return _storage._clientConfig != nil}
  /// Clears the value of `clientConfig`. Subsequent reads from it will return its default value.
  public mutating func clearClientConfig() {_uniqueStorage()._clientConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Client config for SkyWalking tracer.
public struct Envoy_Config_Trace_V3_ClientConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Service name for SkyWalking tracer. If this field is empty, then local service cluster name
  /// that configured by :ref:`Bootstrap node <envoy_v3_api_field_config.bootstrap.v3.Bootstrap.node>`
  /// message's :ref:`cluster <envoy_v3_api_field_config.core.v3.Node.cluster>` field or command line
  /// option :option:`--service-cluster` will be used. If both this field and local service cluster
  /// name are empty, ``EnvoyProxy`` is used as the service name by default.
  public var serviceName: String = String()

  /// Service instance name for SkyWalking tracer. If this field is empty, then local service node
  /// that configured by :ref:`Bootstrap node <envoy_v3_api_field_config.bootstrap.v3.Bootstrap.node>`
  /// message's :ref:`id <envoy_v3_api_field_config.core.v3.Node.id>` field or command line  option
  /// :option:`--service-node` will be used. If both this field and local service node are empty,
  /// ``EnvoyProxy`` is used as the instance name by default.
  public var instanceName: String = String()

  /// Authentication token config for SkyWalking. SkyWalking can use token authentication to secure
  /// that monitoring application data can be trusted. In current version, Token is considered as a
  /// simple string.
  /// [#comment:TODO(wbpcode): Get backend token through the SDS API.]
  public var backendTokenSpecifier: Envoy_Config_Trace_V3_ClientConfig.OneOf_BackendTokenSpecifier? = nil

  /// Inline authentication token string.
  public var backendToken: String {
    get {
      if case .backendToken(let v)? = backendTokenSpecifier {return v}
      return String()
    }
    set {backendTokenSpecifier = .backendToken(newValue)}
  }

  /// Envoy caches the segment in memory when the SkyWalking backend service is temporarily unavailable.
  /// This field specifies the maximum number of segments that can be cached. If not specified, the
  /// default is 1024.
  public var maxCacheSize: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _maxCacheSize ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_maxCacheSize = newValue}
  }
  /// Returns true if `maxCacheSize` has been explicitly set.
  public var hasMaxCacheSize: Bool {return self._maxCacheSize != nil}
  /// Clears the value of `maxCacheSize`. Subsequent reads from it will return its default value.
  public mutating func clearMaxCacheSize() {self._maxCacheSize = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Authentication token config for SkyWalking. SkyWalking can use token authentication to secure
  /// that monitoring application data can be trusted. In current version, Token is considered as a
  /// simple string.
  /// [#comment:TODO(wbpcode): Get backend token through the SDS API.]
  public enum OneOf_BackendTokenSpecifier: Equatable {
    /// Inline authentication token string.
    case backendToken(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Trace_V3_ClientConfig.OneOf_BackendTokenSpecifier, rhs: Envoy_Config_Trace_V3_ClientConfig.OneOf_BackendTokenSpecifier) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.backendToken, .backendToken): return {
        guard case .backendToken(let l) = lhs, case .backendToken(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _maxCacheSize: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.trace.v3"

extension Envoy_Config_Trace_V3_SkyWalkingConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SkyWalkingConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "grpc_service"),
    2: .standard(proto: "client_config"),
  ]

  fileprivate class _StorageClass {
    var _grpcService: Envoy_Config_Core_V3_GrpcService? = nil
    var _clientConfig: Envoy_Config_Trace_V3_ClientConfig? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _grpcService = source._grpcService
      _clientConfig = source._clientConfig
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._grpcService) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._clientConfig) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._grpcService {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._clientConfig {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Trace_V3_SkyWalkingConfig, rhs: Envoy_Config_Trace_V3_SkyWalkingConfig) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._grpcService != rhs_storage._grpcService {return false}
        if _storage._clientConfig != rhs_storage._clientConfig {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Trace_V3_ClientConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClientConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "service_name"),
    2: .standard(proto: "instance_name"),
    3: .standard(proto: "backend_token"),
    4: .standard(proto: "max_cache_size"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.serviceName) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.instanceName) }()
      case 3: try {
        if self.backendTokenSpecifier != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.backendTokenSpecifier = .backendToken(v)}
      }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._maxCacheSize) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.serviceName.isEmpty {
      try visitor.visitSingularStringField(value: self.serviceName, fieldNumber: 1)
    }
    if !self.instanceName.isEmpty {
      try visitor.visitSingularStringField(value: self.instanceName, fieldNumber: 2)
    }
    if case .backendToken(let v)? = self.backendTokenSpecifier {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }
    if let v = self._maxCacheSize {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Trace_V3_ClientConfig, rhs: Envoy_Config_Trace_V3_ClientConfig) -> Bool {
    if lhs.serviceName != rhs.serviceName {return false}
    if lhs.instanceName != rhs.instanceName {return false}
    if lhs.backendTokenSpecifier != rhs.backendTokenSpecifier {return false}
    if lhs._maxCacheSize != rhs._maxCacheSize {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}