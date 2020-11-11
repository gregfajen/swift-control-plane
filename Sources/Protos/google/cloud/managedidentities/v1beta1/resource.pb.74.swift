// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/managedidentities/v1beta1/resource.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 Google LLC.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

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

/// Represents a managed Microsoft Active Directory domain.
public struct Google_Cloud_Managedidentities_V1beta1_Domain {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The unique name of the domain using the form:
  /// `projects/{project_id}/locations/global/domains/{domain_name}`.
  public var name: String = String()

  /// Optional. Resource labels that can contain user-provided metadata.
  public var labels: Dictionary<String,String> = [:]

  /// Optional. The full names of the Google Compute Engine
  /// [networks](/compute/docs/networks-and-firewalls#networks) the domain
  /// instance is connected to. Networks can be added using UpdateDomain.
  /// The domain is only available on networks listed in `authorized_networks`.
  /// If CIDR subnets overlap between networks, domain creation will fail.
  public var authorizedNetworks: [String] = []

  /// Required. The CIDR range of internal addresses that are reserved for this
  /// domain. Reserved networks must be /24 or larger. Ranges must be
  /// unique and non-overlapping with existing subnets in
  /// [Domain].[authorized_networks].
  public var reservedIpRange: String = String()

  /// Required. Locations where domain needs to be provisioned.
  /// [regions][compute/docs/regions-zones/]
  /// e.g. us-west1 or us-east4
  /// Service supports up to 4 locations at once. Each location will use a /26
  /// block.
  public var locations: [String] = []

  /// Optional. The name of delegated administrator account used to perform
  /// Active Directory operations. If not specified, `setupadmin` will be used.
  public var admin: String = String()

  /// Output only. The fully-qualified domain name of the exposed domain used by
  /// clients to connect to the service. Similar to what would be chosen for an
  /// Active Directory set up on an internal network.
  public var fqdn: String = String()

  /// Output only. The time the instance was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. The last update time.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  /// Output only. The current state of this domain.
  public var state: Google_Cloud_Managedidentities_V1beta1_Domain.State = .unspecified

  /// Output only. Additional information about the current status of this
  /// domain, if available.
  public var statusMessage: String = String()

  /// Output only. The current trusts associated with the domain.
  public var trusts: [Google_Cloud_Managedidentities_V1beta1_Trust] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Represents the different states of a managed domain.
  public enum State: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not set.
    case unspecified // = 0

    /// The domain is being created.
    case creating // = 1

    /// The domain has been created and is fully usable.
    case ready // = 2

    /// The domain's configuration is being updated.
    case updating // = 3

    /// The domain is being deleted.
    case deleting // = 4

    /// The domain is being repaired and may be unusable. Details
    /// can be found in the `status_message` field.
    case repairing // = 5

    /// The domain is undergoing maintenance.
    case performingMaintenance // = 6

    /// The domain is not serving requests.
    case unavailable // = 7
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .creating
      case 2: self = .ready
      case 3: self = .updating
      case 4: self = .deleting
      case 5: self = .repairing
      case 6: self = .performingMaintenance
      case 7: self = .unavailable
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .creating: return 1
      case .ready: return 2
      case .updating: return 3
      case .deleting: return 4
      case .repairing: return 5
      case .performingMaintenance: return 6
      case .unavailable: return 7
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Managedidentities_V1beta1_Domain.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Managedidentities_V1beta1_Domain.State] = [
    .unspecified,
    .creating,
    .ready,
    .updating,
    .deleting,
    .repairing,
    .performingMaintenance,
    .unavailable,
  ]
}

#endif  // swift(>=4.2)

/// Represents a relationship between two domains. This allows a controller in
/// one domain to authenticate a user in another domain.
public struct Google_Cloud_Managedidentities_V1beta1_Trust {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The fully qualified target domain name which will be in trust with the
  /// current domain.
  public var targetDomainName: String = String()

  /// The type of trust represented by the trust resource.
  public var trustType: Google_Cloud_Managedidentities_V1beta1_Trust.TrustType = .unspecified

  /// The trust direction, which decides if the current domain is trusted,
  /// trusting, or both.
  public var trustDirection: Google_Cloud_Managedidentities_V1beta1_Trust.TrustDirection = .unspecified

  /// The trust authentication type, which decides whether the trusted side has
  /// forest/domain wide access or selective access to an approved set of
  /// resources.
  public var selectiveAuthentication: Bool = false

  /// The target DNS server IP addresses which can resolve the remote domain
  /// involved in the trust.
  public var targetDnsIpAddresses: [String] = []

  /// Input only, and will not be stored. The trust secret used for the handshake
  /// with the target domain.
  public var trustHandshakeSecret: String = String()

  /// Output only. The time the instance was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. The last update time.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  /// Output only. The current state of the trust.
  public var state: Google_Cloud_Managedidentities_V1beta1_Trust.State = .unspecified

  /// Output only. Additional information about the current state of the
  /// trust, if available.
  public var stateDescription: String = String()

