// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/admin/v4alpha/clusters.proto
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

/// Admin endpoint uses this wrapper for `/clusters` to display cluster status information.
/// See :ref:`/clusters <operations_admin_interface_clusters>` for more information.
public struct Envoy_Admin_V4alpha_Clusters {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Mapping from cluster name to each cluster's status.
  public var clusterStatuses: [Envoy_Admin_V4alpha_ClusterStatus] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Details an individual cluster's current status.
/// [#next-free-field: 7]
public struct Envoy_Admin_V4alpha_ClusterStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Name of the cluster.
  public var name: String = String()

  /// Denotes whether this cluster was added via API or configured statically.
  public var addedViaApi: Bool = false

  /// The success rate threshold used in the last interval.
  /// If
  /// :ref:`outlier_detection.split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is *false*, all errors: externally and locally generated were used to calculate the threshold.
  /// If
  /// :ref:`outlier_detection.split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is *true*, only externally generated errors were used to calculate the threshold.
  /// The threshold is used to eject hosts based on their success rate. See
  /// :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for details.
  ///
  /// Note: this field may be omitted in any of the three following cases:
  ///
  /// 1. There were not enough hosts with enough request volume to proceed with success rate based
  ///    outlier ejection.
  /// 2. The threshold is computed to be < 0 because a negative value implies that there was no
  ///    threshold for that interval.
  /// 3. Outlier detection is not enabled for this cluster.
  public var successRateEjectionThreshold: Envoy_Type_V3_Percent {
    get {return _successRateEjectionThreshold ?? Envoy_Type_V3_Percent()}
    set {_successRateEjectionThreshold = newValue}
  }
  /// Returns true if `successRateEjectionThreshold` has been explicitly set.
  public var hasSuccessRateEjectionThreshold: Bool {return self._successRateEjectionThreshold != nil}
  /// Clears the value of `successRateEjectionThreshold`. Subsequent reads from it will return its default value.
  public mutating func clearSuccessRateEjectionThreshold() {self._successRateEjectionThreshold = nil}

  /// Mapping from host address to the host's current status.
  public var hostStatuses: [Envoy_Admin_V4alpha_HostStatus] = []

  /// The success rate threshold used in the last interval when only locally originated failures were
  /// taken into account and externally originated errors were treated as success.
  /// This field should be interpreted only when
  /// :ref:`outlier_detection.split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is *true*. The threshold is used to eject hosts based on their success rate.
  /// See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for
  /// details.
  ///
  /// Note: this field may be omitted in any of the three following cases:
  ///
  /// 1. There were not enough hosts with enough request volume to proceed with success rate based
  ///    outlier ejection.
  /// 2. The threshold is computed to be < 0 because a negative value implies that there was no
  ///    threshold for that interval.
  /// 3. Outlier detection is not enabled for this cluster.
  public var localOriginSuccessRateEjectionThreshold: Envoy_Type_V3_Percent {
    get {return _localOriginSuccessRateEjectionThreshold ?? Envoy_Type_V3_Percent()}
    set {_localOriginSuccessRateEjectionThreshold = newValue}
  }
  /// Returns true if `localOriginSuccessRateEjectionThreshold` has been explicitly set.
  public var hasLocalOriginSuccessRateEjectionThreshold: Bool {return self._localOriginSuccessRateEjectionThreshold != nil}
  /// Clears the value of `localOriginSuccessRateEjectionThreshold`. Subsequent reads from it will return its default value.
  public mutating func clearLocalOriginSuccessRateEjectionThreshold() {self._localOriginSuccessRateEjectionThreshold = nil}

