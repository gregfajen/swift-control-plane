// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/endpoint/v3/endpoint_components.proto
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

/// Upstream host identifier.
public struct Envoy_Config_Endpoint_V3_Endpoint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The upstream host address.
  ///
  /// .. attention::
  ///
  ///   The form of host address depends on the given cluster type. For STATIC or EDS,
  ///   it is expected to be a direct IP address (or something resolvable by the
  ///   specified :ref:`resolver <envoy_api_field_config.core.v3.SocketAddress.resolver_name>`
  ///   in the Address). For LOGICAL or STRICT DNS, it is expected to be hostname,
  ///   and will be resolved via DNS.
  public var address: Envoy_Config_Core_V3_Address {
    get {return _address ?? Envoy_Config_Core_V3_Address()}
    set {_address = newValue}
  }
  /// Returns true if `address` has been explicitly set.
  public var hasAddress: Bool {return self._address != nil}
  /// Clears the value of `address`. Subsequent reads from it will return its default value.
  public mutating func clearAddress() {self._address = nil}

  /// The optional health check configuration is used as configuration for the
  /// health checker to contact the health checked host.
  ///
  /// .. attention::
  ///
  ///   This takes into effect only for upstream clusters with
  ///   :ref:`active health checking <arch_overview_health_checking>` enabled.
  public var healthCheckConfig: Envoy_Config_Endpoint_V3_Endpoint.HealthCheckConfig {
    get {return _healthCheckConfig ?? Envoy_Config_Endpoint_V3_Endpoint.HealthCheckConfig()}
    set {_healthCheckConfig = newValue}
  }
  /// Returns true if `healthCheckConfig` has been explicitly set.
  public var hasHealthCheckConfig: Bool {return self._healthCheckConfig != nil}
  /// Clears the value of `healthCheckConfig`. Subsequent reads from it will return its default value.
  public mutating func clearHealthCheckConfig() {self._healthCheckConfig = nil}

  /// The hostname associated with this endpoint. This hostname is not used for routing or address
  /// resolution. If provided, it will be associated with the endpoint, and can be used for features
  /// that require a hostname, like
  /// :ref:`auto_host_rewrite <envoy_api_field_config.route.v3.RouteAction.auto_host_rewrite>`.
  public var hostname: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The optional health check configuration.
  public struct HealthCheckConfig {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Optional alternative health check port value.
    ///
    /// By default the health check address port of an upstream host is the same
    /// as the host's serving address port. This provides an alternative health
    /// check port. Setting this with a non-zero value allows an upstream host
    /// to have different health check address port.
    public var portValue: UInt32 = 0

    /// By default, the host header for L7 health checks is controlled by cluster level configuration
    /// (see: :ref:`host <envoy_api_field_config.core.v3.HealthCheck.HttpHealthCheck.host>` and
    /// :ref:`authority <envoy_api_field_config.core.v3.HealthCheck.GrpcHealthCheck.authority>`). Setting this
    /// to a non-empty value allows overriding the cluster level configuration for a specific
    /// endpoint.
    public var hostname: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _address: Envoy_Config_Core_V3_Address? = nil
  fileprivate var _healthCheckConfig: Envoy_Config_Endpoint_V3_Endpoint.HealthCheckConfig? = nil
}

/// An Endpoint that Envoy can route traffic to.
/// [#next-free-field: 6]
public struct Envoy_Config_Endpoint_V3_LbEndpoint {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Upstream host identifier or a named reference.
  public var hostIdentifier: Envoy_Config_Endpoint_V3_LbEndpoint.OneOf_HostIdentifier? = nil

  public var endpoint: Envoy_Config_Endpoint_V3_Endpoint {
    get {
      if case .endpoint(let v)? = hostIdentifier {return v}
      return Envoy_Config_Endpoint_V3_Endpoint()
    }
    set {hostIdentifier = .endpoint(newValue)}
  }

  /// [#not-implemented-hide:]
  public var endpointName: String {
    get {
      if case .endpointName(let v)? = hostIdentifier {return v}
      return String()
    }
    set {hostIdentifier = .endpointName(newValue)}
  }

  /// Optional health status when known and supplied by EDS server.
  public var healthStatus: Envoy_Config_Core_V3_HealthStatus = .unknown

