// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/data/dns/v2alpha/dns_table.proto
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

/// This message contains the configuration for the DNS Filter if populated
/// from the control plane
public struct Envoy_Data_Dns_V2alpha_DnsTable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Control how many times envoy makes an attempt to forward a query to
  /// an external server
  public var externalRetryCount: UInt32 = 0

  /// Fully qualified domain names for which Envoy will respond to queries
  public var virtualDomains: [Envoy_Data_Dns_V2alpha_DnsTable.DnsVirtualDomain] = []

  /// This field serves to help Envoy determine whether it can authoritatively
  /// answer a query for a name matching a suffix in this list. If the query
  /// name does not match a suffix in this list, Envoy will forward
  /// the query to an upstream DNS server
  public var knownSuffixes: [Envoy_Type_Matcher_StringMatcher] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// This message contains a list of IP addresses returned for a query for a known name
  public struct AddressList {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// This field contains a well formed IP address that is returned
    /// in the answer for a name query. The address field can be an
    /// IPv4 or IPv6 address. Address family detection is done automatically
    /// when Envoy parses the string. Since this field is repeated,
    /// Envoy will return one randomly chosen entry from this list in the
    /// DNS response. The random index will vary per query so that we prevent
    /// clients pinning on a single address for a configured domain
    public var address: [String] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// This message type is extensible and can contain a list of addresses
  /// or dictate some other method for resolving the addresses for an
  /// endpoint
  public struct DnsEndpoint {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var endpointConfig: Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint.OneOf_EndpointConfig? = nil

    public var addressList: Envoy_Data_Dns_V2alpha_DnsTable.AddressList {
      get {
        if case .addressList(let v)? = endpointConfig {return v}
        return Envoy_Data_Dns_V2alpha_DnsTable.AddressList()
      }
      set {endpointConfig = .addressList(newValue)}
    }

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public enum OneOf_EndpointConfig: Equatable {
      case addressList(Envoy_Data_Dns_V2alpha_DnsTable.AddressList)

    #if !swift(>=4.1)
      public static func ==(lhs: Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint.OneOf_EndpointConfig, rhs: Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint.OneOf_EndpointConfig) -> Bool {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch (lhs, rhs) {
        case (.addressList, .addressList): return {
          guard case .addressList(let l) = lhs, case .addressList(let r) = rhs else { preconditionFailure() }
          return l == r
        }()
        }
      }
    #endif
    }

    public init() {}
  }

  public struct DnsVirtualDomain {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The domain name for which Envoy will respond to query requests
    public var name: String = String()

    /// The configuration containing the method to determine the address
    /// of this endpoint
    public var endpoint: Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint {
      get {return _endpoint ?? Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint()}
      set {_endpoint = newValue}
    }
    /// Returns true if `endpoint` has been explicitly set.
    public var hasEndpoint: Bool {return self._endpoint != nil}
    /// Clears the value of `endpoint`. Subsequent reads from it will return its default value.
    public mutating func clearEndpoint() {self._endpoint = nil}

    /// Sets the TTL in dns answers from Envoy returned to the client
    public var answerTtl: SwiftProtobuf.Google_Protobuf_Duration {
      get {return _answerTtl ?? SwiftProtobuf.Google_Protobuf_Duration()}
      set {_answerTtl = newValue}
    }
    /// Returns true if `answerTtl` has been explicitly set.
    public var hasAnswerTtl: Bool {return self._answerTtl != nil}
    /// Clears the value of `answerTtl`. Subsequent reads from it will return its default value.
    public mutating func clearAnswerTtl() {self._answerTtl = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _endpoint: Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint? = nil
    fileprivate var _answerTtl: SwiftProtobuf.Google_Protobuf_Duration? = nil
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.data.dns.v2alpha"

extension Envoy_Data_Dns_V2alpha_DnsTable: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DnsTable"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "external_retry_count"),
    2: .standard(proto: "virtual_domains"),
    3: .standard(proto: "known_suffixes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.externalRetryCount) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.virtualDomains) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.knownSuffixes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.externalRetryCount != 0 {
      try visitor.visitSingularUInt32Field(value: self.externalRetryCount, fieldNumber: 1)
    }
    if !self.virtualDomains.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.virtualDomains, fieldNumber: 2)
    }
    if !self.knownSuffixes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.knownSuffixes, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Dns_V2alpha_DnsTable, rhs: Envoy_Data_Dns_V2alpha_DnsTable) -> Bool {
    if lhs.externalRetryCount != rhs.externalRetryCount {return false}
    if lhs.virtualDomains != rhs.virtualDomains {return false}
    if lhs.knownSuffixes != rhs.knownSuffixes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Dns_V2alpha_DnsTable.AddressList: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Data_Dns_V2alpha_DnsTable.protoMessageName + ".AddressList"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.address) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.address.isEmpty {
      try visitor.visitRepeatedStringField(value: self.address, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Dns_V2alpha_DnsTable.AddressList, rhs: Envoy_Data_Dns_V2alpha_DnsTable.AddressList) -> Bool {
    if lhs.address != rhs.address {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Data_Dns_V2alpha_DnsTable.protoMessageName + ".DnsEndpoint"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "address_list"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Envoy_Data_Dns_V2alpha_DnsTable.AddressList?
        if let current = self.endpointConfig {
          try decoder.handleConflictingOneOf()
          if case .addressList(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.endpointConfig = .addressList(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if case .addressList(let v)? = self.endpointConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint, rhs: Envoy_Data_Dns_V2alpha_DnsTable.DnsEndpoint) -> Bool {
    if lhs.endpointConfig != rhs.endpointConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Data_Dns_V2alpha_DnsTable.DnsVirtualDomain: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Data_Dns_V2alpha_DnsTable.protoMessageName + ".DnsVirtualDomain"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "endpoint"),
    3: .standard(proto: "answer_ttl"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._endpoint) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._answerTtl) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._endpoint {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._answerTtl {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Data_Dns_V2alpha_DnsTable.DnsVirtualDomain, rhs: Envoy_Data_Dns_V2alpha_DnsTable.DnsVirtualDomain) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._endpoint != rhs._endpoint {return false}
    if lhs._answerTtl != rhs._answerTtl {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
