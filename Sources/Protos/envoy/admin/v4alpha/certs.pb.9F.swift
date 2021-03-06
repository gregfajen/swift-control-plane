// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/admin/v4alpha/certs.proto
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

/// Proto representation of certificate details. Admin endpoint uses this wrapper for `/certs` to
/// display certificate information. See :ref:`/certs <operations_admin_interface_certs>` for more
/// information.
public struct Envoy_Admin_V4alpha_Certificates {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of certificates known to an Envoy.
  public var certificates: [Envoy_Admin_V4alpha_Certificate] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Admin_V4alpha_Certificate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Details of CA certificate.
  public var caCert: [Envoy_Admin_V4alpha_CertificateDetails] = []

  /// Details of Certificate Chain
  public var certChain: [Envoy_Admin_V4alpha_CertificateDetails] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// [#next-free-field: 8]
public struct Envoy_Admin_V4alpha_CertificateDetails {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Path of the certificate.
  public var path: String = String()

  /// Certificate Serial Number.
  public var serialNumber: String = String()

  /// List of Subject Alternate names.
  public var subjectAltNames: [Envoy_Admin_V4alpha_SubjectAlternateName] = []

  /// Minimum of days until expiration of certificate and it's chain.
  public var daysUntilExpiration: UInt64 = 0

