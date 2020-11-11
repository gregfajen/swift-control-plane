// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/containeranalysis/v1beta1/package/package.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018 The Grafeas Authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
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

/// Instruction set architectures supported by various package managers.
public enum Grafeas_V1beta1_Package_Architecture: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unknown architecture.
  case unspecified // = 0

  /// X86 architecture.
  case x86 // = 1

  /// X64 architecture.
  case x64 // = 2
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .x86
    case 2: self = .x64
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .x86: return 1
    case .x64: return 2
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Grafeas_V1beta1_Package_Architecture: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Package_Architecture] = [
    .unspecified,
    .x86,
    .x64,
  ]
}

#endif  // swift(>=4.2)

/// This represents a particular channel of distribution for a given package.
/// E.g., Debian's jessie-backports dpkg mirror.
public struct Grafeas_V1beta1_Package_Distribution {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/)
  /// denoting the package manager version distributing a package.
  public var cpeUri: String = String()

  /// The CPU architecture for which packages in this distribution channel were
  /// built.
  public var architecture: Grafeas_V1beta1_Package_Architecture = .unspecified

  /// The latest available version of this package in this distribution channel.
  public var latestVersion: Grafeas_V1beta1_Package_Version {
    get {return _latestVersion ?? Grafeas_V1beta1_Package_Version()}
    set {_latestVersion = newValue}
  }
  /// Returns true if `latestVersion` has been explicitly set.
  public var hasLatestVersion: Bool {return self._latestVersion != nil}
  /// Clears the value of `latestVersion`. Subsequent reads from it will return its default value.
  public mutating func clearLatestVersion() {self._latestVersion = nil}

  /// A freeform string denoting the maintainer of this package.
  public var maintainer: String = String()

  /// The distribution channel-specific homepage for this package.
  public var url: String = String()

  /// The distribution channel-specific description of this package.
  public var description_p: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _latestVersion: Grafeas_V1beta1_Package_Version? = nil
}

/// An occurrence of a particular package installation found within a system's
/// filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
public struct Grafeas_V1beta1_Package_Location {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
  /// denoting the package manager version distributing a package.
  public var cpeUri: String = String()

