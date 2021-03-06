// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/visualinspection/v1beta1/solution_artifact.proto
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

/// A SolutionArtifact is a fixed set of Models which can be exported or
/// deployed.
public struct Google_Cloud_Visualinspection_V1beta1_SolutionArtifact {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var exportLocation: Google_Cloud_Visualinspection_V1beta1_SolutionArtifact.OneOf_ExportLocation? = nil

  /// Export location for the container. This must be specified when export
  /// type is a CONTAINER type.
  public var containerExportLocation: Google_Cloud_Visualinspection_V1beta1_GcrDestination {
    get {
      if case .containerExportLocation(let v)? = exportLocation {return v}
      return Google_Cloud_Visualinspection_V1beta1_GcrDestination()
    }
    set {exportLocation = .containerExportLocation(newValue)}
  }

  /// Export location for the packaged archive in the format like
  /// gs://<BUCKET_NAME>/<OBJECT_NAME>.tar.gz. This must be specified when
  /// export type is PACKAGED_ARCHIVE.
  public var packagedArchiveGcsUri: String {
    get {
      if case .packagedArchiveGcsUri(let v)? = exportLocation {return v}
      return String()
    }
    set {exportLocation = .packagedArchiveGcsUri(newValue)}
  }

  /// Output only. Resource name for SolutionArtifact generated by the system.
  public var name: String = String()

  /// Output only. Timestamp when this Module was created.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Required. A user friendly display name for the SolutionArtifact.
  /// The name can be up to 128 characters long and can consist of any UTF-8
  /// characters.
  public var displayName: String = String()

  /// A description for this SolutionArtifact.
  public var description_p: String = String()

  /// The labels with user-defined metadata to organize your SolutionArtifacts.
  ///
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// Label keys must start with a letter.
  ///
  /// See https://goo.gl/xmQnxf for more information on and examples of labels.
  public var labels: Dictionary<String,String> = [:]

  /// A list of Models to include in the exported solution. If this field is not
  /// provided in the CreateSolutionArtifactRequest, the latest Model for every
  /// Module will be exported. If provided, then only these Models are exported.
  /// The list of models must comprise a complete solution according to the
  /// expectations set by the Solution's SolutionType.
  public var models: [String] = []

