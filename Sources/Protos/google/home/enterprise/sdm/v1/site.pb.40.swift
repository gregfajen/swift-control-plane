// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/home/enterprise/sdm/v1/site.proto
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

/// Structure resource represents an instance of enterprise managed home or hotel
/// room.
public struct Google_Home_Enterprise_Sdm_V1_Structure {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The resource name of the structure. For example:
  /// "enterprises/XYZ/structures/ABC".
  public var name: String = String()

  /// Structure traits.
  public var traits: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _traits ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_traits = newValue}
  }
  /// Returns true if `traits` has been explicitly set.
  public var hasTraits: Bool {return self._traits != nil}
  /// Clears the value of `traits`. Subsequent reads from it will return its default value.
  public mutating func clearTraits() {self._traits = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _traits: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

/// Room resource represents an instance of sub-space within a structure such as
/// rooms in a hotel suite or rental apartment.
public struct Google_Home_Enterprise_Sdm_V1_Room {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. The resource name of the room. For example:
  /// "enterprises/XYZ/structures/ABC/rooms/123".
  public var name: String = String()

  /// Room traits.
  public var traits: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _traits ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_traits = newValue}
  }
  /// Returns true if `traits` has been explicitly set.
  public var hasTraits: Bool {return self._traits != nil}
  /// Clears the value of `traits`. Subsequent reads from it will return its default value.
  public mutating func clearTraits() {self._traits = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _traits: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.home.enterprise.sdm.v1"

extension Google_Home_Enterprise_Sdm_V1_Structure: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Structure"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "traits"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._traits) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._traits {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Home_Enterprise_Sdm_V1_Structure, rhs: Google_Home_Enterprise_Sdm_V1_Structure) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._traits != rhs._traits {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Home_Enterprise_Sdm_V1_Room: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Room"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "traits"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._traits) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._traits {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Home_Enterprise_Sdm_V1_Room, rhs: Google_Home_Enterprise_Sdm_V1_Room) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._traits != rhs._traits {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
