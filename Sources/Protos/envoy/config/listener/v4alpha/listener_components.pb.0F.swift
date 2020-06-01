// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/config/listener/v4alpha/listener_components.proto
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

public struct Envoy_Config_Listener_V4alpha_Filter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the filter to instantiate. The name must match a
  /// :ref:`supported filter <config_network_filters>`.
  public var name: String = String()

  /// Filter specific configuration which depends on the filter being
  /// instantiated. See the supported filters for further documentation.
  public var configType: Envoy_Config_Listener_V4alpha_Filter.OneOf_ConfigType? = nil

  public var typedConfig: SwiftProtobuf.Google_Protobuf_Any {
    get {
      if case .typedConfig(let v)? = configType {return v}
      return SwiftProtobuf.Google_Protobuf_Any()
    }
    set {configType = .typedConfig(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Filter specific configuration which depends on the filter being
  /// instantiated. See the supported filters for further documentation.
  public enum OneOf_ConfigType: Equatable {
    case typedConfig(SwiftProtobuf.Google_Protobuf_Any)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Listener_V4alpha_Filter.OneOf_ConfigType, rhs: Envoy_Config_Listener_V4alpha_Filter.OneOf_ConfigType) -> Bool {
      switch (lhs, rhs) {
      case (.typedConfig(let l), .typedConfig(let r)): return l == r
      }
    }
  #endif
  }

  public init() {}
}

/// Specifies the match criteria for selecting a specific filter chain for a
/// listener.
///
/// In order for a filter chain to be selected, *ALL* of its criteria must be
/// fulfilled by the incoming connection, properties of which are set by the
/// networking stack and/or listener filters.
///
/// The following order applies:
///
/// 1. Destination port.
/// 2. Destination IP address.
/// 3. Server name (e.g. SNI for TLS protocol),
/// 4. Transport protocol.
/// 5. Application protocols (e.g. ALPN for TLS protocol).
/// 6. Source type (e.g. any, local or external network).
/// 7. Source IP address.
/// 8. Source port.
///
/// For criteria that allow ranges or wildcards, the most specific value in any
/// of the configured filter chains that matches the incoming connection is going
/// to be used (e.g. for SNI ``www.example.com`` the most specific match would be
/// ``www.example.com``, then ``*.example.com``, then ``*.com``, then any filter
/// chain without ``server_names`` requirements).
///
/// [#comment: Implemented rules are kept in the preference order, with deprecated fields
/// listed at the end, because that's how we want to list them in the docs.
///
/// [#comment:TODO(PiotrSikora): Add support for configurable precedence of the rules]
/// [#next-free-field: 13]
public struct Envoy_Config_Listener_V4alpha_FilterChainMatch {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional destination port to consider when use_original_dst is set on the
  /// listener in determining a filter chain match.
  public var destinationPort: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _destinationPort ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_destinationPort = newValue}
  }
  /// Returns true if `destinationPort` has been explicitly set.
  public var hasDestinationPort: Bool {return self._destinationPort != nil}
  /// Clears the value of `destinationPort`. Subsequent reads from it will return its default value.
  public mutating func clearDestinationPort() {self._destinationPort = nil}

  /// If non-empty, an IP address and prefix length to match addresses when the
  /// listener is bound to 0.0.0.0/:: or when use_original_dst is specified.
  public var prefixRanges: [Envoy_Config_Core_V4alpha_CidrRange] = []

  /// If non-empty, an IP address and suffix length to match addresses when the
  /// listener is bound to 0.0.0.0/:: or when use_original_dst is specified.
  /// [#not-implemented-hide:]
  public var addressSuffix: String = String()

  /// [#not-implemented-hide:]
  public var suffixLen: SwiftProtobuf.Google_Protobuf_UInt32Value {
    get {return _suffixLen ?? SwiftProtobuf.Google_Protobuf_UInt32Value()}
    set {_suffixLen = newValue}
  }
  /// Returns true if `suffixLen` has been explicitly set.
  public var hasSuffixLen: Bool {return self._suffixLen != nil}
  /// Clears the value of `suffixLen`. Subsequent reads from it will return its default value.
  public mutating func clearSuffixLen() {self._suffixLen = nil}

  /// Specifies the connection source IP match type. Can be any, local or external network.
  public var sourceType: Envoy_Config_Listener_V4alpha_FilterChainMatch.ConnectionSourceType = .any

  /// The criteria is satisfied if the source IP address of the downstream
  /// connection is contained in at least one of the specified subnets. If the
  /// parameter is not specified or the list is empty, the source IP address is
  /// ignored.
  public var sourcePrefixRanges: [Envoy_Config_Core_V4alpha_CidrRange] = []

  /// The criteria is satisfied if the source port of the downstream connection
  /// is contained in at least one of the specified ports. If the parameter is
  /// not specified, the source port is ignored.
  public var sourcePorts: [UInt32] = []

  /// If non-empty, a list of server names (e.g. SNI for TLS protocol) to consider when determining
  /// a filter chain match. Those values will be compared against the server names of a new
  /// connection, when detected by one of the listener filters.
  ///
  /// The server name will be matched against all wildcard domains, i.e. ``www.example.com``
  /// will be first matched against ``www.example.com``, then ``*.example.com``, then ``*.com``.
  ///
  /// Note that partial wildcards are not supported, and values like ``*w.example.com`` are invalid.
  ///
  /// .. attention::
  ///
  ///   See the :ref:`FAQ entry <faq_how_to_setup_sni>` on how to configure SNI for more
  ///   information.
  public var serverNames: [String] = []

  /// If non-empty, a transport protocol to consider when determining a filter chain match.
  /// This value will be compared against the transport protocol of a new connection, when
  /// it's detected by one of the listener filters.
  ///
  /// Suggested values include:
  ///
  /// * ``raw_buffer`` - default, used when no transport protocol is detected,
  /// * ``tls`` - set by :ref:`envoy.filters.listener.tls_inspector <config_listener_filters_tls_inspector>`
  ///   when TLS protocol is detected.
  public var transportProtocol: String = String()

  /// If non-empty, a list of application protocols (e.g. ALPN for TLS protocol) to consider when
  /// determining a filter chain match. Those values will be compared against the application
  /// protocols of a new connection, when detected by one of the listener filters.
  ///
  /// Suggested values include:
  ///
  /// * ``http/1.1`` - set by :ref:`envoy.filters.listener.tls_inspector
  ///   <config_listener_filters_tls_inspector>`,
  /// * ``h2`` - set by :ref:`envoy.filters.listener.tls_inspector <config_listener_filters_tls_inspector>`
  ///
  /// .. attention::
  ///
  ///   Currently, only :ref:`TLS Inspector <config_listener_filters_tls_inspector>` provides
  ///   application protocol detection based on the requested
  ///   `ALPN <https://en.wikipedia.org/wiki/Application-Layer_Protocol_Negotiation>`_ values.
  ///
  ///   However, the use of ALPN is pretty much limited to the HTTP/2 traffic on the Internet,
  ///   and matching on values other than ``h2`` is going to lead to a lot of false negatives,
  ///   unless all connecting clients are known to use ALPN.
  public var applicationProtocols: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum ConnectionSourceType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Any connection source matches.
    case any // = 0

    /// Match a connection originating from the same host.
    case sameIpOrLoopback // = 1

    /// Match a connection originating from a different host.
    case external // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .any
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .any
      case 1: self = .sameIpOrLoopback
      case 2: self = .external
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .any: return 0
      case .sameIpOrLoopback: return 1
      case .external: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _destinationPort: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
  fileprivate var _suffixLen: SwiftProtobuf.Google_Protobuf_UInt32Value? = nil
}