  /// The version installed at this location.
  public var version: Grafeas_V1beta1_Package_Version {
    get {return _version ?? Grafeas_V1beta1_Package_Version()}
    set {_version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  public var hasVersion: Bool {return self._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  public mutating func clearVersion() {self._version = nil}

  /// The path from which we gathered that this package/version is installed.
  public var path: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _version: Grafeas_V1beta1_Package_Version? = nil
}

/// This represents a particular package that is distributed over various
/// channels. E.g., glibc (aka libc6) is distributed by many, at various
/// versions.
public struct Grafeas_V1beta1_Package_Package {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Immutable. The name of the package.
  public var name: String = String()

  /// The various channels by which a package is distributed.
  public var distribution: [Grafeas_V1beta1_Package_Distribution] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Details of a package occurrence.
public struct Grafeas_V1beta1_Package_Details {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Where the package was installed.
  public var installation: Grafeas_V1beta1_Package_Installation {
    get {return _installation ?? Grafeas_V1beta1_Package_Installation()}
    set {_installation = newValue}
  }
  /// Returns true if `installation` has been explicitly set.
  public var hasInstallation: Bool {return self._installation != nil}
  /// Clears the value of `installation`. Subsequent reads from it will return its default value.
  public mutating func clearInstallation() {self._installation = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _installation: Grafeas_V1beta1_Package_Installation? = nil
}

/// This represents how a particular software package may be installed on a
/// system.
public struct Grafeas_V1beta1_Package_Installation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The name of the installed package.
  public var name: String = String()

  /// Required. All of the places within the filesystem versions of this package
  /// have been found.
  public var location: [Grafeas_V1beta1_Package_Location] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Version contains structured information about the version of a package.
public struct Grafeas_V1beta1_Package_Version {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Used to correct mistakes in the version numbering scheme.
  public var epoch: Int32 = 0

  /// Required only when version kind is NORMAL. The main part of the version
  /// name.
  public var name: String = String()

  /// The iteration of the package build from the above version.
  public var revision: String = String()

  /// Required. Distinguishes between sentinel MIN/MAX versions and normal
  /// versions.
  public var kind: Grafeas_V1beta1_Package_Version.VersionKind = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Whether this is an ordinary package version or a sentinel MIN/MAX version.
  public enum VersionKind: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unknown.
    case unspecified // = 0

    /// A standard package version.
    case normal // = 1

    /// A special version representing negative infinity.
    case minimum // = 2

    /// A special version representing positive infinity.
    case maximum // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .normal
      case 2: self = .minimum
      case 3: self = .maximum
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .normal: return 1
      case .minimum: return 2
      case .maximum: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Grafeas_V1beta1_Package_Version.VersionKind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Package_Version.VersionKind] = [
    .unspecified,
    .normal,
    .minimum,
    .maximum,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1beta1.package"

extension Grafeas_V1beta1_Package_Architecture: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "ARCHITECTURE_UNSPECIFIED"),
    1: .same(proto: "X86"),
    2: .same(proto: "X64"),
  ]
}

extension Grafeas_V1beta1_Package_Distribution: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Distribution"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cpe_uri"),
    2: .same(proto: "architecture"),
    3: .standard(proto: "latest_version"),
    4: .same(proto: "maintainer"),
    5: .same(proto: "url"),
    6: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cpeUri) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.architecture) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._latestVersion) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.maintainer) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.url) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cpeUri.isEmpty {
      try visitor.visitSingularStringField(value: self.cpeUri, fieldNumber: 1)
    }
    if self.architecture != .unspecified {
      try visitor.visitSingularEnumField(value: self.architecture, fieldNumber: 2)
    }
    if let v = self._latestVersion {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.maintainer.isEmpty {
      try visitor.visitSingularStringField(value: self.maintainer, fieldNumber: 4)
    }
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 5)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Package_Distribution, rhs: Grafeas_V1beta1_Package_Distribution) -> Bool {
    if lhs.cpeUri != rhs.cpeUri {return false}
    if lhs.architecture != rhs.architecture {return false}
    if lhs._latestVersion != rhs._latestVersion {return false}
    if lhs.maintainer != rhs.maintainer {return false}
    if lhs.url != rhs.url {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Package_Location: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Location"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "cpe_uri"),
    2: .same(proto: "version"),
    3: .same(proto: "path"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.cpeUri) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._version) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.path) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.cpeUri.isEmpty {
      try visitor.visitSingularStringField(value: self.cpeUri, fieldNumber: 1)
    }
    if let v = self._version {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Package_Location, rhs: Grafeas_V1beta1_Package_Location) -> Bool {
    if lhs.cpeUri != rhs.cpeUri {return false}
    if lhs._version != rhs._version {return false}
    if lhs.path != rhs.path {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Package_Package: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Package"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    10: .same(proto: "distribution"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 10: try { try decoder.decodeRepeatedMessageField(value: &self.distribution) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.distribution.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.distribution, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Package_Package, rhs: Grafeas_V1beta1_Package_Package) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.distribution != rhs.distribution {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Package_Details: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Details"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "installation"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._installation) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._installation {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Package_Details, rhs: Grafeas_V1beta1_Package_Details) -> Bool {
    if lhs._installation != rhs._installation {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Package_Installation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Installation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "location"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.location) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.location.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.location, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Package_Installation, rhs: Grafeas_V1beta1_Package_Installation) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.location != rhs.location {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Package_Version: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Version"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "epoch"),
    2: .same(proto: "name"),
    3: .same(proto: "revision"),
    4: .same(proto: "kind"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.epoch) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.revision) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.kind) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.epoch != 0 {
      try visitor.visitSingularInt32Field(value: self.epoch, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if !self.revision.isEmpty {
      try visitor.visitSingularStringField(value: self.revision, fieldNumber: 3)
    }
    if self.kind != .unspecified {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Package_Version, rhs: Grafeas_V1beta1_Package_Version) -> Bool {
    if lhs.epoch != rhs.epoch {return false}
    if lhs.name != rhs.name {return false}
    if lhs.revision != rhs.revision {return false}
    if lhs.kind != rhs.kind {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Package_Version.VersionKind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "VERSION_KIND_UNSPECIFIED"),
    1: .same(proto: "NORMAL"),
    2: .same(proto: "MINIMUM"),
    3: .same(proto: "MAXIMUM"),
  ]
}
