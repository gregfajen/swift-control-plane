// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/vision/v1p2beta1/web_detection.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2018 Google Inc.
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

/// Relevant information for the image from the Internet.
public struct Google_Cloud_Vision_V1p2beta1_WebDetection {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Deduced entities from similar images on the Internet.
  public var webEntities: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebEntity] = []

  /// Fully matching images from the Internet.
  /// Can include resized copies of the query image.
  public var fullMatchingImages: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage] = []

  /// Partial matching images from the Internet.
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  public var partialMatchingImages: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage] = []

  /// Web pages containing the matching images from the Internet.
  public var pagesWithMatchingImages: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebPage] = []

  /// The visually similar image results.
  public var visuallySimilarImages: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage] = []

  /// Best guess text labels for the request image.
  public var bestGuessLabels: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebLabel] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Entity deduced from similar images on the Internet.
  public struct WebEntity {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Opaque entity ID.
    public var entityID: String = String()

    /// Overall relevancy score for the entity.
    /// Not normalized and not comparable across different image queries.
    public var score: Float = 0

    /// Canonical description of the entity, in English.
    public var description_p: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Metadata for online images.
  public struct WebImage {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The result image URL.
    public var url: String = String()

    /// (Deprecated) Overall relevancy score for the image.
    public var score: Float = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Metadata for web pages.
  public struct WebPage {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The result web page URL.
    public var url: String = String()

    /// (Deprecated) Overall relevancy score for the web page.
    public var score: Float = 0

    /// Title for the web page, may contain HTML markups.
    public var pageTitle: String = String()

    /// Fully matching images on the page.
    /// Can include resized copies of the query image.
    public var fullMatchingImages: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage] = []

    /// Partial matching images on the page.
    /// Those images are similar enough to share some key-point features. For
    /// example an original image will likely have partial matching for its
    /// crops.
    public var partialMatchingImages: [Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage] = []

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Label to provide extra metadata for the web detection.
  public struct WebLabel {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Label for extra metadata.
    public var label: String = String()

    /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
    /// For more information, see
    /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
    public var languageCode: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.vision.v1p2beta1"

extension Google_Cloud_Vision_V1p2beta1_WebDetection: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".WebDetection"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "web_entities"),
    2: .standard(proto: "full_matching_images"),
    3: .standard(proto: "partial_matching_images"),
    4: .standard(proto: "pages_with_matching_images"),
    6: .standard(proto: "visually_similar_images"),
    8: .standard(proto: "best_guess_labels"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.webEntities) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.fullMatchingImages) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.partialMatchingImages) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.pagesWithMatchingImages) }()
      case 6: try { try decoder.decodeRepeatedMessageField(value: &self.visuallySimilarImages) }()
      case 8: try { try decoder.decodeRepeatedMessageField(value: &self.bestGuessLabels) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.webEntities.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.webEntities, fieldNumber: 1)
    }
    if !self.fullMatchingImages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fullMatchingImages, fieldNumber: 2)
    }
    if !self.partialMatchingImages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.partialMatchingImages, fieldNumber: 3)
    }
    if !self.pagesWithMatchingImages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.pagesWithMatchingImages, fieldNumber: 4)
    }
    if !self.visuallySimilarImages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.visuallySimilarImages, fieldNumber: 6)
    }
    if !self.bestGuessLabels.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.bestGuessLabels, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p2beta1_WebDetection, rhs: Google_Cloud_Vision_V1p2beta1_WebDetection) -> Bool {
    if lhs.webEntities != rhs.webEntities {return false}
    if lhs.fullMatchingImages != rhs.fullMatchingImages {return false}
    if lhs.partialMatchingImages != rhs.partialMatchingImages {return false}
    if lhs.pagesWithMatchingImages != rhs.pagesWithMatchingImages {return false}
    if lhs.visuallySimilarImages != rhs.visuallySimilarImages {return false}
    if lhs.bestGuessLabels != rhs.bestGuessLabels {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p2beta1_WebDetection.WebEntity: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Vision_V1p2beta1_WebDetection.protoMessageName + ".WebEntity"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "entity_id"),
    2: .same(proto: "score"),
    3: .same(proto: "description"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.entityID) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.score) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.entityID.isEmpty {
      try visitor.visitSingularStringField(value: self.entityID, fieldNumber: 1)
    }
    if self.score != 0 {
      try visitor.visitSingularFloatField(value: self.score, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebEntity, rhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebEntity) -> Bool {
    if lhs.entityID != rhs.entityID {return false}
    if lhs.score != rhs.score {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Vision_V1p2beta1_WebDetection.protoMessageName + ".WebImage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "url"),
    2: .same(proto: "score"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.url) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.score) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 1)
    }
    if self.score != 0 {
      try visitor.visitSingularFloatField(value: self.score, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage, rhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebImage) -> Bool {
    if lhs.url != rhs.url {return false}
    if lhs.score != rhs.score {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p2beta1_WebDetection.WebPage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Vision_V1p2beta1_WebDetection.protoMessageName + ".WebPage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "url"),
    2: .same(proto: "score"),
    3: .standard(proto: "page_title"),
    4: .standard(proto: "full_matching_images"),
    5: .standard(proto: "partial_matching_images"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.url) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.score) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.pageTitle) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.fullMatchingImages) }()
      case 5: try { try decoder.decodeRepeatedMessageField(value: &self.partialMatchingImages) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.url.isEmpty {
      try visitor.visitSingularStringField(value: self.url, fieldNumber: 1)
    }
    if self.score != 0 {
      try visitor.visitSingularFloatField(value: self.score, fieldNumber: 2)
    }
    if !self.pageTitle.isEmpty {
      try visitor.visitSingularStringField(value: self.pageTitle, fieldNumber: 3)
    }
    if !self.fullMatchingImages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fullMatchingImages, fieldNumber: 4)
    }
    if !self.partialMatchingImages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.partialMatchingImages, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebPage, rhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebPage) -> Bool {
    if lhs.url != rhs.url {return false}
    if lhs.score != rhs.score {return false}
    if lhs.pageTitle != rhs.pageTitle {return false}
    if lhs.fullMatchingImages != rhs.fullMatchingImages {return false}
    if lhs.partialMatchingImages != rhs.partialMatchingImages {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p2beta1_WebDetection.WebLabel: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Vision_V1p2beta1_WebDetection.protoMessageName + ".WebLabel"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "label"),
    2: .standard(proto: "language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.label) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.label.isEmpty {
      try visitor.visitSingularStringField(value: self.label, fieldNumber: 1)
    }
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebLabel, rhs: Google_Cloud_Vision_V1p2beta1_WebDetection.WebLabel) -> Bool {
    if lhs.label != rhs.label {return false}
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
