// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/cluster/v4alpha/circuit_breaker.proto
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

/// :ref:`Circuit breaking<arch_overview_circuit_break>` settings can be
/// specified individually for each defined priority.
public struct Envoy_Config_Cluster_V4alpha_CircuitBreakers {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// If multiple :ref:`Thresholds<envoy_api_msg_config.cluster.v4alpha.CircuitBreakers.Thresholds>`
  /// are defined with the same :ref:`RoutingPriority<envoy_api_enum_config.core.v4alpha.RoutingPriority>`,
  /// the first one in the list is used. If no Thresholds is defined for a given
  /// :ref:`RoutingPriority<envoy_api_enum_config.core.v4alpha.RoutingPriority>`, the default values
  /// are used.
  public var thresholds: [Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A Thresholds defines CircuitBreaker settings for a
  /// :ref:`RoutingPriority<envoy_api_enum_config.core.v4alpha.RoutingPriority>`.
  /// [#next-free-field: 9]
  public struct Thresholds {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The :ref:`RoutingPriority<envoy_api_enum_config.core.v4alpha.RoutingPriority>`
    /// the specified CircuitBreaker settings apply to.
    public var priority: Envoy_Config_Core_V4alpha_RoutingPriority = .default

    /// The maximum number of connections that Envoy will make to the upstream
    /// cluster. If not specified, the default is 1024.
    public var maxConnections: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _maxConnections ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_maxConnections = newValue}
    }
    /// Returns true if `maxConnections` has been explicitly set.
    public var hasMaxConnections: Bool {return self._maxConnections != nil}
    /// Clears the value of `maxConnections`. Subsequent reads from it will return its default value.
    public mutating func clearMaxConnections() {self._maxConnections = nil}