  /// Required. Export type.
  public var exportType: Google_Cloud_Visualinspection_V1beta1_SolutionArtifact.ExportType = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_ExportLocation: Equatable {
    /// Export location for the container. This must be specified when export
    /// type is a CONTAINER type.
    case containerExportLocation(Google_Cloud_Visualinspection_V1beta1_GcrDestination)
    /// Export location for the packaged archive in the format like
    /// gs://<BUCKET_NAME>/<OBJECT_NAME>.tar.gz. This must be specified when
    /// export type is PACKAGED_ARCHIVE.
    case packagedArchiveGcsUri(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Visualinspection_V1beta1_SolutionArtifact.OneOf_ExportLocation, rhs: Google_Cloud_Visualinspection_V1beta1_SolutionArtifact.OneOf_ExportLocation) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.containerExportLocation, .containerExportLocation): return {
        guard case .containerExportLocation(let l) = lhs, case .containerExportLocation(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.packagedArchiveGcsUri, .packagedArchiveGcsUri): return {
        guard case .packagedArchiveGcsUri(let l) = lhs, case .packagedArchiveGcsUri(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  /// Export format types.
  public enum ExportType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unspecified by the user.
    case unspecified // = 0

    /// A Docker-compatible container which runs on CPU only.
    case cpuContainer // = 1

    /// A Docker-compatible container which runs on GPU.
    case gpuContainer // = 2

    /// Packaged archive without the Docker container. It might include multiple
    /// models, images, and other configuration files in one package.
    case packagedArchive // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .cpuContainer
      case 2: self = .gpuContainer
      case 3: self = .packagedArchive
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .cpuContainer: return 1
      case .gpuContainer: return 2
      case .packagedArchive: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Visualinspection_V1beta1_SolutionArtifact.ExportType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Visualinspection_V1beta1_SolutionArtifact.ExportType] = [
    .unspecified,
    .cpuContainer,
    .gpuContainer,
    .packagedArchive,
  ]
}

#endif  // swift(>=4.2)

/// The GCR location where the container will be pushed.
public struct Google_Cloud_Visualinspection_V1beta1_GcrDestination {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. Google Container Registry URI of the new image, up to
  /// 2000 characters long. See
  ///
  /// https:
  /// //cloud.google.com/container-registry/do
  /// // cs/pushing-and-pulling#pushing_an_image_to_a_registry
  /// Accepted forms:
  /// * [HOSTNAME]/[PROJECT-ID]/[IMAGE]
  /// * [HOSTNAME]/[PROJECT-ID]/[IMAGE]:[TAG]
  ///
  /// The requesting user must have permission to push images the project.
  public var outputUri: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.visualinspection.v1beta1"

extension Google_Cloud_Visualinspection_V1beta1_SolutionArtifact: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SolutionArtifact"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    9: .standard(proto: "container_export_location"),
    10: .standard(proto: "packaged_archive_gcs_uri"),
    1: .same(proto: "name"),
    2: .standard(proto: "create_time"),
    4: .standard(proto: "display_name"),
    5: .same(proto: "description"),
    6: .same(proto: "labels"),
    7: .same(proto: "models"),
    8: .standard(proto: "export_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.displayName) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 6: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.labels) }()
      case 7: try { try decoder.decodeRepeatedStringField(value: &self.models) }()
      case 8: try { try decoder.decodeSingularEnumField(value: &self.exportType) }()
      case 9: try {
        var v: Google_Cloud_Visualinspection_V1beta1_GcrDestination?
        if let current = self.exportLocation {
          try decoder.handleConflictingOneOf()
          if case .containerExportLocation(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.exportLocation = .containerExportLocation(v)}
      }()
      case 10: try {
        if self.exportLocation != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.exportLocation = .packagedArchiveGcsUri(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 4)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 5)
    }
    if !self.labels.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.labels, fieldNumber: 6)
    }
    if !self.models.isEmpty {
      try visitor.visitRepeatedStringField(value: self.models, fieldNumber: 7)
    }
    if self.exportType != .unspecified {
      try visitor.visitSingularEnumField(value: self.exportType, fieldNumber: 8)
    }
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.exportLocation {
    case .containerExportLocation?: try {
      guard case .containerExportLocation(let v)? = self.exportLocation else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    case .packagedArchiveGcsUri?: try {
      guard case .packagedArchiveGcsUri(let v)? = self.exportLocation else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 10)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Visualinspection_V1beta1_SolutionArtifact, rhs: Google_Cloud_Visualinspection_V1beta1_SolutionArtifact) -> Bool {
    if lhs.exportLocation != rhs.exportLocation {return false}
    if lhs.name != rhs.name {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.labels != rhs.labels {return false}
    if lhs.models != rhs.models {return false}
    if lhs.exportType != rhs.exportType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Visualinspection_V1beta1_SolutionArtifact.ExportType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "EXPORT_TYPE_UNSPECIFIED"),
    1: .same(proto: "CPU_CONTAINER"),
    2: .same(proto: "GPU_CONTAINER"),
    3: .same(proto: "PACKAGED_ARCHIVE"),
  ]
}

extension Google_Cloud_Visualinspection_V1beta1_GcrDestination: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GcrDestination"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "output_uri"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.outputUri) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.outputUri.isEmpty {
      try visitor.visitSingularStringField(value: self.outputUri, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Visualinspection_V1beta1_GcrDestination, rhs: Google_Cloud_Visualinspection_V1beta1_GcrDestination) -> Bool {
    if lhs.outputUri != rhs.outputUri {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