  /// Indicates the time from which the certificate is valid.
  public var validFrom: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _validFrom ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_validFrom = newValue}
  }
  /// Returns true if `validFrom` has been explicitly set.
  public var hasValidFrom: Bool {return self._validFrom != nil}
  /// Clears the value of `validFrom`. Subsequent reads from it will return its default value.
  public mutating func clearValidFrom() {self._validFrom = nil}

  /// Indicates the time at which the certificate expires.
  public var expirationTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _expirationTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_expirationTime = newValue}
  }
  /// Returns true if `expirationTime` has been explicitly set.
  public var hasExpirationTime: Bool {return self._expirationTime != nil}
  /// Clears the value of `expirationTime`. Subsequent reads from it will return its default value.
  public mutating func clearExpirationTime() {self._expirationTime = nil}

  /// Details related to the OCSP response associated with this certificate, if any.
  public var ocspDetails: Envoy_Admin_V4alpha_CertificateDetails.OcspDetails {
    get {return _ocspDetails ?? Envoy_Admin_V4alpha_CertificateDetails.OcspDetails()}
    set {_ocspDetails = newValue}
  }
  /// Returns true if `ocspDetails` has been explicitly set.
  public var hasOcspDetails: Bool {return self._ocspDetails != nil}
  /// Clears the value of `ocspDetails`. Subsequent reads from it will return its default value.
  public mutating func clearOcspDetails() {self._ocspDetails = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct OcspDetails {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Indicates the time from which the OCSP response is valid.
    public var validFrom: SwiftProtobuf.Google_Protobuf_Timestamp {
      get {return _validFrom ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
      set {_validFrom = newValue}
    }
    /// Returns true if `validFrom` has been explicitly set.
    public var hasValidFrom: Bool {return self._validFrom != nil}
    /// Clears the value of `validFrom`. Subsequent reads from it will return its default value.
    public mutating func clearValidFrom() {self._validFrom = nil}

    /// Indicates the time at which the OCSP response expires.
    public var expiration: SwiftProtobuf.Google_Protobuf_Timestamp {
      get {return _expiration ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
      set {_expiration = newValue}
    }
    /// Returns true if `expiration` has been explicitly set.
    public var hasExpiration: Bool {return self._expiration != nil}
    /// Clears the value of `expiration`. Subsequent reads from it will return its default value.
    public mutating func clearExpiration() {self._expiration = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _validFrom: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
    fileprivate var _expiration: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  }

  public init() {}

  fileprivate var _validFrom: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _expirationTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _ocspDetails: Envoy_Admin_V4alpha_CertificateDetails.OcspDetails? = nil
}

public struct Envoy_Admin_V4alpha_SubjectAlternateName {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Subject Alternate Name.
  public var name: Envoy_Admin_V4alpha_SubjectAlternateName.OneOf_Name? = nil

  public var dns: String {
    get {
      if case .dns(let v)? = name {return v}
      return String()
    }
    set {name = .dns(newValue)}
  }

  public var uri: String {
    get {
      if case .uri(let v)? = name {return v}
      return String()
    }
    set {name = .uri(newValue)}
  }

  public var ipAddress: String {
    get {
      if case .ipAddress(let v)? = name {return v}
      return String()
    }
    set {name = .ipAddress(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Subject Alternate Name.
  public enum OneOf_Name: Equatable {
    case dns(String)
    case uri(String)
    case ipAddress(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Admin_V4alpha_SubjectAlternateName.OneOf_Name, rhs: Envoy_Admin_V4alpha_SubjectAlternateName.OneOf_Name) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.dns, .dns): return {
        guard case .dns(let l) = lhs, case .dns(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.uri, .uri): return {
        guard case .uri(let l) = lhs, case .uri(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.ipAddress, .ipAddress): return {
        guard case .ipAddress(let l) = lhs, case .ipAddress(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.admin.v4alpha"

extension Envoy_Admin_V4alpha_Certificates: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Certificates"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "certificates"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.certificates) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.certificates.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.certificates, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_Certificates, rhs: Envoy_Admin_V4alpha_Certificates) -> Bool {
    if lhs.certificates != rhs.certificates {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Admin_V4alpha_Certificate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Certificate"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ca_cert"),
    2: .standard(proto: "cert_chain"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.caCert) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.certChain) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.caCert.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.caCert, fieldNumber: 1)
    }
    if !self.certChain.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.certChain, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_Certificate, rhs: Envoy_Admin_V4alpha_Certificate) -> Bool {
    if lhs.caCert != rhs.caCert {return false}
    if lhs.certChain != rhs.certChain {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Admin_V4alpha_CertificateDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CertificateDetails"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
    2: .standard(proto: "serial_number"),
    3: .standard(proto: "subject_alt_names"),
    4: .standard(proto: "days_until_expiration"),
    5: .standard(proto: "valid_from"),
    6: .standard(proto: "expiration_time"),
    7: .standard(proto: "ocsp_details"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.serialNumber) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.subjectAltNames) }()
      case 4: try { try decoder.decodeSingularUInt64Field(value: &self.daysUntilExpiration) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._validFrom) }()
      case 6: try { try decoder.decodeSingularMessageField(value: &self._expirationTime) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._ocspDetails) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    if !self.serialNumber.isEmpty {
      try visitor.visitSingularStringField(value: self.serialNumber, fieldNumber: 2)
    }
    if !self.subjectAltNames.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.subjectAltNames, fieldNumber: 3)
    }
    if self.daysUntilExpiration != 0 {
      try visitor.visitSingularUInt64Field(value: self.daysUntilExpiration, fieldNumber: 4)
    }
    if let v = self._validFrom {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if let v = self._expirationTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }
    if let v = self._ocspDetails {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_CertificateDetails, rhs: Envoy_Admin_V4alpha_CertificateDetails) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.serialNumber != rhs.serialNumber {return false}
    if lhs.subjectAltNames != rhs.subjectAltNames {return false}
    if lhs.daysUntilExpiration != rhs.daysUntilExpiration {return false}
    if lhs._validFrom != rhs._validFrom {return false}
    if lhs._expirationTime != rhs._expirationTime {return false}
    if lhs._ocspDetails != rhs._ocspDetails {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Admin_V4alpha_CertificateDetails.OcspDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Envoy_Admin_V4alpha_CertificateDetails.protoMessageName + ".OcspDetails"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "valid_from"),
    2: .same(proto: "expiration"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._validFrom) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._expiration) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._validFrom {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._expiration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_CertificateDetails.OcspDetails, rhs: Envoy_Admin_V4alpha_CertificateDetails.OcspDetails) -> Bool {
    if lhs._validFrom != rhs._validFrom {return false}
    if lhs._expiration != rhs._expiration {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Admin_V4alpha_SubjectAlternateName: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SubjectAlternateName"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dns"),
    2: .same(proto: "uri"),
    3: .standard(proto: "ip_address"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.name != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.name = .dns(v)}
      }()
      case 2: try {
        if self.name != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.name = .uri(v)}
      }()
      case 3: try {
        if self.name != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.name = .ipAddress(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.name {
    case .dns?: try {
      guard case .dns(let v)? = self.name else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }()
    case .uri?: try {
      guard case .uri(let v)? = self.name else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case .ipAddress?: try {
      guard case .ipAddress(let v)? = self.name else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Admin_V4alpha_SubjectAlternateName, rhs: Envoy_Admin_V4alpha_SubjectAlternateName) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