  /// The endpoint metadata specifies values that may be used by the load
  /// balancer to select endpoints in a cluster for a given request. The filter
  /// name should be specified as *envoy.lb*. An example boolean key-value pair
  /// is *canary*, providing the optional canary status of the upstream host.
  /// This may be matched against in a route's
  /// :ref:`RouteAction <envoy_api_msg_config.route.v3.RouteAction>` metadata_match field
  /// to subset the endpoints considered in cluster load balancing.
  public var metadata: Envoy_Config_Core_V3_Metadata {
    get {return _metadata ?? Envoy_Config_Core_V3_Metadata()}
    set {_metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  public var hasMetadata: Bool {return self._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  public mutating func clearMetadata() {self._metadata = nil}

  /// The optional load balancing weight of the upstream host; at least 1.
  /// Envoy uses the load balancing weight in some of the built in load
  /// balancers. The load balancing weight for an endpoint is divided by the sum
  /// of the weights of all endpoints in the endpoint's locality to produce a
  /// percentage of traffic for the endpoint. This percentage is then further
  /// weighted by the endpoint's locality's load balancing weight from
  /// LocalityLbEndpoints. If unspecified, each host is presumed to have equal
  /// weight in a locality. The sum of the weights of all endpoints in the
  /// endpoint's locality must not exceed uint32_t maximal value (4294967295).
  public var loadBalancingWeight: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _loadBalancingWeight ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_loadBalancingWeight = newValue}
  }
  /// Returns true if `loadBalancingWeight` has been explicitly set.
  public var hasLoadBalancingWeight: Bool {return self._loadBalancingWeight != nil}
  /// Clears the value of `loadBalancingWeight`. Subsequent reads from it will return its default value.
  public mutating func clearLoadBalancingWeight() {self._loadBalancingWeight = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Upstream host identifier or a named reference.
  public enum OneOf_HostIdentifier: Equatable {
    case endpoint(Envoy_Config_Endpoint_V3_Endpoint)
    /// [#not-implemented-hide:]
    case endpointName(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Endpoint_V3_LbEndpoint.OneOf_HostIdentifier, rhs: Envoy_Config_Endpoint_V3_LbEndpoint.OneOf_HostIdentifier) -> Bool {
      switch (lhs, rhs) {
      case (.endpoint(let l), .endpoint(let r)): return l == r
      case (.endpointName(let l), .endpointName(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _metadata: Envoy_Config_Core_V3_Metadata? = nil
  fileprivate var _loadBalancingWeight: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
}

/// A group of endpoints belonging to a Locality.
/// One can have multiple LocalityLbEndpoints for a locality, but this is
/// generally only done if the different groups need to have different load
/// balancing weights or different priorities.
/// [#next-free-field: 7]
public struct Envoy_Config_Endpoint_V3_LocalityLbEndpoints {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Identifies location of where the upstream hosts run.
  public var locality: Envoy_Config_Core_V3_Locality {
    get {return _locality ?? Envoy_Config_Core_V3_Locality()}
    set {_locality = newValue}
  }
  /// Returns true if `locality` has been explicitly set.
  public var hasLocality: Bool {return self._locality != nil}
  /// Clears the value of `locality`. Subsequent reads from it will return its default value.
  public mutating func clearLocality() {self._locality = nil}

  /// The group of endpoints belonging to the locality specified.
  public var lbEndpoints: [Envoy_Config_Endpoint_V3_LbEndpoint] = []

  /// Optional: Per priority/region/zone/sub_zone weight; at least 1. The load
  /// balancing weight for a locality is divided by the sum of the weights of all
  /// localities  at the same priority level to produce the effective percentage
  /// of traffic for the locality. The sum of the weights of all localities at
  /// the same priority level must not exceed uint32_t maximal value (4294967295).
  ///
  /// Locality weights are only considered when :ref:`locality weighted load
  /// balancing <arch_overview_load_balancing_locality_weighted_lb>` is
  /// configured. These weights are ignored otherwise. If no weights are
  /// specified when locality weighted load balancing is enabled, the locality is
  /// assigned no load.
  public var loadBalancingWeight: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _loadBalancingWeight ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_loadBalancingWeight = newValue}
  }
  /// Returns true if `loadBalancingWeight` has been explicitly set.
  public var hasLoadBalancingWeight: Bool {return self._loadBalancingWeight != nil}
  /// Clears the value of `loadBalancingWeight`. Subsequent reads from it will return its default value.
  public mutating func clearLoadBalancingWeight() {self._loadBalancingWeight = nil}

  /// Optional: the priority for this LocalityLbEndpoints. If unspecified this will
  /// default to the highest priority (0).
  ///
  /// Under usual circumstances, Envoy will only select endpoints for the highest
  /// priority (0). In the event all endpoints for a particular priority are
  /// unavailable/unhealthy, Envoy will fail over to selecting endpoints for the
  /// next highest priority group.
  ///
  /// Priorities should range from 0 (highest) to N (lowest) without skipping.
  public var priority: UInt32 = 0

  /// Optional: Per locality proximity value which indicates how close this
  /// locality is from the source locality. This value only provides ordering
  /// information (lower the value, closer it is to the source locality).
  /// This will be consumed by load balancing schemes that need proximity order
  /// to determine where to route the requests.
  /// [#not-implemented-hide:]
  public var proximity: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _proximity ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_proximity = newValue}
  }
  /// Returns true if `proximity` has been explicitly set.
  public var hasProximity: Bool {return self._proximity != nil}
  /// Clears the value of `proximity`. Subsequent reads from it will return its default value.
  public mutating func clearProximity() {self._proximity = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _locality: Envoy_Config_Core_V3_Locality? = nil
  fileprivate var _loadBalancingWeight: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _proximity: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.endpoint.v3"

extension Envoy_Config_Endpoint_V3_Endpoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Endpoint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
    2: .standard(proto: "health_check_config"),
    3: .same(proto: "hostname"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._address)
      case 2: try decoder.decodeSingularMessageField(value: &self._healthCheckConfig)
      case 3: try decoder.decodeSingularStringField(value: &self.hostname)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._address {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._healthCheckConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.hostname.isEmpty {
      try visitor.visitSingularStringField(value: self.hostname, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Endpoint_V3_Endpoint, rhs: Envoy_Config_Endpoint_V3_Endpoint) -> Bool {
    if lhs._address != rhs._address {return false}
    if lhs._healthCheckConfig != rhs._healthCheckConfig {return false}
    if lhs.hostname != rhs.hostname {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Endpoint_V3_Endpoint.HealthCheckConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Endpoint_V3_Endpoint.protoMessageName + ".HealthCheckConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "port_value"),
    2: .same(proto: "hostname"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.portValue)
      case 2: try decoder.decodeSingularStringField(value: &self.hostname)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.portValue != 0 {
      try visitor.visitSingularUInt32Field(value: self.portValue, fieldNumber: 1)
    }
    if !self.hostname.isEmpty {
      try visitor.visitSingularStringField(value: self.hostname, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Endpoint_V3_Endpoint.HealthCheckConfig, rhs: Envoy_Config_Endpoint_V3_Endpoint.HealthCheckConfig) -> Bool {
    if lhs.portValue != rhs.portValue {return false}
    if lhs.hostname != rhs.hostname {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Endpoint_V3_LbEndpoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LbEndpoint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "endpoint"),
    5: .standard(proto: "endpoint_name"),
    2: .standard(proto: "health_status"),
    3: .same(proto: "metadata"),
    4: .standard(proto: "load_balancing_weight"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        var v: Envoy_Config_Endpoint_V3_Endpoint?
        if let current = self.hostIdentifier {
          try decoder.handleConflictingOneOf()
          if case .endpoint(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.hostIdentifier = .endpoint(v)}
      case 2: try decoder.decodeSingularEnumField(value: &self.healthStatus)
      case 3: try decoder.decodeSingularMessageField(value: &self._metadata)
      case 4: try decoder.decodeSingularMessageField(value: &self._loadBalancingWeight)
      case 5:
        if self.hostIdentifier != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.hostIdentifier = .endpointName(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .endpoint(let v)? = self.hostIdentifier {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.healthStatus != .unknown {
      try visitor.visitSingularEnumField(value: self.healthStatus, fieldNumber: 2)
    }
    if let v = self._metadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._loadBalancingWeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if case .endpointName(let v)? = self.hostIdentifier {
      try visitor.visitSingularStringField(value: v, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Endpoint_V3_LbEndpoint, rhs: Envoy_Config_Endpoint_V3_LbEndpoint) -> Bool {
    if lhs.hostIdentifier != rhs.hostIdentifier {return false}
    if lhs.healthStatus != rhs.healthStatus {return false}
    if lhs._metadata != rhs._metadata {return false}
    if lhs._loadBalancingWeight != rhs._loadBalancingWeight {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Endpoint_V3_LocalityLbEndpoints: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LocalityLbEndpoints"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "locality"),
    2: .standard(proto: "lb_endpoints"),
    3: .standard(proto: "load_balancing_weight"),
    5: .same(proto: "priority"),
    6: .same(proto: "proximity"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._locality)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.lbEndpoints)
      case 3: try decoder.decodeSingularMessageField(value: &self._loadBalancingWeight)
      case 5: try decoder.decodeSingularUInt32Field(value: &self.priority)
      case 6: try decoder.decodeSingularMessageField(value: &self._proximity)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._locality {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.lbEndpoints.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.lbEndpoints, fieldNumber: 2)
    }
    if let v = self._loadBalancingWeight {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if self.priority != 0 {
      try visitor.visitSingularUInt32Field(value: self.priority, fieldNumber: 5)
    }
    if let v = self._proximity {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Endpoint_V3_LocalityLbEndpoints, rhs: Envoy_Config_Endpoint_V3_LocalityLbEndpoints) -> Bool {
    if lhs._locality != rhs._locality {return false}
    if lhs.lbEndpoints != rhs.lbEndpoints {return false}
    if lhs._loadBalancingWeight != rhs._loadBalancingWeight {return false}
    if lhs.priority != rhs.priority {return false}
    if lhs._proximity != rhs._proximity {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