  /// Output only. The last heartbeat time when the trust was known to be
  /// connected.
  public var lastTrustHeartbeatTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _lastTrustHeartbeatTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_lastTrustHeartbeatTime = newValue}
  }
  /// Returns true if `lastTrustHeartbeatTime` has been explicitly set.
  public var hasLastTrustHeartbeatTime: Bool {return self._lastTrustHeartbeatTime != nil}
  /// Clears the value of `lastTrustHeartbeatTime`. Subsequent reads from it will return its default value.
  public mutating func clearLastTrustHeartbeatTime() {self._lastTrustHeartbeatTime = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Represents the different states of a domain trust.
  public enum State: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not set.
    case unspecified // = 0

    /// The domain trust is being created.
    case creating // = 1

    /// The domain trust is being updated.
    case updating // = 2

    /// The domain trust is being deleted.
    case deleting // = 3

    /// The domain trust is connected.
    case connected // = 4

    /// The domain trust is disconnected.
    case disconnected // = 5
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .creating
      case 2: self = .updating
      case 3: self = .deleting
      case 4: self = .connected
      case 5: self = .disconnected
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .creating: return 1
      case .updating: return 2
      case .deleting: return 3
      case .connected: return 4
      case .disconnected: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Represents the different inter-forest trust types.
  public enum TrustType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not set.
    case unspecified // = 0

    /// The forest trust.
    case forest // = 1

    /// The external domain trust.
    case external // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .forest
      case 2: self = .external
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .forest: return 1
      case .external: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  /// Represents the direction of trust.
  /// See
  /// [System.DirectoryServices.ActiveDirectory.TrustDirection](https://docs.microsoft.com/en-us/dotnet/api/system.directoryservices.activedirectory.trustdirection?view=netframework-4.7.2)
  /// for more information.
  public enum TrustDirection: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Not set.
    case unspecified // = 0

    /// The inbound direction represents the trusting side.
    case inbound // = 1

    /// The outboud direction represents the trusted side.
    case outbound // = 2

    /// The bidirectional direction represents the trusted / trusting side.
    case bidirectional // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .inbound
      case 2: self = .outbound
      case 3: self = .bidirectional
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .inbound: return 1
      case .outbound: return 2
      case .bidirectional: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _lastTrustHeartbeatTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Managedidentities_V1beta1_Trust.State: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Managedidentities_V1beta1_Trust.State] = [
    .unspecified,
    .creating,
    .updating,
    .deleting,
    .connected,
    .disconnected,
  ]
}

extension Google_Cloud_Managedidentities_V1beta1_Trust.TrustType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Managedidentities_V1beta1_Trust.TrustType] = [
    .unspecified,
    .forest,
    .external,
  ]
}

extension Google_Cloud_Managedidentities_V1beta1_Trust.TrustDirection: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Managedidentities_V1beta1_Trust.TrustDirection] = [
    .unspecified,
    .inbound,
    .outbound,
    .bidirectional,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.managedidentities.v1beta1"

extension Google_Cloud_Managedidentities_V1beta1_Domain: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Domain"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "labels"),
    3: .standard(proto: "authorized_networks"),
    4: .standard(proto: "reserved_ip_range"),
    5: .same(proto: "locations"),
    6: .same(proto: "admin"),
    10: .same(proto: "fqdn"),
    11: .standard(proto: "create_time"),
    12: .standard(proto: "update_time"),
    13: .same(proto: "state"),
    14: .standard(proto: "status_message"),
    15: .same(proto: "trusts"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.authorizedNetworks) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.reservedIpRange) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.locations) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.admin) }()
      case 10: try { try decoder.decodeSingularStringField(value: &self.fqdn) }()
      case 11: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 12: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      case 13: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 14: try { try decoder.decodeSingularStringField(value: &self.statusMessage) }()
      case 15: try { try decoder.decodeRepeatedMessageField(value: &self.trusts) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 2)
    }
    if !self.authorizedNetworks.isEmpty {
      try visitor.visitRepeatedStringField(value: self.authorizedNetworks, fieldNumber: 3)
    }
    if !self.reservedIpRange.isEmpty {
      try visitor.visitSingularStringField(value: self.reservedIpRange, fieldNumber: 4)
    }
    if !self.locations.isEmpty {
      try visitor.visitRepeatedStringField(value: self.locations, fieldNumber: 5)
    }
    if !self.admin.isEmpty {
      try visitor.visitSingularStringField(value: self.admin, fieldNumber: 6)
    }
    if !self.fqdn.isEmpty {
      try visitor.visitSingularStringField(value: self.fqdn, fieldNumber: 10)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 11)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 13)
    }
    if !self.statusMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.statusMessage, fieldNumber: 14)
    }
    if !self.trusts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.trusts, fieldNumber: 15)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Managedidentities_V1beta1_Domain, rhs: Google_Cloud_Managedidentities_V1beta1_Domain) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.authorizedNetworks != rhs.authorizedNetworks {return false}
    if lhs.reservedIpRange != rhs.reservedIpRange {return false}
    if lhs.locations != rhs.locations {return false}
    if lhs.admin != rhs.admin {return false}
    if lhs.fqdn != rhs.fqdn {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.state != rhs.state {return false}
    if lhs.statusMessage != rhs.statusMessage {return false}
    if lhs.trusts != rhs.trusts {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Managedidentities_V1beta1_Domain.State: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATE_UNSPECIFIED"),
    1: .same(proto: "CREATING"),
    2: .same(proto: "READY"),
    3: .same(proto: "UPDATING"),
    4: .same(proto: "DELETING"),
    5: .same(proto: "REPAIRING"),
    6: .same(proto: "PERFORMING_MAINTENANCE"),
    7: .same(proto: "UNAVAILABLE"),
  ]
}

