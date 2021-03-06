// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/fault/v4alpha/fault.proto
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

/// [#next-free-field: 6]
public struct Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var errorType: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.OneOf_ErrorType? = nil

  /// HTTP status code to use to abort the HTTP request.
  public var httpStatus: UInt32 {
    get {
      if case .httpStatus(let v)? = errorType {return v}
      return 0
    }
    set {errorType = .httpStatus(newValue)}
  }

  /// gRPC status code to use to abort the gRPC request.
  public var grpcStatus: UInt32 {
    get {
      if case .grpcStatus(let v)? = errorType {return v}
      return 0
    }
    set {errorType = .grpcStatus(newValue)}
  }

  /// Fault aborts are controlled via an HTTP header (if applicable).
  public var headerAbort: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.HeaderAbort {
    get {
      if case .headerAbort(let v)? = errorType {return v}
      return Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.HeaderAbort()
    }
    set {errorType = .headerAbort(newValue)}
  }

  /// The percentage of requests/operations/connections that will be aborted with the error code
  /// provided.
  public var percentage: Envoy_Type_V3_FractionalPercent {
    get {return _percentage ?? Envoy_Type_V3_FractionalPercent()}
    set {_percentage = newValue}
  }
  /// Returns true if `percentage` has been explicitly set.
  public var hasPercentage: Bool {return self._percentage != nil}
  /// Clears the value of `percentage`. Subsequent reads from it will return its default value.
  public mutating func clearPercentage() {self._percentage = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_ErrorType: Equatable {
    /// HTTP status code to use to abort the HTTP request.
    case httpStatus(UInt32)
    /// gRPC status code to use to abort the gRPC request.
    case grpcStatus(UInt32)
    /// Fault aborts are controlled via an HTTP header (if applicable).
    case headerAbort(Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.HeaderAbort)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.OneOf_ErrorType, rhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.OneOf_ErrorType) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.httpStatus, .httpStatus): return {
        guard case .httpStatus(let l) = lhs, case .httpStatus(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.grpcStatus, .grpcStatus): return {
        guard case .grpcStatus(let l) = lhs, case .grpcStatus(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.headerAbort, .headerAbort): return {
        guard case .headerAbort(let l) = lhs, case .headerAbort(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// Fault aborts are controlled via an HTTP header (if applicable). See the
  /// :ref:`HTTP fault filter <config_http_filters_fault_injection_http_header>` documentation for
  /// more information.
  public struct HeaderAbort {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _percentage: Envoy_Type_V3_FractionalPercent? = nil
}

/// [#next-free-field: 15]
public struct Envoy_Extensions_Filters_Http_Fault_V4alpha_HTTPFault {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// If specified, the filter will inject delays based on the values in the
  /// object.
  public var delay: Envoy_Extensions_Filters_Common_Fault_V3_FaultDelay {
    get {return _storage._delay ?? Envoy_Extensions_Filters_Common_Fault_V3_FaultDelay()}
    set {_uniqueStorage()._delay = newValue}
  }
  /// Returns true if `delay` has been explicitly set.
  public var hasDelay: Bool {return _storage._delay != nil}
  /// Clears the value of `delay`. Subsequent reads from it will return its default value.
  public mutating func clearDelay() {_uniqueStorage()._delay = nil}

  /// If specified, the filter will abort requests based on the values in
  /// the object. At least *abort* or *delay* must be specified.
  public var abort: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort {
    get {return _storage._abort ?? Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort()}
    set {_uniqueStorage()._abort = newValue}
  }
  /// Returns true if `abort` has been explicitly set.
  public var hasAbort: Bool {return _storage._abort != nil}
  /// Clears the value of `abort`. Subsequent reads from it will return its default value.
  public mutating func clearAbort() {_uniqueStorage()._abort = nil}

  /// Specifies the name of the (destination) upstream cluster that the
  /// filter should match on. Fault injection will be restricted to requests
  /// bound to the specific upstream cluster.
  public var upstreamCluster: String {
    get {return _storage._upstreamCluster}
    set {_uniqueStorage()._upstreamCluster = newValue}
  }

  /// Specifies a set of headers that the filter should match on. The fault
  /// injection filter can be applied selectively to requests that match a set of
  /// headers specified in the fault filter config. The chances of actual fault
  /// injection further depend on the value of the :ref:`percentage
  /// <envoy_api_field_extensions.filters.http.fault.v4alpha.FaultAbort.percentage>` field.
  /// The filter will check the request's headers against all the specified
  /// headers in the filter config. A match will happen if all the headers in the
  /// config are present in the request with the same values (or based on
  /// presence if the *value* field is not in the config).
  public var headers: [Envoy_Config_Route_V4alpha_HeaderMatcher] {
    get {return _storage._headers}
    set {_uniqueStorage()._headers = newValue}
  }

  /// Faults are injected for the specified list of downstream hosts. If this
  /// setting is not set, faults are injected for all downstream nodes.
  /// Downstream node name is taken from :ref:`the HTTP
  /// x-envoy-downstream-service-node
  /// <config_http_conn_man_headers_downstream-service-node>` header and compared
  /// against downstream_nodes list.
  public var downstreamNodes: [String] {
    get {return _storage._downstreamNodes}
    set {_uniqueStorage()._downstreamNodes = newValue}
  }

  /// The maximum number of faults that can be active at a single time via the configured fault
  /// filter. Note that because this setting can be overridden at the route level, it's possible
  /// for the number of active faults to be greater than this value (if injected via a different
  /// route). If not specified, defaults to unlimited. This setting can be overridden via
  /// `runtime <config_http_filters_fault_injection_runtime>` and any faults that are not injected
  /// due to overflow will be indicated via the `faults_overflow
  /// <config_http_filters_fault_injection_stats>` stat.
  ///
  /// .. attention::
  ///   Like other :ref:`circuit breakers <arch_overview_circuit_break>` in Envoy, this is a fuzzy
  ///   limit. It's possible for the number of active faults to rise slightly above the configured
  ///   amount due to the implementation details.
  public var maxActiveFaults: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _storage._maxActiveFaults ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_uniqueStorage()._maxActiveFaults = newValue}
  }
  /// Returns true if `maxActiveFaults` has been explicitly set.
  public var hasMaxActiveFaults: Bool {return _storage._maxActiveFaults != nil}
  /// Clears the value of `maxActiveFaults`. Subsequent reads from it will return its default value.
  public mutating func clearMaxActiveFaults() {_uniqueStorage()._maxActiveFaults = nil}

  /// The response rate limit to be applied to the response body of the stream. When configured,
  /// the percentage can be overridden by the :ref:`fault.http.rate_limit.response_percent
  /// <config_http_filters_fault_injection_runtime>` runtime key.
  ///
  /// .. attention::
  ///  This is a per-stream limit versus a connection level limit. This means that concurrent streams
  ///  will each get an independent limit.
  public var responseRateLimit: Envoy_Extensions_Filters_Common_Fault_V3_FaultRateLimit {
    get {return _storage._responseRateLimit ?? Envoy_Extensions_Filters_Common_Fault_V3_FaultRateLimit()}
    set {_uniqueStorage()._responseRateLimit = newValue}
  }
  /// Returns true if `responseRateLimit` has been explicitly set.
  public var hasResponseRateLimit: Bool {return _storage._responseRateLimit != nil}
  /// Clears the value of `responseRateLimit`. Subsequent reads from it will return its default value.
  public mutating func clearResponseRateLimit() {_uniqueStorage()._responseRateLimit = nil}

  /// The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`
  /// runtime. The default is: fault.http.delay.fixed_delay_percent
  public var delayPercentRuntime: String {
    get {return _storage._delayPercentRuntime}
    set {_uniqueStorage()._delayPercentRuntime = newValue}
  }

  /// The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`
  /// runtime. The default is: fault.http.abort.abort_percent
  public var abortPercentRuntime: String {
    get {return _storage._abortPercentRuntime}
    set {_uniqueStorage()._abortPercentRuntime = newValue}
  }

  /// The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`
  /// runtime. The default is: fault.http.delay.fixed_duration_ms
  public var delayDurationRuntime: String {
    get {return _storage._delayDurationRuntime}
    set {_uniqueStorage()._delayDurationRuntime = newValue}
  }

  /// The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`
  /// runtime. The default is: fault.http.abort.http_status
  public var abortHTTPStatusRuntime: String {
    get {return _storage._abortHTTPStatusRuntime}
    set {_uniqueStorage()._abortHTTPStatusRuntime = newValue}
  }

  /// The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`
  /// runtime. The default is: fault.http.max_active_faults
  public var maxActiveFaultsRuntime: String {
    get {return _storage._maxActiveFaultsRuntime}
    set {_uniqueStorage()._maxActiveFaultsRuntime = newValue}
  }

  /// The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`
  /// runtime. The default is: fault.http.rate_limit.response_percent
  public var responseRateLimitPercentRuntime: String {
    get {return _storage._responseRateLimitPercentRuntime}
    set {_uniqueStorage()._responseRateLimitPercentRuntime = newValue}
  }

  /// The runtime key to override the :ref:`default <config_http_filters_fault_injection_runtime>`
  /// runtime. The default is: fault.http.abort.grpc_status
  public var abortGrpcStatusRuntime: String {
    get {return _storage._abortGrpcStatusRuntime}
    set {_uniqueStorage()._abortGrpcStatusRuntime = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.fault.v4alpha"

extension Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FaultAbort"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    2: .standard(proto: "http_status"),
    5: .standard(proto: "grpc_status"),
    4: .standard(proto: "header_abort"),
    3: .same(proto: "percentage"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 2: try {
        if self.errorType != nil {try decoder.handleConflictingOneOf()}
        var v: UInt32?
        try decoder.decodeSingularUInt32Field(value: &v)
        if let v = v {self.errorType = .httpStatus(v)}
      }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._percentage) }()
      case 4: try {
        var v: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.HeaderAbort?
        if let current = self.errorType {
          try decoder.handleConflictingOneOf()
          if case .headerAbort(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.errorType = .headerAbort(v)}
      }()
      case 5: try {
        if self.errorType != nil {try decoder.handleConflictingOneOf()}
        var v: UInt32?
        try decoder.decodeSingularUInt32Field(value: &v)
        if let v = v {self.errorType = .grpcStatus(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .httpStatus(let v)? = self.errorType {
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 2)
    }
    if let v = self._percentage {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.errorType {
    case .headerAbort?: try {
      guard case .headerAbort(let v)? = self.errorType else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .grpcStatus?: try {
      guard case .grpcStatus(let v)? = self.errorType else { preconditionFailure() }
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 5)
    }()
    default: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort, rhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort) -> Bool {
    if lhs.errorType != rhs.errorType {return false}
    if lhs._percentage != rhs._percentage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.HeaderAbort: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.protoMessageName + ".HeaderAbort"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.HeaderAbort, rhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort.HeaderAbort) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_Fault_V4alpha_HTTPFault: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HTTPFault"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "delay"),
    2: .same(proto: "abort"),
    3: .standard(proto: "upstream_cluster"),
    4: .same(proto: "headers"),
    5: .standard(proto: "downstream_nodes"),
    6: .standard(proto: "max_active_faults"),
    7: .standard(proto: "response_rate_limit"),
    8: .standard(proto: "delay_percent_runtime"),
    9: .standard(proto: "abort_percent_runtime"),
    10: .standard(proto: "delay_duration_runtime"),
    11: .standard(proto: "abort_http_status_runtime"),
    12: .standard(proto: "max_active_faults_runtime"),
    13: .standard(proto: "response_rate_limit_percent_runtime"),
    14: .standard(proto: "abort_grpc_status_runtime"),
  ]

  fileprivate class _StorageClass {
    var _delay: Envoy_Extensions_Filters_Common_Fault_V3_FaultDelay? = nil
    var _abort: Envoy_Extensions_Filters_Http_Fault_V4alpha_FaultAbort? = nil
    var _upstreamCluster: String = String()
    var _headers: [Envoy_Config_Route_V4alpha_HeaderMatcher] = []
    var _downstreamNodes: [String] = []
    var _maxActiveFaults: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    var _responseRateLimit: Envoy_Extensions_Filters_Common_Fault_V3_FaultRateLimit? = nil
    var _delayPercentRuntime: String = String()
    var _abortPercentRuntime: String = String()
    var _delayDurationRuntime: String = String()
    var _abortHTTPStatusRuntime: String = String()
    var _maxActiveFaultsRuntime: String = String()
    var _responseRateLimitPercentRuntime: String = String()
    var _abortGrpcStatusRuntime: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _delay = source._delay
      _abort = source._abort
      _upstreamCluster = source._upstreamCluster
      _headers = source._headers
      _downstreamNodes = source._downstreamNodes
      _maxActiveFaults = source._maxActiveFaults
      _responseRateLimit = source._responseRateLimit
      _delayPercentRuntime = source._delayPercentRuntime
      _abortPercentRuntime = source._abortPercentRuntime
      _delayDurationRuntime = source._delayDurationRuntime
      _abortHTTPStatusRuntime = source._abortHTTPStatusRuntime
      _maxActiveFaultsRuntime = source._maxActiveFaultsRuntime
      _responseRateLimitPercentRuntime = source._responseRateLimitPercentRuntime
      _abortGrpcStatusRuntime = source._abortGrpcStatusRuntime
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._delay) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._abort) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._upstreamCluster) }()
        case 4: try { try decoder.decodeRepeatedMessageField(value: &_storage._headers) }()
        case 5: try { try decoder.decodeRepeatedStringField(value: &_storage._downstreamNodes) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._maxActiveFaults) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._responseRateLimit) }()
        case 8: try { try decoder.decodeSingularStringField(value: &_storage._delayPercentRuntime) }()
        case 9: try { try decoder.decodeSingularStringField(value: &_storage._abortPercentRuntime) }()
        case 10: try { try decoder.decodeSingularStringField(value: &_storage._delayDurationRuntime) }()
        case 11: try { try decoder.decodeSingularStringField(value: &_storage._abortHTTPStatusRuntime) }()
        case 12: try { try decoder.decodeSingularStringField(value: &_storage._maxActiveFaultsRuntime) }()
        case 13: try { try decoder.decodeSingularStringField(value: &_storage._responseRateLimitPercentRuntime) }()
        case 14: try { try decoder.decodeSingularStringField(value: &_storage._abortGrpcStatusRuntime) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._delay {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._abort {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if !_storage._upstreamCluster.isEmpty {
        try visitor.visitSingularStringField(value: _storage._upstreamCluster, fieldNumber: 3)
      }
      if !_storage._headers.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._headers, fieldNumber: 4)
      }
      if !_storage._downstreamNodes.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._downstreamNodes, fieldNumber: 5)
      }
      if let v = _storage._maxActiveFaults {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._responseRateLimit {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if !_storage._delayPercentRuntime.isEmpty {
        try visitor.visitSingularStringField(value: _storage._delayPercentRuntime, fieldNumber: 8)
      }
      if !_storage._abortPercentRuntime.isEmpty {
        try visitor.visitSingularStringField(value: _storage._abortPercentRuntime, fieldNumber: 9)
      }
      if !_storage._delayDurationRuntime.isEmpty {
        try visitor.visitSingularStringField(value: _storage._delayDurationRuntime, fieldNumber: 10)
      }
      if !_storage._abortHTTPStatusRuntime.isEmpty {
        try visitor.visitSingularStringField(value: _storage._abortHTTPStatusRuntime, fieldNumber: 11)
      }
      if !_storage._maxActiveFaultsRuntime.isEmpty {
        try visitor.visitSingularStringField(value: _storage._maxActiveFaultsRuntime, fieldNumber: 12)
      }
      if !_storage._responseRateLimitPercentRuntime.isEmpty {
        try visitor.visitSingularStringField(value: _storage._responseRateLimitPercentRuntime, fieldNumber: 13)
      }
      if !_storage._abortGrpcStatusRuntime.isEmpty {
        try visitor.visitSingularStringField(value: _storage._abortGrpcStatusRuntime, fieldNumber: 14)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_HTTPFault, rhs: Envoy_Extensions_Filters_Http_Fault_V4alpha_HTTPFault) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._delay != rhs_storage._delay {return false}
        if _storage._abort != rhs_storage._abort {return false}
        if _storage._upstreamCluster != rhs_storage._upstreamCluster {return false}
        if _storage._headers != rhs_storage._headers {return false}
        if _storage._downstreamNodes != rhs_storage._downstreamNodes {return false}
        if _storage._maxActiveFaults != rhs_storage._maxActiveFaults {return false}
        if _storage._responseRateLimit != rhs_storage._responseRateLimit {return false}
        if _storage._delayPercentRuntime != rhs_storage._delayPercentRuntime {return false}
        if _storage._abortPercentRuntime != rhs_storage._abortPercentRuntime {return false}
        if _storage._delayDurationRuntime != rhs_storage._delayDurationRuntime {return false}
        if _storage._abortHTTPStatusRuntime != rhs_storage._abortHTTPStatusRuntime {return false}
        if _storage._maxActiveFaultsRuntime != rhs_storage._maxActiveFaultsRuntime {return false}
        if _storage._responseRateLimitPercentRuntime != rhs_storage._responseRateLimitPercentRuntime {return false}
        if _storage._abortGrpcStatusRuntime != rhs_storage._abortGrpcStatusRuntime {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