    /// The maximum number of pending requests that Envoy will allow to the
    /// upstream cluster. If not specified, the default is 1024.
    public var maxPendingRequests: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _maxPendingRequests ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_maxPendingRequests = newValue}
    }
    /// Returns true if `maxPendingRequests` has been explicitly set.
    public var hasMaxPendingRequests: Bool {return self._maxPendingRequests != nil}
    /// Clears the value of `maxPendingRequests`. Subsequent reads from it will return its default value.
    public mutating func clearMaxPendingRequests() {self._maxPendingRequests = nil}

    /// The maximum number of parallel requests that Envoy will make to the
    /// upstream cluster. If not specified, the default is 1024.
    public var maxRequests: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _maxRequests ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_maxRequests = newValue}
    }
    /// Returns true if `maxRequests` has been explicitly set.
    public var hasMaxRequests: Bool {return self._maxRequests != nil}
    /// Clears the value of `maxRequests`. Subsequent reads from it will return its default value.
    public mutating func clearMaxRequests() {self._maxRequests = nil}

    /// The maximum number of parallel retries that Envoy will allow to the
    /// upstream cluster. If not specified, the default is 3.
    public var maxRetries: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _maxRetries ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_maxRetries = newValue}
    }
    /// Returns true if `maxRetries` has been explicitly set.
    public var hasMaxRetries: Bool {return self._maxRetries != nil}
    /// Clears the value of `maxRetries`. Subsequent reads from it will return its default value.
    public mutating func clearMaxRetries() {self._maxRetries = nil}

    /// Specifies a limit on concurrent retries in relation to the number of active requests. This
    /// parameter is optional.
    ///
    /// .. note::
    ///
    ///    If this field is set, the retry budget will override any configured retry circuit
    ///    breaker.
    public var retryBudget: Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds.RetryBudget {
      get {return _retryBudget ?? Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds.RetryBudget()}
      set {_retryBudget = newValue}
    }
    /// Returns true if `retryBudget` has been explicitly set.
    public var hasRetryBudget: Bool {return self._retryBudget != nil}
    /// Clears the value of `retryBudget`. Subsequent reads from it will return its default value.
    public mutating func clearRetryBudget() {self._retryBudget = nil}

    /// If track_remaining is true, then stats will be published that expose
    /// the number of resources remaining until the circuit breakers open. If
    /// not specified, the default is false.
    ///
    /// .. note::
    ///
    ///    If a retry budget is used in lieu of the max_retries circuit breaker,
    ///    the remaining retry resources remaining will not be tracked.
    public var trackRemaining: Bool = false

    /// The maximum number of connection pools per cluster that Envoy will concurrently support at
    /// once. If not specified, the default is unlimited. Set this for clusters which create a
    /// large number of connection pools. See
    /// :ref:`Circuit Breaking <arch_overview_circuit_break_cluster_maximum_connection_pools>` for
    /// more details.
    public var maxConnectionPools: SwiftProtobuf.Google_Protobuf_UInt32Value {
      get {return _maxConnectionPools ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
      set {_maxConnectionPools = newValue}
    }
    /// Returns true if `maxConnectionPools` has been explicitly set.
    public var hasMaxConnectionPools: Bool {return self._maxConnectionPools != nil}
    /// Clears the value of `maxConnectionPools`. Subsequent reads from it will return its default value.
    public mutating func clearMaxConnectionPools() {self._maxConnectionPools = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public struct RetryBudget {
      // SwiftProtobuf.Message conformance is added in an extension below. See the
      // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
      // methods supported on all messages.

      /// Specifies the limit on concurrent retries as a percentage of the sum of active requests and
      /// active pending requests. For example, if there are 100 active requests and the
      /// budget_percent is set to 25, there may be 25 active retries.
      ///
      /// This parameter is optional. Defaults to 20%.
      public var budgetPercent: Envoy_Type_V3_Percent {
        get {return _budgetPercent ?? Envoy_Type_V3_Percent()}
        set {_budgetPercent = newValue}
      }
      /// Returns true if `budgetPercent` has been explicitly set.
      public var hasBudgetPercent: Bool {return self._budgetPercent != nil}
      /// Clears the value of `budgetPercent`. Subsequent reads from it will return its default value.
      public mutating func clearBudgetPercent() {self._budgetPercent = nil}

      /// Specifies the minimum retry concurrency allowed for the retry budget. The limit on the
      /// number of active retries may never go below this number.
      ///
      /// This parameter is optional. Defaults to 3.
      public var minRetryConcurrency: SwiftProtobuf.Google_Protobuf_UInt32Value {
        get {return _minRetryConcurrency ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
        set {_minRetryConcurrency = newValue}
      }
      /// Returns true if `minRetryConcurrency` has been explicitly set.
      public var hasMinRetryConcurrency: Bool {return self._minRetryConcurrency != nil}
      /// Clears the value of `minRetryConcurrency`. Subsequent reads from it will return its default value.
      public mutating func clearMinRetryConcurrency() {self._minRetryConcurrency = nil}

      public var unknownFields = SwiftProtobuf.UnknownStorage()

      public init() {}

      fileprivate var _budgetPercent: Envoy_Type_V3_Percent? = nil
      fileprivate var _minRetryConcurrency: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    }

    public init() {}

    fileprivate var _maxConnections: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    fileprivate var _maxPendingRequests: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    fileprivate var _maxRequests: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    fileprivate var _maxRetries: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
    fileprivate var _retryBudget: Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds.RetryBudget? = nil
    fileprivate var _maxConnectionPools: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.cluster.v4alpha"

extension Envoy_Config_Cluster_V4alpha_CircuitBreakers: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CircuitBreakers"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "thresholds"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.thresholds) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.thresholds.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.thresholds, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Cluster_V4alpha_CircuitBreakers, rhs: Envoy_Config_Cluster_V4alpha_CircuitBreakers) -> Bool {
    if lhs.thresholds != rhs.thresholds {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Cluster_V4alpha_CircuitBreakers.protoMessageName + ".Thresholds"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "priority"),
    2: .standard(proto: "max_connections"),
    3: .standard(proto: "max_pending_requests"),
    4: .standard(proto: "max_requests"),
    5: .standard(proto: "max_retries"),
    8: .standard(proto: "retry_budget"),
    6: .standard(proto: "track_remaining"),
    7: .standard(proto: "max_connection_pools"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.priority) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._maxConnections) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._maxPendingRequests) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._maxRequests) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._maxRetries) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.trackRemaining) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._maxConnectionPools) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._retryBudget) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.priority != .default {
      try visitor.visitSingularEnumField(value: self.priority, fieldNumber: 1)
    }
    if let v = self._maxConnections {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._maxPendingRequests {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._maxRequests {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._maxRetries {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if self.trackRemaining != false {
      try visitor.visitSingularBoolField(value: self.trackRemaining, fieldNumber: 6)
    }
    if let v = self._maxConnectionPools {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if let v = self._retryBudget {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds, rhs: Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds) -> Bool {
    if lhs.priority != rhs.priority {return false}
    if lhs._maxConnections != rhs._maxConnections {return false}
    if lhs._maxPendingRequests != rhs._maxPendingRequests {return false}
    if lhs._maxRequests != rhs._maxRequests {return false}
    if lhs._maxRetries != rhs._maxRetries {return false}
    if lhs._retryBudget != rhs._retryBudget {return false}
    if lhs.trackRemaining != rhs.trackRemaining {return false}
    if lhs._maxConnectionPools != rhs._maxConnectionPools {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds.RetryBudget: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds.protoMessageName + ".RetryBudget"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "budget_percent"),
    2: .standard(proto: "min_retry_concurrency"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._budgetPercent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._minRetryConcurrency) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._budgetPercent {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._minRetryConcurrency {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds.RetryBudget, rhs: Envoy_Config_Cluster_V4alpha_CircuitBreakers.Thresholds.RetryBudget) -> Bool {
    if lhs._budgetPercent != rhs._budgetPercent {return false}
    if lhs._minRetryConcurrency != rhs._minRetryConcurrency {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
