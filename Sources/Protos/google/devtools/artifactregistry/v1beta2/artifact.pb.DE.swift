// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/artifactregistry/v1beta2/artifact.proto
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

/// DockerImage represents a docker artifact.
public struct Google_Devtools_Artifactregistry_V1beta2_DockerImage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. registry_location, project_id, repository_name and image id forms a unique
  /// image
  /// name:`projects/<project_id>/locations/<location>/repository/<repository_name>/dockerimages/<image>`.
  /// For example,
  /// "projects/test-project/locations/us-west4/repositories/test-repo/dockerimages/
  /// nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf",
  /// where "us-west4" is the registry_location, "test-project" is the
  /// project_id, "test-repo" is the repository_name and
  /// "nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf"
  /// is the image's digest.
  public var name: String = String()

  /// Required. URL to access the image.
  /// Example:
  /// us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf
  public var uri: String = String()

  /// Tags attached to this image.
  public var tags: [String] = []

  /// Calculated size of the image.
  public var imageSizeBytes: Int64 = 0

  /// Time the image was uploaded.
  public var uploadTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _uploadTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_uploadTime = newValue}
  }
  /// Returns true if `uploadTime` has been explicitly set.
  public var hasUploadTime: Bool {return self._uploadTime != nil}
  /// Clears the value of `uploadTime`. Subsequent reads from it will return its default value.
  public mutating func clearUploadTime() {self._uploadTime = nil}

  /// Media type of this image, e.g.
  /// "application/vnd.docker.distribution.manifest.v2+json".
  public var mediaType: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _uploadTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// The request to list docker images.
public struct Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the parent resource whose docker images will be listed.
  public var parent: String = String()

  /// The maximum number of artifacts to return.
  public var pageSize: Int32 = 0

  /// The next_page_token value returned from a previous list request, if any.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The response from listing docker images.
public struct Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The docker images returned.
  public var dockerImages: [Google_Devtools_Artifactregistry_V1beta2_DockerImage] = []

  /// The token to retrieve the next page of artifacts, or empty if there are no
  /// more artifacts to return.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.artifactregistry.v1beta2"

extension Google_Devtools_Artifactregistry_V1beta2_DockerImage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DockerImage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "uri"),
    3: .same(proto: "tags"),
    4: .standard(proto: "image_size_bytes"),
    5: .standard(proto: "upload_time"),
    6: .standard(proto: "media_type"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.uri) }()
      case 3: try { try decoder.decodeRepeatedStringField(value: &self.tags) }()
      case 4: try { try decoder.decodeSingularInt64Field(value: &self.imageSizeBytes) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._uploadTime) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.mediaType) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.uri.isEmpty {
      try visitor.visitSingularStringField(value: self.uri, fieldNumber: 2)
    }
    if !self.tags.isEmpty {
      try visitor.visitRepeatedStringField(value: self.tags, fieldNumber: 3)
    }
    if self.imageSizeBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.imageSizeBytes, fieldNumber: 4)
    }
    if let v = self._uploadTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.mediaType.isEmpty {
      try visitor.visitSingularStringField(value: self.mediaType, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_DockerImage, rhs: Google_Devtools_Artifactregistry_V1beta2_DockerImage) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.uri != rhs.uri {return false}
    if lhs.tags != rhs.tags {return false}
    if lhs.imageSizeBytes != rhs.imageSizeBytes {return false}
    if lhs._uploadTime != rhs._uploadTime {return false}
    if lhs.mediaType != rhs.mediaType {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListDockerImagesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .standard(proto: "page_size"),
    3: .standard(proto: "page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.pageSize) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.pageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if self.pageSize != 0 {
      try visitor.visitSingularInt32Field(value: self.pageSize, fieldNumber: 2)
    }
    if !self.pageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.pageToken, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesRequest, rhs: Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListDockerImagesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "docker_images"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.dockerImages) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.dockerImages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.dockerImages, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesResponse, rhs: Google_Devtools_Artifactregistry_V1beta2_ListDockerImagesResponse) -> Bool {
    if lhs.dockerImages != rhs.dockerImages {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}