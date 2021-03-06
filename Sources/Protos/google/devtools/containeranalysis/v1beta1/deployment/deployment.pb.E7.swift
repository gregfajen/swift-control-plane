// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/containeranalysis/v1beta1/deployment/deployment.proto
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

/// An artifact that can be deployed in some runtime.
public struct Grafeas_V1beta1_Deployment_Deployable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Resource URI for the artifact being deployed.
  public var resourceUri: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Details of a deployment occurrence.
public struct Grafeas_V1beta1_Deployment_Details {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Deployment history for the resource.
  public var deployment: Grafeas_V1beta1_Deployment_Deployment {
    get {return _deployment ?? Grafeas_V1beta1_Deployment_Deployment()}
    set {_deployment = newValue}
  }
  /// Returns true if `deployment` has been explicitly set.
  public var hasDeployment: Bool {return self._deployment != nil}
  /// Clears the value of `deployment`. Subsequent reads from it will return its default value.
  public mutating func clearDeployment() {self._deployment = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _deployment: Grafeas_V1beta1_Deployment_Deployment? = nil
}

/// The period during which some deployable was active in a runtime.
public struct Grafeas_V1beta1_Deployment_Deployment {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Identity of the user that triggered this deployment.
  public var userEmail: String = String()

  /// Required. Beginning of the lifetime of this deployment.
  public var deployTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _deployTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_deployTime = newValue}
  }
  /// Returns true if `deployTime` has been explicitly set.
  public var hasDeployTime: Bool {return self._deployTime != nil}
  /// Clears the value of `deployTime`. Subsequent reads from it will return its default value.
  public mutating func clearDeployTime() {self._deployTime = nil}

  /// End of the lifetime of this deployment.
  public var undeployTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _undeployTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_undeployTime = newValue}
  }
  /// Returns true if `undeployTime` has been explicitly set.
  public var hasUndeployTime: Bool {return self._undeployTime != nil}
  /// Clears the value of `undeployTime`. Subsequent reads from it will return its default value.
  public mutating func clearUndeployTime() {self._undeployTime = nil}

  /// Configuration used to create this deployment.
  public var config: String = String()

  /// Address of the runtime element hosting this deployment.
  public var address: String = String()

  /// Output only. Resource URI for the artifact being deployed taken from
  /// the deployable field with the same name.
  public var resourceUri: [String] = []

  /// Platform hosting this deployment.
  public var platform: Grafeas_V1beta1_Deployment_Deployment.Platform = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Types of platforms.
  public enum Platform: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unknown.
    case unspecified // = 0

    /// Google Container Engine.
    case gke // = 1

    /// Google App Engine: Flexible Environment.
    case flex // = 2

    /// Custom user-defined platform.
    case custom // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .gke
      case 2: self = .flex
      case 3: self = .custom
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .gke: return 1
      case .flex: return 2
      case .custom: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _deployTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _undeployTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Grafeas_V1beta1_Deployment_Deployment.Platform: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Grafeas_V1beta1_Deployment_Deployment.Platform] = [
    .unspecified,
    .gke,
    .flex,
    .custom,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "grafeas.v1beta1.deployment"

extension Grafeas_V1beta1_Deployment_Deployable: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Deployable"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "resource_uri"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.resourceUri) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.resourceUri.isEmpty {
      try visitor.visitRepeatedStringField(value: self.resourceUri, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Deployment_Deployable, rhs: Grafeas_V1beta1_Deployment_Deployable) -> Bool {
    if lhs.resourceUri != rhs.resourceUri {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Deployment_Details: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Details"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "deployment"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._deployment) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._deployment {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Deployment_Details, rhs: Grafeas_V1beta1_Deployment_Details) -> Bool {
    if lhs._deployment != rhs._deployment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Deployment_Deployment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Deployment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "user_email"),
    2: .standard(proto: "deploy_time"),
    3: .standard(proto: "undeploy_time"),
    4: .same(proto: "config"),
    5: .same(proto: "address"),
    6: .standard(proto: "resource_uri"),
    7: .same(proto: "platform"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.userEmail) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._deployTime) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._undeployTime) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.config) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.address) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.resourceUri) }()
      case 7: try { try decoder.decodeSingularEnumField(value: &self.platform) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.userEmail.isEmpty {
      try visitor.visitSingularStringField(value: self.userEmail, fieldNumber: 1)
    }
    if let v = self._deployTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._undeployTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if !self.config.isEmpty {
      try visitor.visitSingularStringField(value: self.config, fieldNumber: 4)
    }
    if !self.address.isEmpty {
      try visitor.visitSingularStringField(value: self.address, fieldNumber: 5)
    }
    if !self.resourceUri.isEmpty {
      try visitor.visitRepeatedStringField(value: self.resourceUri, fieldNumber: 6)
    }
    if self.platform != .unspecified {
      try visitor.visitSingularEnumField(value: self.platform, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Grafeas_V1beta1_Deployment_Deployment, rhs: Grafeas_V1beta1_Deployment_Deployment) -> Bool {
    if lhs.userEmail != rhs.userEmail {return false}
    if lhs._deployTime != rhs._deployTime {return false}
    if lhs._undeployTime != rhs._undeployTime {return false}
    if lhs.config != rhs.config {return false}
    if lhs.address != rhs.address {return false}
    if lhs.resourceUri != rhs.resourceUri {return false}
    if lhs.platform != rhs.platform {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Grafeas_V1beta1_Deployment_Deployment.Platform: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PLATFORM_UNSPECIFIED"),
    1: .same(proto: "GKE"),
    2: .same(proto: "FLEX"),
    3: .same(proto: "CUSTOM"),
  ]
}
