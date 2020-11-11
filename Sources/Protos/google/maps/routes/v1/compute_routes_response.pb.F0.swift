// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/maps/routes/v1/compute_routes_response.proto
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

/// ComputeRoutes the response message.
public struct Google_Maps_Routes_V1_ComputeRoutesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Contains an array of computed routes (up to three) when you specify
  /// compute_alternatives_routes, and contains just one route when you don't.
  /// When this array contains multiple entries, the first one is the most
  /// recommended route. If the array is empty, then it means no route could be
  /// found.
  public var routes: [Google_Maps_Routes_V1_Route] = []

  /// In some cases when the server is not able to compute the route results with
  /// all of the input preferences, it may fallback to using a different way of
  /// computation. When fallback mode is used, this field contains detailed info
  /// about the fallback response. Otherwise this field is unset.
  public var fallbackInfo: Google_Maps_Routes_V1_FallbackInfo {
    get {return _fallbackInfo ?? Google_Maps_Routes_V1_FallbackInfo()}
    set {_fallbackInfo = newValue}
  }
  /// Returns true if `fallbackInfo` has been explicitly set.
  public var hasFallbackInfo: Bool {return self._fallbackInfo != nil}
  /// Clears the value of `fallbackInfo`. Subsequent reads from it will return its default value.
  public mutating func clearFallbackInfo() {self._fallbackInfo = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _fallbackInfo: Google_Maps_Routes_V1_FallbackInfo? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.maps.routes.v1"

extension Google_Maps_Routes_V1_ComputeRoutesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ComputeRoutesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "routes"),
    2: .standard(proto: "fallback_info"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.routes) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._fallbackInfo) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.routes.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.routes, fieldNumber: 1)
    }
    if let v = self._fallbackInfo {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Maps_Routes_V1_ComputeRoutesResponse, rhs: Google_Maps_Routes_V1_ComputeRoutesResponse) -> Bool {
    if lhs.routes != rhs.routes {return false}
    if lhs._fallbackInfo != rhs._fallbackInfo {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