  /// :ref:`Circuit breaking <arch_overview_circuit_break>` settings of the cluster.
  public var circuitBreakers: Envoy_Config_Cluster_V4alpha_CircuitBreakers {
    get {return _circuitBreakers ?? Envoy_Config_Cluster_V4alpha_CircuitBreakers()}
    set {_circuitBreakers = newValue}
  }
  /// Returns true if `circuitBreakers` has been explicitly set.
  public var hasCircuitBreakers: Bool {return self._circuitBreakers != nil}
  /// Clears the value of `circuitBreakers`. Subsequent reads from it will return its default value.
  public mutating func clearCircuitBreakers() {self._circuitBreakers = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _successRateEjectionThreshold: Envoy_Type_V3_Percent? = nil
  fileprivate var _localOriginSuccessRateEjectionThreshold: Envoy_Type_V3_Percent? = nil
  fileprivate var _circuitBreakers: Envoy_Config_Cluster_V4alpha_CircuitBreakers? = nil
}

/// Current state of a particular host.
/// [#next-free-field: 10]
public struct Envoy_Admin_V4alpha_HostStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Address of this host.
  public var address: Envoy_Config_Core_V4alpha_Address {
    get {return _storage._address ?? Envoy_Config_Core_V4alpha_Address()}
    set {_uniqueStorage()._address = newValue}
  }
  /// Returns true if `address` has been explicitly set.
  public var hasAddress: Bool {return _storage._address != nil}
  /// Clears the value of `address`. Subsequent reads from it will return its default value.
  public mutating func clearAddress() {_uniqueStorage()._address = nil}

  /// List of stats specific to this host.
  public var stats: [Envoy_Admin_V4alpha_SimpleMetric] {
    get {return _storage._stats}
    set {_uniqueStorage()._stats = newValue}
  }

  /// The host's current health status.
  public var healthStatus: Envoy_Admin_V4alpha_HostHealthStatus {
    get {return _storage._healthStatus ?? Envoy_Admin_V4alpha_HostHealthStatus()}
    set {_uniqueStorage()._healthStatus = newValue}
  }
  /// Returns true if `healthStatus` has been explicitly set.
  public var hasHealthStatus: Bool {return _storage._healthStatus != nil}
  /// Clears the value of `healthStatus`. Subsequent reads from it will return its default value.
  public mutating func clearHealthStatus() {_uniqueStorage()._healthStatus = nil}

  /// Request success rate for this host over the last calculated interval.
  /// If
  /// :ref:`outlier_detection.split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is *false*, all errors: externally and locally generated were used in success rate
  /// calculation. If
  /// :ref:`outlier_detection.split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is *true*, only externally generated errors were used in success rate calculation.
  /// See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for
  /// details.
  ///
  /// Note: the message will not be present if host did not have enough request volume to calculate
  /// success rate or the cluster did not have enough hosts to run through success rate outlier
  /// ejection.
  public var successRate: Envoy_Type_V3_Percent {
    get {return _storage._successRate ?? Envoy_Type_V3_Percent()}
    set {_uniqueStorage()._successRate = newValue}
  }
  /// Returns true if `successRate` has been explicitly set.
  public var hasSuccessRate: Bool {return _storage._successRate != nil}
  /// Clears the value of `successRate`. Subsequent reads from it will return its default value.
  public mutating func clearSuccessRate() {_uniqueStorage()._successRate = nil}

  /// The host's weight. If not configured, the value defaults to 1.
  public var weight: UInt32 {
    get {return _storage._weight}
    set {_uniqueStorage()._weight = newValue}
  }

  /// The hostname of the host, if applicable.
  public var hostname: String {
    get {return _storage._hostname}
    set {_uniqueStorage()._hostname = newValue}
  }

  /// The host's priority. If not configured, the value defaults to 0 (highest priority).
  public var priority: UInt32 {
    get {return _storage._priority}
    set {_uniqueStorage()._priority = newValue}
  }

  /// Request success rate for this host over the last calculated
  /// interval when only locally originated errors are taken into account and externally originated
  /// errors were treated as success.
  /// This field should be interpreted only when
  /// :ref:`outlier_detection.split_external_local_origin_errors<envoy_api_field_config.cluster.v4alpha.OutlierDetection.split_external_local_origin_errors>`
  /// is *true*.
  /// See :ref:`Cluster outlier detection <arch_overview_outlier_detection>` documentation for
  /// details.
  ///
  /// Note: the message will not be present if host did not have enough request volume to calculate
  /// success rate or the cluster did not have enough hosts to run through success rate outlier
  /// ejection.
  public var localOriginSuccessRate: Envoy_Type_V3_Percent {
    get {return _storage._localOriginSuccessRate ?? Envoy_Type_V3_Percent()}
    set {_uniqueStorage()._localOriginSuccessRate = newValue}
  }
  /// Returns true if `localOriginSuccessRate` has been explicitly set.
  public var hasLocalOriginSuccessRate: Bool {return _storage._localOriginSuccessRate != nil}
  /// Clears the value of `localOriginSuccessRate`. Subsequent reads from it will return its default value.
  public mutating func clearLocalOriginSuccessRate() {_uniqueStorage()._localOriginSuccessRate = nil}

