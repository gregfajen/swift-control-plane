// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/appengine/v1/domain_mapping.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
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

/// A domain serving an App Engine application.
public struct Google_Appengine_V1_DomainMapping {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Full path to the `DomainMapping` resource in the API. Example:
  /// `apps/myapp/domainMapping/example.com`.
  ///
  /// @OutputOnly
  public var name: String = String()

  /// Relative name of the domain serving the application. Example:
  /// `example.com`.
  public var id: String = String()

  /// SSL configuration for this domain. If unconfigured, this domain will not
  /// serve with SSL.
  public var sslSettings: Google_Appengine_V1_SslSettings {
    get {return _sslSettings ?? Google_Appengine_V1_SslSettings()}
    set {_sslSettings = newValue}
  }
  /// Returns true if `sslSettings` has been explicitly set.
  public var hasSslSettings: Bool {return self._sslSettings != nil}
  /// Clears the value of `sslSettings`. Subsequent reads from it will return its default value.
  public mutating func clearSslSettings() {self._sslSettings = nil}

  /// The resource records required to configure this domain mapping. These
  /// records must be added to the domain's DNS configuration in order to
  /// serve the application via this domain mapping.
  ///
  /// @OutputOnly
  public var resourceRecords: [Google_Appengine_V1_ResourceRecord] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _sslSettings: Google_Appengine_V1_SslSettings? = nil
}

/// SSL configuration for a `DomainMapping` resource.
public struct Google_Appengine_V1_SslSettings {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// ID of the `AuthorizedCertificate` resource configuring SSL for the
  /// application. Clearing this field will remove SSL support.
  ///
  /// By default, a managed certificate is automatically created for every
  /// domain mapping. To omit SSL support or to configure SSL manually, specify
  /// `SslManagementType.MANUAL` on a `CREATE` or `UPDATE` request. You must
  /// be authorized to administer the `AuthorizedCertificate` resource to
  /// manually map it to a `DomainMapping` resource.
  /// Example: `12345`.
  public var certificateID: String = String()

  /// SSL management type for this domain. If `AUTOMATIC`, a managed certificate
  /// is automatically provisioned. If `MANUAL`, `certificate_id` must be
  /// manually specified in order to configure SSL for this domain.
  public var sslManagementType: Google_Appengine_V1_SslSettings.SslManagementType = .unspecified

  /// ID of the managed `AuthorizedCertificate` resource currently being
  /// provisioned, if applicable. Until the new managed certificate has been
  /// successfully provisioned, the previous SSL state will be preserved. Once
  /// the provisioning process completes, the `certificate_id` field will reflect
  /// the new managed certificate and this field will be left empty. To remove
  /// SSL support while there is still a pending managed certificate, clear the
  /// `certificate_id` field with an `UpdateDomainMappingRequest`.
  ///
  /// @OutputOnly
  public var pendingManagedCertificateID: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The SSL management type for this domain.
  public enum SslManagementType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Defaults to `AUTOMATIC`.
    case unspecified // = 0

    /// SSL support for this domain is configured automatically. The mapped SSL
    /// certificate will be automatically renewed.
    case automatic // = 1

    /// SSL support for this domain is configured manually by the user. Either
    /// the domain has no SSL support or a user-obtained SSL certificate has been
    /// explictly mapped to this domain.
    case manual // = 2
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .automatic
      case 2: self = .manual
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .automatic: return 1
      case .manual: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Appengine_V1_SslSettings.SslManagementType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Appengine_V1_SslSettings.SslManagementType] = [
    .unspecified,
    .automatic,
    .manual,
  ]
}

#endif  // swift(>=4.2)

/// A DNS resource record.
public struct Google_Appengine_V1_ResourceRecord {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Relative name of the object affected by this record. Only applicable for
  /// `CNAME` records. Example: 'www'.
  public var name: String = String()

  /// Data for this record. Values vary by record type, as defined in RFC 1035
  /// (section 5) and RFC 1034 (section 3.6.1).
  public var rrdata: String = String()

  /// Resource record type. Example: `AAAA`.
  public var type: Google_Appengine_V1_ResourceRecord.RecordType = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// A resource record type.
  public enum RecordType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// An unknown resource record.
    case unspecified // = 0

    /// An A resource record. Data is an IPv4 address.
    case a // = 1

    /// An AAAA resource record. Data is an IPv6 address.
    case aaaa // = 2

    /// A CNAME resource record. Data is a domain name to be aliased.
    case cname // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .a
      case 2: self = .aaaa
      case 3: self = .cname
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .a: return 1
      case .aaaa: return 2
      case .cname: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Appengine_V1_ResourceRecord.RecordType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Appengine_V1_ResourceRecord.RecordType] = [
    .unspecified,
    .a,
    .aaaa,
    .cname,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.appengine.v1"

extension Google_Appengine_V1_DomainMapping: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DomainMapping"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "id"),
    3: .standard(proto: "ssl_settings"),
    4: .standard(proto: "resource_records"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.id) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._sslSettings) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.resourceRecords) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.id.isEmpty {
      try visitor.visitSingularStringField(value: self.id, fieldNumber: 2)
    }
    if let v = self._sslSettings {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.resourceRecords.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.resourceRecords, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1_DomainMapping, rhs: Google_Appengine_V1_DomainMapping) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.id != rhs.id {return false}
    if lhs._sslSettings != rhs._sslSettings {return false}
    if lhs.resourceRecords != rhs.resourceRecords {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Appengine_V1_SslSettings: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SslSettings"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "certificate_id"),
    3: .standard(proto: "ssl_management_type"),
    4: .standard(proto: "pending_managed_certificate_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.certificateID) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.sslManagementType) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.pendingManagedCertificateID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.certificateID.isEmpty {
      try visitor.visitSingularStringField(value: self.certificateID, fieldNumber: 1)
    }
    if self.sslManagementType != .unspecified {
      try visitor.visitSingularEnumField(value: self.sslManagementType, fieldNumber: 3)
    }
    if !self.pendingManagedCertificateID.isEmpty {
      try visitor.visitSingularStringField(value: self.pendingManagedCertificateID, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1_SslSettings, rhs: Google_Appengine_V1_SslSettings) -> Bool {
    if lhs.certificateID != rhs.certificateID {return false}
    if lhs.sslManagementType != rhs.sslManagementType {return false}
    if lhs.pendingManagedCertificateID != rhs.pendingManagedCertificateID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Appengine_V1_SslSettings.SslManagementType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SSL_MANAGEMENT_TYPE_UNSPECIFIED"),
    1: .same(proto: "AUTOMATIC"),
    2: .same(proto: "MANUAL"),
  ]
}

extension Google_Appengine_V1_ResourceRecord: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ResourceRecord"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "rrdata"),
    3: .same(proto: "type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.rrdata) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.rrdata.isEmpty {
      try visitor.visitSingularStringField(value: self.rrdata, fieldNumber: 2)
    }
    if self.type != .unspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Appengine_V1_ResourceRecord, rhs: Google_Appengine_V1_ResourceRecord) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.rrdata != rhs.rrdata {return false}
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Appengine_V1_ResourceRecord.RecordType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RECORD_TYPE_UNSPECIFIED"),
    1: .same(proto: "A"),
    2: .same(proto: "AAAA"),
    3: .same(proto: "CNAME"),
  ]
}