#if swift(>=4.2)

extension Envoy_Config_Listener_V4alpha_FilterChainMatch.ConnectionSourceType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Config_Listener_V4alpha_FilterChainMatch.ConnectionSourceType] = [
    .any,
    .sameIpOrLoopback,
    .external,
  ]
}

#endif  // swift(>=4.2)

/// A filter chain wraps a set of match criteria, an option TLS context, a set of filters, and
/// various other parameters.
/// [#next-free-field: 8]
public struct Envoy_Config_Listener_V4alpha_FilterChain {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The criteria to use when matching a connection to this filter chain.
  public var filterChainMatch: Envoy_Config_Listener_V4alpha_FilterChainMatch {
    get {return _filterChainMatch ?? Envoy_Config_Listener_V4alpha_FilterChainMatch()}
    set {_filterChainMatch = newValue}
  }
  /// Returns true if `filterChainMatch` has been explicitly set.
  public var hasFilterChainMatch: Bool {return self._filterChainMatch != nil}
  /// Clears the value of `filterChainMatch`. Subsequent reads from it will return its default value.
  public mutating func clearFilterChainMatch() {self._filterChainMatch = nil}

  /// A list of individual network filters that make up the filter chain for
  /// connections established with the listener. Order matters as the filters are
  /// processed sequentially as connection events happen. Note: If the filter
  /// list is empty, the connection will close by default.
  public var filters: [Envoy_Config_Listener_V4alpha_Filter] = []

