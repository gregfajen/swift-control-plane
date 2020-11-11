// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/vision/v1p3beta1/geometry.proto
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

/// A vertex represents a 2D point in the image.
/// NOTE: the vertex coordinates are in the same scale as the original image.
public struct Google_Cloud_Vision_V1p3beta1_Vertex {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// X coordinate.
  public var x: Int32 = 0

  /// Y coordinate.
  public var y: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
public struct Google_Cloud_Vision_V1p3beta1_NormalizedVertex {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// X coordinate.
  public var x: Float = 0

  /// Y coordinate.
  public var y: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A bounding polygon for the detected image annotation.
public struct Google_Cloud_Vision_V1p3beta1_BoundingPoly {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The bounding polygon vertices.
  public var vertices: [Google_Cloud_Vision_V1p3beta1_Vertex] = []

  /// The bounding polygon normalized vertices.
  public var normalizedVertices: [Google_Cloud_Vision_V1p3beta1_NormalizedVertex] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A normalized bounding polygon around a portion of an image.
public struct Google_Cloud_Vision_V1p3beta1_NormalizedBoundingPoly {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Normalized vertices of the bounding polygon.
  public var vertices: [Google_Cloud_Vision_V1p3beta1_NormalizedVertex] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// A 3D position in the image, used primarily for Face detection landmarks.
/// A valid Position must have both x and y coordinates.
/// The position coordinates are in the same scale as the original image.
public struct Google_Cloud_Vision_V1p3beta1_Position {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// X coordinate.
  public var x: Float = 0

  /// Y coordinate.
  public var y: Float = 0

  /// Z coordinate (or depth).
  public var z: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.vision.v1p3beta1"

extension Google_Cloud_Vision_V1p3beta1_Vertex: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Vertex"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
    2: .same(proto: "y"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.x) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.y) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.x != 0 {
      try visitor.visitSingularInt32Field(value: self.x, fieldNumber: 1)
    }
    if self.y != 0 {
      try visitor.visitSingularInt32Field(value: self.y, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p3beta1_Vertex, rhs: Google_Cloud_Vision_V1p3beta1_Vertex) -> Bool {
    if lhs.x != rhs.x {return false}
    if lhs.y != rhs.y {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p3beta1_NormalizedVertex: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NormalizedVertex"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
    2: .same(proto: "y"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.x) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.y) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.x != 0 {
      try visitor.visitSingularFloatField(value: self.x, fieldNumber: 1)
    }
    if self.y != 0 {
      try visitor.visitSingularFloatField(value: self.y, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p3beta1_NormalizedVertex, rhs: Google_Cloud_Vision_V1p3beta1_NormalizedVertex) -> Bool {
    if lhs.x != rhs.x {return false}
    if lhs.y != rhs.y {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p3beta1_BoundingPoly: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".BoundingPoly"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "vertices"),
    2: .standard(proto: "normalized_vertices"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.vertices) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.normalizedVertices) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.vertices.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.vertices, fieldNumber: 1)
    }
    if !self.normalizedVertices.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.normalizedVertices, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p3beta1_BoundingPoly, rhs: Google_Cloud_Vision_V1p3beta1_BoundingPoly) -> Bool {
    if lhs.vertices != rhs.vertices {return false}
    if lhs.normalizedVertices != rhs.normalizedVertices {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p3beta1_NormalizedBoundingPoly: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".NormalizedBoundingPoly"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "vertices"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.vertices) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.vertices.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.vertices, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p3beta1_NormalizedBoundingPoly, rhs: Google_Cloud_Vision_V1p3beta1_NormalizedBoundingPoly) -> Bool {
    if lhs.vertices != rhs.vertices {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1p3beta1_Position: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Position"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "x"),
    2: .same(proto: "y"),
    3: .same(proto: "z"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularFloatField(value: &self.x) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.y) }()
      case 3: try { try decoder.decodeSingularFloatField(value: &self.z) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.x != 0 {
      try visitor.visitSingularFloatField(value: self.x, fieldNumber: 1)
    }
    if self.y != 0 {
      try visitor.visitSingularFloatField(value: self.y, fieldNumber: 2)
    }
    if self.z != 0 {
      try visitor.visitSingularFloatField(value: self.z, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1p3beta1_Position, rhs: Google_Cloud_Vision_V1p3beta1_Position) -> Bool {
    if lhs.x != rhs.x {return false}
    if lhs.y != rhs.y {return false}
    if lhs.z != rhs.z {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}