extension Google_Cloud_Managedidentities_V1beta1_Trust: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Trust"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "target_domain_name"),
    2: .standard(proto: "trust_type"),
    3: .standard(proto: "trust_direction"),
    4: .standard(proto: "selective_authentication"),
    5: .standard(proto: "target_dns_ip_addresses"),
    6: .standard(proto: "trust_handshake_secret"),
    7: .standard(proto: "create_time"),
    8: .standard(proto: "update_time"),
    9: .same(proto: "state"),
    11: .standard(proto: "state_description"),
    12: .standard(proto: "last_trust_heartbeat_time"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.targetDomainName) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.trustType) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.trustDirection) }()
      case 4: try { try decoder.decodeSingularBoolField(value: &self.selectiveAuthentication) }()
      case 5: try { try decoder.decodeRepeatedStringField(value: &self.targetDnsIpAddresses) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.trustHandshakeSecret) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 8: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      case 9: try { try decoder.decodeSingularEnumField(value: &self.state) }()
      case 11: try { try decoder.decodeSingularStringField(value: &self.stateDescription) }()
      case 12: try { try decoder.decodeSingularMessageField(value: &self._lastTrustHeartbeatTime) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.targetDomainName.isEmpty {
      try visitor.visitSingularStringField(value: self.targetDomainName, fieldNumber: 1)
    }
    if self.trustType != .unspecified {
      try visitor.visitSingularEnumField(value: self.trustType, fieldNumber: 2)
    }
    if self.trustDirection != .unspecified {
      try visitor.visitSingularEnumField(value: self.trustDirection, fieldNumber: 3)
    }
    if self.selectiveAuthentication != false {
      try visitor.visitSingularBoolField(value: self.selectiveAuthentication, fieldNumber: 4)
    }
    if !self.targetDnsIpAddresses.isEmpty {
      try visitor.visitRepeatedStringField(value: self.targetDnsIpAddresses, fieldNumber: 5)
    }
    if !self.trustHandshakeSecret.isEmpty {
      try visitor.visitSingularStringField(value: self.trustHandshakeSecret, fieldNumber: 6)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if self.state != .unspecified {
      try visitor.visitSingularEnumField(value: self.state, fieldNumber: 9)
    }
    if !self.stateDescription.isEmpty {
      try visitor.visitSingularStringField(value: self.stateDescription, fieldNumber: 11)
    }
    if let v = self._lastTrustHeartbeatTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Managedidentities_V1beta1_Trust, rhs: Google_Cloud_Managedidentities_V1beta1_Trust) -> Bool {
    if lhs.targetDomainName != rhs.targetDomainName {return false}
    if lhs.trustType != rhs.trustType {return false}
    if lhs.trustDirection != rhs.trustDirection {return false}
    if lhs.selectiveAuthentication != rhs.selectiveAuthentication {return false}
    if lhs.targetDnsIpAddresses != rhs.targetDnsIpAddresses {return false}
    if lhs.trustHandshakeSecret != rhs.trustHandshakeSecret {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.state != rhs.state {return false}
    if lhs.stateDescription != rhs.stateDescription {return false}
    if lhs._lastTrustHeartbeatTime != rhs._lastTrustHeartbeatTime {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Managedidentities_V1beta1_Trust.State: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STATE_UNSPECIFIED"),
    1: .same(proto: "CREATING"),
    2: .same(proto: "UPDATING"),
    3: .same(proto: "DELETING"),
    4: .same(proto: "CONNECTED"),
    5: .same(proto: "DISCONNECTED"),
  ]
}

extension Google_Cloud_Managedidentities_V1beta1_Trust.TrustType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TRUST_TYPE_UNSPECIFIED"),
    1: .same(proto: "FOREST"),
    2: .same(proto: "EXTERNAL"),
  ]
}

extension Google_Cloud_Managedidentities_V1beta1_Trust.TrustDirection: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "TRUST_DIRECTION_UNSPECIFIED"),
    1: .same(proto: "INBOUND"),
    2: .same(proto: "OUTBOUND"),
    3: .same(proto: "BIDIRECTIONAL"),
  ]
}
