// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/datalabeling/v1beta1/data_payloads.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2019 Google LLC.
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

/// Container of information about an image.
public struct Google_Cloud_Datalabeling_V1beta1_ImagePayload {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Image format.
  public var mimeType: String = String()

  /// A byte string of a thumbnail image.
  public var imageThumbnail: Data = Data()

  /// Image uri from the user bucket.
  public var imageUri: String = String()

  /// Signed uri of the image file in the service bucket.
  public var signedUri: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Container of information about a piece of text.
public struct Google_Cloud_Datalabeling_V1beta1_TextPayload {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Text content.
  public var textContent: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Container of information of a video thumbnail.
public struct Google_Cloud_Datalabeling_V1beta1_VideoThumbnail {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// A byte string of the video frame.
  public var thumbnail: Data = Data()

  /// Time offset relative to the beginning of the video, corresponding to the
  /// video frame where the thumbnail has been extracted from.
  public var timeOffset: SwiftProtobuf.Google_Protobuf_Duration {
    get {return _timeOffset ?? SwiftProtobuf.Google_Protobuf_Duration()}
    set {_timeOffset = newValue}
  }
  /// Returns true if `timeOffset` has been explicitly set.
  public var hasTimeOffset: Bool {return self._timeOffset != nil}
  /// Clears the value of `timeOffset`. Subsequent reads from it will return its default value.
  public mutating func clearTimeOffset() {self._timeOffset = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _timeOffset: SwiftProtobuf.Google_Protobuf_Duration? = nil
}

/// Container of information of a video.
public struct Google_Cloud_Datalabeling_V1beta1_VideoPayload {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Video format.
  public var mimeType: String = String()

  /// Video uri from the user bucket.
  public var videoUri: String = String()

  /// The list of video thumbnails.
  public var videoThumbnails: [Google_Cloud_Datalabeling_V1beta1_VideoThumbnail] = []

  /// FPS of the video.
  public var frameRate: Float = 0

  /// Signed uri of the video file in the service bucket.
  public var signedUri: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.datalabeling.v1beta1"

extension Google_Cloud_Datalabeling_V1beta1_ImagePayload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ImagePayload"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "mime_type"),
    2: .standard(proto: "image_thumbnail"),
    3: .standard(proto: "image_uri"),
    4: .standard(proto: "signed_uri"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.mimeType) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.imageThumbnail) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.imageUri) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.signedUri) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mimeType.isEmpty {
      try visitor.visitSingularStringField(value: self.mimeType, fieldNumber: 1)
    }
    if !self.imageThumbnail.isEmpty {
      try visitor.visitSingularBytesField(value: self.imageThumbnail, fieldNumber: 2)
    }
    if !self.imageUri.isEmpty {
      try visitor.visitSingularStringField(value: self.imageUri, fieldNumber: 3)
    }
    if !self.signedUri.isEmpty {
      try visitor.visitSingularStringField(value: self.signedUri, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datalabeling_V1beta1_ImagePayload, rhs: Google_Cloud_Datalabeling_V1beta1_ImagePayload) -> Bool {
    if lhs.mimeType != rhs.mimeType {return false}
    if lhs.imageThumbnail != rhs.imageThumbnail {return false}
    if lhs.imageUri != rhs.imageUri {return false}
    if lhs.signedUri != rhs.signedUri {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datalabeling_V1beta1_TextPayload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TextPayload"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "text_content"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.textContent) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.textContent.isEmpty {
      try visitor.visitSingularStringField(value: self.textContent, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datalabeling_V1beta1_TextPayload, rhs: Google_Cloud_Datalabeling_V1beta1_TextPayload) -> Bool {
    if lhs.textContent != rhs.textContent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datalabeling_V1beta1_VideoThumbnail: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VideoThumbnail"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "thumbnail"),
    2: .standard(proto: "time_offset"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.thumbnail) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._timeOffset) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.thumbnail.isEmpty {
      try visitor.visitSingularBytesField(value: self.thumbnail, fieldNumber: 1)
    }
    if let v = self._timeOffset {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datalabeling_V1beta1_VideoThumbnail, rhs: Google_Cloud_Datalabeling_V1beta1_VideoThumbnail) -> Bool {
    if lhs.thumbnail != rhs.thumbnail {return false}
    if lhs._timeOffset != rhs._timeOffset {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datalabeling_V1beta1_VideoPayload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VideoPayload"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "mime_type"),
    2: .standard(proto: "video_uri"),
    3: .standard(proto: "video_thumbnails"),
    4: .standard(proto: "frame_rate"),
    5: .standard(proto: "signed_uri"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.mimeType) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.videoUri) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.videoThumbnails) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.frameRate) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.signedUri) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.mimeType.isEmpty {
      try visitor.visitSingularStringField(value: self.mimeType, fieldNumber: 1)
    }
    if !self.videoUri.isEmpty {
      try visitor.visitSingularStringField(value: self.videoUri, fieldNumber: 2)
    }
    if !self.videoThumbnails.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.videoThumbnails, fieldNumber: 3)
    }
    if self.frameRate != 0 {
      try visitor.visitSingularFloatField(value: self.frameRate, fieldNumber: 4)
    }
    if !self.signedUri.isEmpty {
      try visitor.visitSingularStringField(value: self.signedUri, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datalabeling_V1beta1_VideoPayload, rhs: Google_Cloud_Datalabeling_V1beta1_VideoPayload) -> Bool {
    if lhs.mimeType != rhs.mimeType {return false}
    if lhs.videoUri != rhs.videoUri {return false}
    if lhs.videoThumbnails != rhs.videoThumbnails {return false}
    if lhs.frameRate != rhs.frameRate {return false}
    if lhs.signedUri != rhs.signedUri {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
