// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/chromeos/moblab/v1beta1/resources.proto
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

/// Resource that represents a build target.
public struct Google_Chromeos_Moblab_V1beta1_BuildTarget {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the build target.
  /// Format: buildTargets/{build_target}
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Resource that represents a model. Each model belongs to a build target. For
/// non-unified build, the model name is the same as its build target name.
public struct Google_Chromeos_Moblab_V1beta1_Model {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the model.
  /// Format: buildTargets/{build_target}/models/{model}
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Resource that represents a chrome OS milestone.
public struct Google_Chromeos_Moblab_V1beta1_Milestone {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the milestone.
  /// Format: milestones/{milestone}
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Resource that represents a build for the given build target, model, milestone
/// and build version.
/// NEXT_TAG: 4
public struct Google_Chromeos_Moblab_V1beta1_Build {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the build.
  /// Format: buildTargets/{build_target}/models/{model}/builds/{build}
  /// Example: buildTargets/octopus/models/bobba/builds/1234.0.0
  public var name: String = String()

  /// The milestone that owns the build.
  /// Format: milestones/{milestone}
  public var milestone: String = String()

  /// The build version of the build, e.g. 1234.0.0.
  public var buildVersion: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Resource that represents a build artifact stored in Google Cloud Storage for
/// the given build target, model, build version and bucket. NEXT_TAG: 6
public struct Google_Chromeos_Moblab_V1beta1_BuildArtifact {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The resource name of the build artifact.
  /// Format:
  /// buildTargets/{build_target}/models/{model}/builds/{build}/artifacts/{artifact}
  /// Example:
  /// buildTargets/octopus/models/bobba/builds/1234.0.0/artifacts/chromeos-moblab-peng-staging
  public var name: String = String()

  /// The build metadata of the build artifact.
  public var build: String = String()

  /// The bucket that stores the build artifact.
  public var bucket: String = String()

  /// The path of the build artifact in the bucket.
  public var path: String = String()

  /// The number of objects in the build artifact folder. The object number can
  /// be used to calculated the stage progress by comparing the source build
  /// artifact with the destination build artifact.
  public var objectCount: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.chromeos.moblab.v1beta1"

extension Google_Chromeos_Moblab_V1beta1_BuildTarget: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BuildTarget"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Chromeos_Moblab_V1beta1_BuildTarget, rhs: Google_Chromeos_Moblab_V1beta1_BuildTarget) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Chromeos_Moblab_V1beta1_Model: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Model"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Chromeos_Moblab_V1beta1_Model, rhs: Google_Chromeos_Moblab_V1beta1_Model) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Chromeos_Moblab_V1beta1_Milestone: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Milestone"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Chromeos_Moblab_V1beta1_Milestone, rhs: Google_Chromeos_Moblab_V1beta1_Milestone) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Chromeos_Moblab_V1beta1_Build: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Build"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "milestone"),
    3: .standard(proto: "build_version"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.milestone) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.buildVersion) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.milestone.isEmpty {
      try visitor.visitSingularStringField(value: self.milestone, fieldNumber: 2)
    }
    if !self.buildVersion.isEmpty {
      try visitor.visitSingularStringField(value: self.buildVersion, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Chromeos_Moblab_V1beta1_Build, rhs: Google_Chromeos_Moblab_V1beta1_Build) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.milestone != rhs.milestone {return false}
    if lhs.buildVersion != rhs.buildVersion {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Chromeos_Moblab_V1beta1_BuildArtifact: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BuildArtifact"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "build"),
    3: .same(proto: "bucket"),
    4: .same(proto: "path"),
    5: .standard(proto: "object_count"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.build) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.bucket) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.path) }()
      case 5: try { try decoder.decodeSingularUInt32Field(value: &self.objectCount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.build.isEmpty {
      try visitor.visitSingularStringField(value: self.build, fieldNumber: 2)
    }
    if !self.bucket.isEmpty {
      try visitor.visitSingularStringField(value: self.bucket, fieldNumber: 3)
    }
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 4)
    }
    if self.objectCount != 0 {
      try visitor.visitSingularUInt32Field(value: self.objectCount, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Chromeos_Moblab_V1beta1_BuildArtifact, rhs: Google_Chromeos_Moblab_V1beta1_BuildArtifact) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.build != rhs.build {return false}
    if lhs.bucket != rhs.bucket {return false}
    if lhs.path != rhs.path {return false}
    if lhs.objectCount != rhs.objectCount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
