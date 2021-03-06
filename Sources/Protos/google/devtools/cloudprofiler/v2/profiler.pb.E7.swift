// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/cloudprofiler/v2/profiler.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018 Google LLC
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

/// ProfileType is type of profiling data.
/// NOTE: the enumeration member names are used (in lowercase) as unique string
/// identifiers of profile types, so they must not be renamed.
public enum Google_Devtools_Cloudprofiler_V2_ProfileType: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Unspecified profile type.
  case unspecified // = 0

  /// Thread CPU time sampling.
  case cpu // = 1

  /// Wallclock time sampling. More expensive as stops all threads.
  case wall // = 2

  /// In-use heap profile. Represents a snapshot of the allocations that are
  /// live at the time of the profiling.
  case heap // = 3

  /// Single-shot collection of all thread stacks.
  case threads // = 4

  /// Synchronization contention profile.
  case contention // = 5

  /// Peak heap profile.
  case peakHeap // = 6

  /// Heap allocation profile. It represents the aggregation of all allocations
  /// made over the duration of the profile. All allocations are included,
  /// including those that might have been freed by the end of the profiling
  /// interval. The profile is in particular useful for garbage collecting
  /// languages to understand which parts of the code create most of the garbage
  /// collection pressure to see if those can be optimized.
  case heapAlloc // = 7
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .cpu
    case 2: self = .wall
    case 3: self = .heap
    case 4: self = .threads
    case 5: self = .contention
    case 6: self = .peakHeap
    case 7: self = .heapAlloc
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .cpu: return 1
    case .wall: return 2
    case .heap: return 3
    case .threads: return 4
    case .contention: return 5
    case .peakHeap: return 6
    case .heapAlloc: return 7
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Devtools_Cloudprofiler_V2_ProfileType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Devtools_Cloudprofiler_V2_ProfileType] = [
    .unspecified,
    .cpu,
    .wall,
    .heap,
    .threads,
    .contention,
    .peakHeap,
    .heapAlloc,
  ]
}

#endif  // swift(>=4.2)

/// CreateProfileRequest describes a profile resource online creation request.
/// The deployment field must be populated. The profile_type specifies the list
/// of profile types supported by the agent. The creation call will hang until a
/// profile of one of these types needs to be collected.
public struct Google_Devtools_Cloudprofiler_V2_CreateProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Parent project to create the profile in.
  public var parent: String = String()

  /// Deployment details.
  public var deployment: Google_Devtools_Cloudprofiler_V2_Deployment {
    get {return _deployment ?? Google_Devtools_Cloudprofiler_V2_Deployment()}
    set {_deployment = newValue}
  }
  /// Returns true if `deployment` has been explicitly set.
  public var hasDeployment: Bool {return self._deployment != nil}
  /// Clears the value of `deployment`. Subsequent reads from it will return its default value.
  public mutating func clearDeployment() {self._deployment = nil}

  /// One or more profile types that the agent is capable of providing.
  public var profileType: [Google_Devtools_Cloudprofiler_V2_ProfileType] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _deployment: Google_Devtools_Cloudprofiler_V2_Deployment? = nil
}

/// CreateOfflineProfileRequest describes a profile resource offline creation
/// request. Profile field must be set.
public struct Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Parent project to create the profile in.
  public var parent: String = String()

  /// Contents of the profile to create.
  public var profile: Google_Devtools_Cloudprofiler_V2_Profile {
    get {return _profile ?? Google_Devtools_Cloudprofiler_V2_Profile()}
    set {_profile = newValue}
  }
  /// Returns true if `profile` has been explicitly set.
  public var hasProfile: Bool {return self._profile != nil}
  /// Clears the value of `profile`. Subsequent reads from it will return its default value.
  public mutating func clearProfile() {self._profile = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _profile: Google_Devtools_Cloudprofiler_V2_Profile? = nil
}

/// UpdateProfileRequest contains the profile to update.
public struct Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Profile to update
  public var profile: Google_Devtools_Cloudprofiler_V2_Profile {
    get {return _profile ?? Google_Devtools_Cloudprofiler_V2_Profile()}
    set {_profile = newValue}
  }
  /// Returns true if `profile` has been explicitly set.
  public var hasProfile: Bool {return self._profile != nil}
  /// Clears the value of `profile`. Subsequent reads from it will return its default value.
  public mutating func clearProfile() {self._profile = nil}

  /// Field mask used to specify the fields to be overwritten. Currently only
  /// profile_bytes and labels fields are supported by UpdateProfile, so only
  /// those fields can be specified in the mask. When no mask is provided, all
  /// fields are overwritten.
  public var updateMask: SwiftProtobuf.Google_Protobuf_FieldMask {
    get {return _updateMask ?? SwiftProtobuf.Google_Protobuf_FieldMask()}
    set {_updateMask = newValue}
  }
  /// Returns true if `updateMask` has been explicitly set.
  public var hasUpdateMask: Bool {return self._updateMask != nil}
  /// Clears the value of `updateMask`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateMask() {self._updateMask = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _profile: Google_Devtools_Cloudprofiler_V2_Profile? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// Profile resource.
public struct Google_Devtools_Cloudprofiler_V2_Profile {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Opaque, server-assigned, unique ID for this profile.
  public var name: String = String()

  /// Type of profile.
  /// For offline mode, this must be specified when creating the profile. For
  /// online mode it is assigned and returned by the server.
  public var profileType: Google_Devtools_Cloudprofiler_V2_ProfileType = .unspecified