  /// locality of the host.
  public var locality: Envoy_Config_Core_V4alpha_Locality {
    get {return _storage._locality ?? Envoy_Config_Core_V4alpha_Locality()}
    set {_uniqueStorage()._locality = newValue}
  }
  /// Returns true if `locality` has been explicitly set.
  public var hasLocality: Bool {return _storage._locality != nil}
  /// Clears the value of `locality`. Subsequent reads from it will return its default value.
  public mutating func clearLocality() {_uniqueStorage()._locality = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Health status for a host.
/// [#next-free-field: 7]
public struct Envoy_Admin_V4alpha_HostHealthStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The host is currently failing active health checks.
  public var failedActiveHealthCheck: Bool = false

  /// The host is currently considered an outlier and has been ejected.
  public var failedOutlierCheck: Bool = false

  /// The host is currently being marked as degraded through active health checking.
  public var failedActiveDegradedCheck: Bool = false

  /// The host has been removed from service discovery, but is being stabilized due to active
  /// health checking.
  public var pendingDynamicRemoval: Bool = false

  /// The host has not yet been health checked.
  public var pendingActiveHc: Bool = false

  /// Health status as reported by EDS. Note: only HEALTHY and UNHEALTHY are currently supported
  /// here.
  /// [#comment:TODO(mrice32): pipe through remaining EDS health status possibilities.]
  public var edsHealthStatus: Envoy_Config_Core_V4alpha_HealthStatus = .unknown

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.admin.v4alpha"

extension Envoy_Admin_V4alpha_Clusters: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Clusters"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cluster_statuses"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.clusterStatuses) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.clusterStatuses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.clusterStatuses, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_Clusters, rhs: Envoy_Admin_V4alpha_Clusters) -> Bool {
    if lhs.clusterStatuses != rhs.clusterStatuses {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Admin_V4alpha_ClusterStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClusterStatus"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "added_via_api"),
    3: .standard(proto: "success_rate_ejection_threshold"),
    4: .standard(proto: "host_statuses"),
    5: .standard(proto: "local_origin_success_rate_ejection_threshold"),
    6: .standard(proto: "circuit_breakers"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.addedViaApi) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._successRateEjectionThreshold) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.hostStatuses) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._localOriginSuccessRateEjectionThreshold) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._circuitBreakers) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.addedViaApi != false {
      try visitor.visitSingularBoolField(value: self.addedViaApi, fieldNumber: 2)
    }
    if let v = self._successRateEjectionThreshold {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.hostStatuses.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.hostStatuses, fieldNumber: 4)
    }
    if let v = self._localOriginSuccessRateEjectionThreshold {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._circuitBreakers {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_ClusterStatus, rhs: Envoy_Admin_V4alpha_ClusterStatus) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.addedViaApi != rhs.addedViaApi {return false}
    if lhs._successRateEjectionThreshold != rhs._successRateEjectionThreshold {return false}
    if lhs.hostStatuses != rhs.hostStatuses {return false}
    if lhs._localOriginSuccessRateEjectionThreshold != rhs._localOriginSuccessRateEjectionThreshold {return false}
    if lhs._circuitBreakers != rhs._circuitBreakers {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Admin_V4alpha_HostStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HostStatus"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .same(proto: "stats"),
    3: .standard(proto: "health_status"),
    4: .standard(proto: "success_rate"),
    5: .same(proto: "weight"),
    6: .same(proto: "hostname"),
    7: .same(proto: "priority"),
    8: .standard(proto: "local_origin_success_rate"),
    9: .same(proto: "locality"),
  ]

  fileprivate class _StorageClass {
    var _address: Envoy_Config_Core_V4alpha_Address? = nil
    var _stats: [Envoy_Admin_V4alpha_SimpleMetric] = []
    var _healthStatus: Envoy_Admin_V4alpha_HostHealthStatus? = nil
    var _successRate: Envoy_Type_V3_Percent? = nil
    var _weight: UInt32 = 0
    var _hostname: String = String()
    var _priority: UInt32 = 0
    var _localOriginSuccessRate: Envoy_Type_V3_Percent? = nil
    var _locality: Envoy_Config_Core_V4alpha_Locality? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _address = source._address
      _stats = source._stats
      _healthStatus = source._healthStatus
      _successRate = source._successRate
      _weight = source._weight
      _hostname = source._hostname
      _priority = source._priority
      _localOriginSuccessRate = source._localOriginSuccessRate
      _locality = source._locality
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
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._address) }()
        case 2: try { try decoder.decodeRepeatedMessageField(value: &_storage._stats) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._healthStatus) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._successRate) }()
        case 5: try { try decoder.decodeSingularUInt32Field(value: &_storage._weight) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._hostname) }()
        case 7: try { try decoder.decodeSingularUInt32Field(value: &_storage._priority) }()
        case 8: try { try decoder.decodeSingularMessageField(value: &_storage._localOriginSuccessRate) }()
        case 9: try { try decoder.decodeSingularMessageField(value: &_storage._locality) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._address {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._stats.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._stats, fieldNumber: 2)
      }
      if let v = _storage._healthStatus {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
      if let v = _storage._successRate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if _storage._weight != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._weight, fieldNumber: 5)
      }
      if !_storage._hostname.isEmpty {
        try visitor.visitSingularStringField(value: _storage._hostname, fieldNumber: 6)
      }
      if _storage._priority != 0 {
        try visitor.visitSingularUInt32Field(value: _storage._priority, fieldNumber: 7)
      }
      if let v = _storage._localOriginSuccessRate {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
      }
      if let v = _storage._locality {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_HostStatus, rhs: Envoy_Admin_V4alpha_HostStatus) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._address != rhs_storage._address {return false}
        if _storage._stats != rhs_storage._stats {return false}
        if _storage._healthStatus != rhs_storage._healthStatus {return false}
        if _storage._successRate != rhs_storage._successRate {return false}
        if _storage._weight != rhs_storage._weight {return false}
        if _storage._hostname != rhs_storage._hostname {return false}
        if _storage._priority != rhs_storage._priority {return false}
        if _storage._localOriginSuccessRate != rhs_storage._localOriginSuccessRate {return false}
        if _storage._locality != rhs_storage._locality {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Admin_V4alpha_HostHealthStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HostHealthStatus"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "failed_active_health_check"),
    2: .standard(proto: "failed_outlier_check"),
    4: .standard(proto: "failed_active_degraded_check"),
    5: .standard(proto: "pending_dynamic_removal"),
    6: .standard(proto: "pending_active_hc"),
    3: .standard(proto: "eds_health_status"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBoolField(value: &self.failedActiveHealthCheck) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.failedOutlierCheck) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.edsHealthStatus) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.failedActiveDegradedCheck) }()
      case 5: try { try decoder.decodeSingularBoolField(value: &self.pendingDynamicRemoval) }()
      case 6: try { try decoder.decodeSingularBoolField(value: &self.pendingActiveHc) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.failedActiveHealthCheck != false {
      try visitor.visitSingularBoolField(value: self.failedActiveHealthCheck, fieldNumber: 1)
    }
    if self.failedOutlierCheck != false {
      try visitor.visitSingularBoolField(value: self.failedOutlierCheck, fieldNumber: 2)
    }
    if self.edsHealthStatus != .unknown {
      try visitor.visitSingularEnumField(value: self.edsHealthStatus, fieldNumber: 3)
    }
    if self.failedActiveDegradedCheck != false {
      try visitor.visitSingularBoolField(value: self.failedActiveDegradedCheck, fieldNumber: 4)
    }
    if self.pendingDynamicRemoval != false {
      try visitor.visitSingularBoolField(value: self.pendingDynamicRemoval, fieldNumber: 5)
    }
    if self.pendingActiveHc != false {
      try visitor.visitSingularBoolField(value: self.pendingActiveHc, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_HostHealthStatus, rhs: Envoy_Admin_V4alpha_HostHealthStatus) -> Bool {
    if lhs.failedActiveHealthCheck != rhs.failedActiveHealthCheck {return false}
    if lhs.failedOutlierCheck != rhs.failedOutlierCheck {return false}
    if lhs.failedActiveDegradedCheck != rhs.failedActiveDegradedCheck {return false}
    if lhs.pendingDynamicRemoval != rhs.pendingDynamicRemoval {return false}
    if lhs.pendingActiveHc != rhs.pendingActiveHc {return false}
    if lhs.edsHealthStatus != rhs.edsHealthStatus {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}