  /// Whether the listener should expect a PROXY protocol V1 header on new
  /// connections. If this option is enabled, the listener will assume that that
  /// remote address of the connection is the one specified in the header. Some
  /// load balancers including the AWS ELB support this option. If the option is
  /// absent or set to false, Envoy will use the physical peer address of the
  /// connection as the remote address.
  public var useProxyProto: SwiftProtobuf.Google_Protobuf_BoolValue {
    get {return _useProxyProto ?? SwiftProtobuf.Google_Protobuf_BoolValue()}
    set {_useProxyProto = newValue}
  }
  /// Returns true if `useProxyProto` has been explicitly set.
  public var hasUseProxyProto: Bool {return self._useProxyProto != nil}
  /// Clears the value of `useProxyProto`. Subsequent reads from it will return its default value.
  public mutating func clearUseProxyProto() {self._useProxyProto = nil}

  /// [#not-implemented-hide:] filter chain metadata.
  public var metadata: Envoy_Config_Core_V4alpha_Metadata {
    get {return _metadata ?? Envoy_Config_Core_V4alpha_Metadata()}
    set {_metadata = newValue}
  }
  /// Returns true if `metadata` has been explicitly set.
  public var hasMetadata: Bool {return self._metadata != nil}
  /// Clears the value of `metadata`. Subsequent reads from it will return its default value.
  public mutating func clearMetadata() {self._metadata = nil}

  /// Optional custom transport socket implementation to use for downstream connections.
  /// To setup TLS, set a transport socket with name `tls` and
  /// :ref:`DownstreamTlsContext <envoy_api_msg_extensions.transport_sockets.tls.v4alpha.DownstreamTlsContext>` in the `typed_config`.
  /// If no transport socket configuration is specified, new connections
  /// will be set up with plaintext.
  public var transportSocket: Envoy_Config_Core_V4alpha_TransportSocket {
    get {return _transportSocket ?? Envoy_Config_Core_V4alpha_TransportSocket()}
    set {_transportSocket = newValue}
  }
  /// Returns true if `transportSocket` has been explicitly set.
  public var hasTransportSocket: Bool {return self._transportSocket != nil}
  /// Clears the value of `transportSocket`. Subsequent reads from it will return its default value.
  public mutating func clearTransportSocket() {self._transportSocket = nil}

  /// [#not-implemented-hide:] The unique name (or empty) by which this filter chain is known. If no
  /// name is provided, Envoy will allocate an internal UUID for the filter chain. If the filter
  /// chain is to be dynamically updated or removed via FCDS a unique name must be provided.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _filterChainMatch: Envoy_Config_Listener_V4alpha_FilterChainMatch? = nil
  fileprivate var _useProxyProto: SwiftProtobuf.Google_Protobuf_BoolValue? = nil
  fileprivate var _metadata: Envoy_Config_Core_V4alpha_Metadata? = nil
  fileprivate var _transportSocket: Envoy_Config_Core_V4alpha_TransportSocket? = nil
}