  /// Deployment this profile corresponds to.
  public var deployment: Google_Devtools_Cloudprofiler_V2_Deployment {
    get {return _deployment ?? Google_Devtools_Cloudprofiler_V2_Deployment()}
    set {_deployment = newValue}
  }
  /// Returns true if `deployment` has been explicitly set.
  public var hasDeployment: Bool {return self._deployment != nil}
  /// Clears the value of `deployment`. Subsequent reads from it will return its default value.
  public mutating func clearDeployment() {self._deployment = nil}

  /// Duration of the profiling session.
  /// Input (for the offline mode) or output (for the online mode).
  /// The field represents requested profiling duration. It may slightly differ
  /// from the effective profiling duration, which is recorded in the profile
  /// data, in case the profiling can't be stopped immediately (e.g. in case
  /// stopping the profiling is handled asynchronously).
  public var duration: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _duration ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_duration = newValue}
  }
  /// Returns true if `duration` has been explicitly set.
  public var hasDuration: Bool {return self._duration != nil}
  /// Clears the value of `duration`. Subsequent reads from it will return its default value.
  public mutating func clearDuration() {self._duration = nil}

  /// Input only. Profile bytes, as a gzip compressed serialized proto, the
  /// format is https://github.com/google/pprof/blob/master/proto/profile.proto.
  public var profileBytes: Data = Data()

  /// Input only. Labels associated to this specific profile. These labels will
  /// get merged with the deployment labels for the final data set.  See
  /// documentation on deployment labels for validation rules and limits.
  public var labels: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _deployment: Google_Devtools_Cloudprofiler_V2_Deployment? = nil
  fileprivate var _duration: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

/// Deployment contains the deployment identification information.
public struct Google_Devtools_Cloudprofiler_V2_Deployment {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Project ID is the ID of a cloud project.
  /// Validation regex: `^[a-z][-a-z0-9:.]{4,61}[a-z0-9]$`.
  public var projectID: String = String()

  /// Target is the service name used to group related deployments:
  /// * Service name for GAE Flex / Standard.
  /// * Cluster and container name for GKE.
  /// * User-specified string for direct GCE profiling (e.g. Java).
  /// * Job name for Dataflow.
  /// Validation regex: `^[a-z]([-a-z0-9_.]{0,253}[a-z0-9])?$`.
  public var target: String = String()

  /// Labels identify the deployment within the user universe and same target.
  /// Validation regex for label names: `^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$`.
  /// Value for an individual label must be <= 512 bytes, the total
  /// size of all label names and values must be <= 1024 bytes.
  ///
  /// Label named "language" can be used to record the programming language of
  /// the profiled deployment. The standard choices for the value include "java",
  /// "go", "python", "ruby", "nodejs", "php", "dotnet".
  ///
  /// For deployments running on Google Cloud Platform, "zone" or "region" label
  /// should be present describing the deployment location. An example of a zone
  /// is "us-central1-a", an example of a region is "us-central1" or
  /// "us-central".
  public var labels: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.cloudprofiler.v2"

extension Google_Devtools_Cloudprofiler_V2_ProfileType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "PROFILE_TYPE_UNSPECIFIED"),
    1: .same(proto: "CPU"),
    2: .same(proto: "WALL"),
    3: .same(proto: "HEAP"),
    4: .same(proto: "THREADS"),
    5: .same(proto: "CONTENTION"),
    6: .same(proto: "PEAK_HEAP"),
    7: .same(proto: "HEAP_ALLOC"),
  ]
}

extension Google_Devtools_Cloudprofiler_V2_CreateProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    4: .same(proto: "parent"),
    1: .same(proto: "deployment"),
    2: .standard(proto: "profile_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._deployment) }()
      case 2: try { try decoder.decodeRepeatedEnumField(value: &self.profileType) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._deployment {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.profileType.isEmpty {
      try visitor.visitPackedEnumField(value: self.profileType, fieldNumber: 2)
    }
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Cloudprofiler_V2_CreateProfileRequest, rhs: Google_Devtools_Cloudprofiler_V2_CreateProfileRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._deployment != rhs._deployment {return false}
    if lhs.profileType != rhs.profileType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateOfflineProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "profile"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._profile) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._profile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest, rhs: Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._profile != rhs._profile {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateProfileRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "profile"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._profile) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._profile {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest, rhs: Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest) -> Bool {
    if lhs._profile != rhs._profile {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Cloudprofiler_V2_Profile: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Profile"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "profile_type"),
    3: .same(proto: "deployment"),
    4: .same(proto: "duration"),
    5: .standard(proto: "profile_bytes"),
    6: .same(proto: "labels"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularEnumField(value: &self.profileType) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._deployment) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._duration) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self.profileBytes) }()
      case 6: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.profileType != .unspecified {
      try visitor.visitSingularEnumField(value: self.profileType, fieldNumber: 2)
    }
    if let v = self._deployment {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    if let v = self._duration {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if !self.profileBytes.isEmpty {
      try visitor.visitSingularBytesField(value: self.profileBytes, fieldNumber: 5)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Cloudprofiler_V2_Profile, rhs: Google_Devtools_Cloudprofiler_V2_Profile) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.profileType != rhs.profileType {return false}
    if lhs._deployment != rhs._deployment {return false}
    if lhs._duration != rhs._duration {return false}
    if lhs.profileBytes != rhs.profileBytes {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Cloudprofiler_V2_Deployment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Deployment"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "project_id"),
    2: .same(proto: "target"),
    3: .same(proto: "labels"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.projectID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.target) }()
      case 3: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.projectID.isEmpty {
      try visitor.visitSingularStringField(value: self.projectID, fieldNumber: 1)
    }
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 2)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Cloudprofiler_V2_Deployment, rhs: Google_Devtools_Cloudprofiler_V2_Deployment) -> Bool {
    if lhs.projectID != rhs.projectID {return false}
    if lhs.target != rhs.target {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