/// Listener filter chain match configuration. This is a recursive structure which allows complex
/// nested match configurations to be built using various logical operators.
///
/// Examples:
///
/// * Matches if the destination port is 3306.
///
/// .. code-block:: yaml
///
///  destination_port_range:
///   start: 3306
///   end: 3307
///
/// * Matches if the destination port is 3306 or 15000.
///
/// .. code-block:: yaml
///
///  or_match:
///    rules:
///      - destination_port_range:
///          start: 3306
///          end: 3306
///      - destination_port_range:
///          start: 15000
///          end: 15001
///
/// [#next-free-field: 6]
public struct Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var rule: OneOf_Rule? {
    get {return _storage._rule}
    set {_uniqueStorage()._rule = newValue}
  }

  /// A set that describes a logical OR. If any member of the set matches, the match configuration
  /// matches.
  public var orMatch: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet {
    get {
      if case .orMatch(let v)? = _storage._rule {return v}
      return Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet()
    }
    set {_uniqueStorage()._rule = .orMatch(newValue)}
  }

  /// A set that describes a logical AND. If all members of the set match, the match configuration
  /// matches.
  public var andMatch: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet {
    get {
      if case .andMatch(let v)? = _storage._rule {return v}
      return Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet()
    }
    set {_uniqueStorage()._rule = .andMatch(newValue)}
  }

  /// A negation match. The match configuration will match if the negated match condition matches.
  public var notMatch: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate {
    get {
      if case .notMatch(let v)? = _storage._rule {return v}
      return Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate()
    }
    set {_uniqueStorage()._rule = .notMatch(newValue)}
  }

  /// The match configuration will always match.
  public var anyMatch: Bool {
    get {
      if case .anyMatch(let v)? = _storage._rule {return v}
      return false
    }
    set {_uniqueStorage()._rule = .anyMatch(newValue)}
  }

  /// Match destination port. Particularly, the match evaluation must use the recovered local port if
  /// the owning listener filter is after :ref:`an original_dst listener filter <config_listener_filters_original_dst>`.
  public var destinationPortRange: Envoy_Type_V3_Int32Range {
    get {
      if case .destinationPortRange(let v)? = _storage._rule {return v}
      return Envoy_Type_V3_Int32Range()
    }
    set {_uniqueStorage()._rule = .destinationPortRange(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Rule: Equatable {
    /// A set that describes a logical OR. If any member of the set matches, the match configuration
    /// matches.
    case orMatch(Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet)
    /// A set that describes a logical AND. If all members of the set match, the match configuration
    /// matches.
    case andMatch(Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet)
    /// A negation match. The match configuration will match if the negated match condition matches.
    case notMatch(Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate)
    /// The match configuration will always match.
    case anyMatch(Bool)
    /// Match destination port. Particularly, the match evaluation must use the recovered local port if
    /// the owning listener filter is after :ref:`an original_dst listener filter <config_listener_filters_original_dst>`.
    case destinationPortRange(Envoy_Type_V3_Int32Range)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.OneOf_Rule, rhs: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.OneOf_Rule) -> Bool {
      switch (lhs, rhs) {
      case (.orMatch(let l), .orMatch(let r)): return l == r
      case (.andMatch(let l), .andMatch(let r)): return l == r
      case (.notMatch(let l), .notMatch(let r)): return l == r
      case (.anyMatch(let l), .anyMatch(let r)): return l == r
      case (.destinationPortRange(let l), .destinationPortRange(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  /// A set of match configurations used for logical operations.
  public struct MatchSet {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The list of rules that make up the set.
    public var rules: [Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct Envoy_Config_Listener_V4alpha_ListenerFilter {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The name of the filter to instantiate. The name must match a
  /// :ref:`supported filter <config_listener_filters>`.
  public var name: String = String()

  /// Filter specific configuration which depends on the filter being instantiated.
  /// See the supported filters for further documentation.
  public var configType: Envoy_Config_Listener_V4alpha_ListenerFilter.OneOf_ConfigType? = nil

  public var typedConfig: SwiftProtobuf.Google_Protobuf_Any {
    get {
      if case .typedConfig(let v)? = configType {return v}
      return SwiftProtobuf.Google_Protobuf_Any()
    }
    set {configType = .typedConfig(newValue)}
  }

  /// Optional match predicate used to disable the filter. The filter is enabled when this field is empty.
  /// See :ref:`ListenerFilterChainMatchPredicate <envoy_api_msg_config.listener.v4alpha.ListenerFilterChainMatchPredicate>`
  /// for further examples.
  public var filterDisabled: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate {
    get {return _filterDisabled ?? Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate()}
    set {_filterDisabled = newValue}
  }
  /// Returns true if `filterDisabled` has been explicitly set.
  public var hasFilterDisabled: Bool {return self._filterDisabled != nil}
  /// Clears the value of `filterDisabled`. Subsequent reads from it will return its default value.
  public mutating func clearFilterDisabled() {self._filterDisabled = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Filter specific configuration which depends on the filter being instantiated.
  /// See the supported filters for further documentation.
  public enum OneOf_ConfigType: Equatable {
    case typedConfig(SwiftProtobuf.Google_Protobuf_Any)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Config_Listener_V4alpha_ListenerFilter.OneOf_ConfigType, rhs: Envoy_Config_Listener_V4alpha_ListenerFilter.OneOf_ConfigType) -> Bool {
      switch (lhs, rhs) {
      case (.typedConfig(let l), .typedConfig(let r)): return l == r
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _filterDisabled: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.config.listener.v4alpha"

extension Envoy_Config_Listener_V4alpha_Filter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Filter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    4: .standard(proto: "typed_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 4:
        var v: SwiftProtobuf.Google_Protobuf_Any?
        if let current = self.configType {
          try decoder.handleConflictingOneOf()
          if case .typedConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configType = .typedConfig(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if case .typedConfig(let v)? = self.configType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Listener_V4alpha_Filter, rhs: Envoy_Config_Listener_V4alpha_Filter) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.configType != rhs.configType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Listener_V4alpha_FilterChainMatch: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FilterChainMatch"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    8: .standard(proto: "destination_port"),
    3: .standard(proto: "prefix_ranges"),
    4: .standard(proto: "address_suffix"),
    5: .standard(proto: "suffix_len"),
    12: .standard(proto: "source_type"),
    6: .standard(proto: "source_prefix_ranges"),
    7: .standard(proto: "source_ports"),
    11: .standard(proto: "server_names"),
    9: .standard(proto: "transport_protocol"),
    10: .standard(proto: "application_protocols"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 3: try decoder.decodeRepeatedMessageField(value: &self.prefixRanges)
      case 4: try decoder.decodeSingularStringField(value: &self.addressSuffix)
      case 5: try decoder.decodeSingularMessageField(value: &self._suffixLen)
      case 6: try decoder.decodeRepeatedMessageField(value: &self.sourcePrefixRanges)
      case 7: try decoder.decodeRepeatedUInt32Field(value: &self.sourcePorts)
      case 8: try decoder.decodeSingularMessageField(value: &self._destinationPort)
      case 9: try decoder.decodeSingularStringField(value: &self.transportProtocol)
      case 10: try decoder.decodeRepeatedStringField(value: &self.applicationProtocols)
      case 11: try decoder.decodeRepeatedStringField(value: &self.serverNames)
      case 12: try decoder.decodeSingularEnumField(value: &self.sourceType)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.prefixRanges.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.prefixRanges, fieldNumber: 3)
    }
    if !self.addressSuffix.isEmpty {
      try visitor.visitSingularStringField(value: self.addressSuffix, fieldNumber: 4)
    }
    if let v = self._suffixLen {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.sourcePrefixRanges.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.sourcePrefixRanges, fieldNumber: 6)
    }
    if !self.sourcePorts.isEmpty {
      try visitor.visitPackedUInt32Field(value: self.sourcePorts, fieldNumber: 7)
    }
    if let v = self._destinationPort {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }
    if !self.transportProtocol.isEmpty {
      try visitor.visitSingularStringField(value: self.transportProtocol, fieldNumber: 9)
    }
    if !self.applicationProtocols.isEmpty {
      try visitor.visitRepeatedStringField(value: self.applicationProtocols, fieldNumber: 10)
    }
    if !self.serverNames.isEmpty {
      try visitor.visitRepeatedStringField(value: self.serverNames, fieldNumber: 11)
    }
    if self.sourceType != .any {
      try visitor.visitSingularEnumField(value: self.sourceType, fieldNumber: 12)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Listener_V4alpha_FilterChainMatch, rhs: Envoy_Config_Listener_V4alpha_FilterChainMatch) -> Bool {
    if lhs._destinationPort != rhs._destinationPort {return false}
    if lhs.prefixRanges != rhs.prefixRanges {return false}
    if lhs.addressSuffix != rhs.addressSuffix {return false}
    if lhs._suffixLen != rhs._suffixLen {return false}
    if lhs.sourceType != rhs.sourceType {return false}
    if lhs.sourcePrefixRanges != rhs.sourcePrefixRanges {return false}
    if lhs.sourcePorts != rhs.sourcePorts {return false}
    if lhs.serverNames != rhs.serverNames {return false}
    if lhs.transportProtocol != rhs.transportProtocol {return false}
    if lhs.applicationProtocols != rhs.applicationProtocols {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Listener_V4alpha_FilterChainMatch.ConnectionSourceType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ANY"),
    1: .same(proto: "SAME_IP_OR_LOOPBACK"),
    2: .same(proto: "EXTERNAL"),
  ]
}

extension Envoy_Config_Listener_V4alpha_FilterChain: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FilterChain"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "filter_chain_match"),
    3: .same(proto: "filters"),
    4: .standard(proto: "use_proxy_proto"),
    5: .same(proto: "metadata"),
    6: .standard(proto: "transport_socket"),
    7: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularMessageField(value: &self._filterChainMatch)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.filters)
      case 4: try decoder.decodeSingularMessageField(value: &self._useProxyProto)
      case 5: try decoder.decodeSingularMessageField(value: &self._metadata)
      case 6: try decoder.decodeSingularMessageField(value: &self._transportSocket)
      case 7: try decoder.decodeSingularStringField(value: &self.name)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._filterChainMatch {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.filters.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.filters, fieldNumber: 3)
    }
    if let v = self._useProxyProto {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._metadata {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._transportSocket {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Listener_V4alpha_FilterChain, rhs: Envoy_Config_Listener_V4alpha_FilterChain) -> Bool {
    if lhs._filterChainMatch != rhs._filterChainMatch {return false}
    if lhs.filters != rhs.filters {return false}
    if lhs._useProxyProto != rhs._useProxyProto {return false}
    if lhs._metadata != rhs._metadata {return false}
    if lhs._transportSocket != rhs._transportSocket {return false}
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListenerFilterChainMatchPredicate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "or_match"),
    2: .standard(proto: "and_match"),
    3: .standard(proto: "not_match"),
    4: .standard(proto: "any_match"),
    5: .standard(proto: "destination_port_range"),
  ]

  fileprivate class _StorageClass {
    var _rule: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.OneOf_Rule?

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _rule = source._rule
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
        switch fieldNumber {
        case 1:
          var v: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet?
          if let current = _storage._rule {
            try decoder.handleConflictingOneOf()
            if case .orMatch(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._rule = .orMatch(v)}
        case 2:
          var v: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet?
          if let current = _storage._rule {
            try decoder.handleConflictingOneOf()
            if case .andMatch(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._rule = .andMatch(v)}
        case 3:
          var v: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate?
          if let current = _storage._rule {
            try decoder.handleConflictingOneOf()
            if case .notMatch(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._rule = .notMatch(v)}
        case 4:
          if _storage._rule != nil {try decoder.handleConflictingOneOf()}
          var v: Bool?
          try decoder.decodeSingularBoolField(value: &v)
          if let v = v {_storage._rule = .anyMatch(v)}
        case 5:
          var v: Envoy_Type_V3_Int32Range?
          if let current = _storage._rule {
            try decoder.handleConflictingOneOf()
            if case .destinationPortRange(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._rule = .destinationPortRange(v)}
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      switch _storage._rule {
      case .orMatch(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      case .andMatch(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .notMatch(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case .anyMatch(let v)?:
        try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
      case .destinationPortRange(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate, rhs: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._rule != rhs_storage._rule {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.protoMessageName + ".MatchSet"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "rules"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.rules)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.rules.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.rules, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet, rhs: Envoy_Config_Listener_V4alpha_ListenerFilterChainMatchPredicate.MatchSet) -> Bool {
    if lhs.rules != rhs.rules {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Config_Listener_V4alpha_ListenerFilter: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListenerFilter"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    3: .standard(proto: "typed_config"),
    4: .standard(proto: "filter_disabled"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 3:
        var v: SwiftProtobuf.Google_Protobuf_Any?
        if let current = self.configType {
          try decoder.handleConflictingOneOf()
          if case .typedConfig(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.configType = .typedConfig(v)}
      case 4: try decoder.decodeSingularMessageField(value: &self._filterDisabled)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if case .typedConfig(let v)? = self.configType {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._filterDisabled {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Config_Listener_V4alpha_ListenerFilter, rhs: Envoy_Config_Listener_V4alpha_ListenerFilter) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.configType != rhs.configType {return false}
    if lhs._filterDisabled != rhs._filterDisabled {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
