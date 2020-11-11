// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/dialogflow/v2/context.proto
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

/// Dialogflow contexts are similar to natural language context. If a person says
/// to you "they are orange", you need context in order to understand what "they"
/// is referring to. Similarly, for Dialogflow to handle an end-user expression
/// like that, it needs to be provided with context in order to correctly match
/// an intent.
///
/// Using contexts, you can control the flow of a conversation. You can configure
/// contexts for an intent by setting input and output contexts, which are
/// identified by string names. When an intent is matched, any configured output
/// contexts for that intent become active. While any contexts are active,
/// Dialogflow is more likely to match intents that are configured with input
/// contexts that correspond to the currently active contexts.
///
/// For more information about context, see the
/// [Contexts guide](https://cloud.google.com/dialogflow/docs/contexts-overview).
public struct Google_Cloud_Dialogflow_V2_Context {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The unique identifier of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`,
  /// or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>/contexts/<Context ID>`.
  ///
  /// The `Context ID` is always converted to lowercase, may only contain
  /// characters in a-zA-Z0-9_-% and may be at most 250 bytes long.
  ///
  /// If `Environment ID` is not specified, we assume default 'draft'
  /// environment. If `User ID` is not specified, we assume default '-' user.
  ///
  /// The following context names are reserved for internal use by Dialogflow.
  /// You should not use these contexts or create contexts with these names:
  ///
  /// * `__system_counters__`
  /// * `*_id_dialog_context`
  /// * `*_dialog_params_size`
  public var name: String = String()

  /// Optional. The number of conversational query requests after which the
  /// context expires. The default is `0`. If set to `0`, the context expires
  /// immediately. Contexts expire automatically after 20 minutes if there
  /// are no matching queries.
  public var lifespanCount: Int32 = 0

  /// Optional. The collection of parameters associated with this context.
  ///
  /// Depending on your protocol or client library language, this is a
  /// map, associative array, symbol table, dictionary, or JSON object
  /// composed of a collection of (MapKey, MapValue) pairs:
  ///
  /// -   MapKey type: string
  /// -   MapKey value: parameter name
  /// -   MapValue type:
  ///     -   If parameter's entity type is a composite entity: map
  ///     -   Else: string or number, depending on parameter value type
  /// -   MapValue value:
  ///     -   If parameter's entity type is a composite entity:
  ///         map from composite entity property names to property values
  ///     -   Else: parameter value
  public var parameters: SwiftProtobuf.Google_Protobuf_Struct {
    get {return _parameters ?? SwiftProtobuf.Google_Protobuf_Struct()}
    set {_parameters = newValue}
  }
  /// Returns true if `parameters` has been explicitly set.
  public var hasParameters: Bool {return self._parameters != nil}
  /// Clears the value of `parameters`. Subsequent reads from it will return its default value.
  public mutating func clearParameters() {self._parameters = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _parameters: SwiftProtobuf.Google_Protobuf_Struct? = nil
}

/// The request message for [Contexts.ListContexts][google.cloud.dialogflow.v2.Contexts.ListContexts].
public struct Google_Cloud_Dialogflow_V2_ListContextsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The session to list all contexts from.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
  /// `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>`.
  /// If `Environment ID` is not specified, we assume default 'draft'
  /// environment. If `User ID` is not specified, we assume default '-' user.
  public var parent: String = String()

  /// Optional. The maximum number of items to return in a single page. By
  /// default 100 and at most 1000.
  public var pageSize: Int32 = 0

  /// Optional. The next_page_token value returned from a previous list request.
  public var pageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The response message for [Contexts.ListContexts][google.cloud.dialogflow.v2.Contexts.ListContexts].
public struct Google_Cloud_Dialogflow_V2_ListContextsResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of contexts. There will be a maximum number of items
  /// returned based on the page_size field in the request.
  public var contexts: [Google_Cloud_Dialogflow_V2_Context] = []

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  public var nextPageToken: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The request message for [Contexts.GetContext][google.cloud.dialogflow.v2.Contexts.GetContext].
public struct Google_Cloud_Dialogflow_V2_GetContextRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the context. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`
  /// or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>/contexts/<Context ID>`.
  /// If `Environment ID` is not specified, we assume default 'draft'
  /// environment. If `User ID` is not specified, we assume default '-' user.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The request message for [Contexts.CreateContext][google.cloud.dialogflow.v2.Contexts.CreateContext].
public struct Google_Cloud_Dialogflow_V2_CreateContextRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The session to create a context for.
  /// Format: `projects/<Project ID>/agent/sessions/<Session ID>` or
  /// `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>`.
  /// If `Environment ID` is not specified, we assume default 'draft'
  /// environment. If `User ID` is not specified, we assume default '-' user.
  public var parent: String = String()

  /// Required. The context to create.
  public var context: Google_Cloud_Dialogflow_V2_Context {
    get {return _context ?? Google_Cloud_Dialogflow_V2_Context()}
    set {_context = newValue}
  }
  /// Returns true if `context` has been explicitly set.
  public var hasContext: Bool {return self._context != nil}
  /// Clears the value of `context`. Subsequent reads from it will return its default value.
  public mutating func clearContext() {self._context = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _context: Google_Cloud_Dialogflow_V2_Context? = nil
}

/// The request message for [Contexts.UpdateContext][google.cloud.dialogflow.v2.Contexts.UpdateContext].
public struct Google_Cloud_Dialogflow_V2_UpdateContextRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The context to update.
  public var context: Google_Cloud_Dialogflow_V2_Context {
    get {return _context ?? Google_Cloud_Dialogflow_V2_Context()}
    set {_context = newValue}
  }
  /// Returns true if `context` has been explicitly set.
  public var hasContext: Bool {return self._context != nil}
  /// Clears the value of `context`. Subsequent reads from it will return its default value.
  public mutating func clearContext() {self._context = nil}

  /// Optional. The mask to control which fields get updated.
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

  fileprivate var _context: Google_Cloud_Dialogflow_V2_Context? = nil
  fileprivate var _updateMask: SwiftProtobuf.Google_Protobuf_FieldMask? = nil
}

/// The request message for [Contexts.DeleteContext][google.cloud.dialogflow.v2.Contexts.DeleteContext].
public struct Google_Cloud_Dialogflow_V2_DeleteContextRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the context to delete. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>/contexts/<Context ID>`
  /// or `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
  /// ID>/sessions/<Session ID>/contexts/<Context ID>`.
  /// If `Environment ID` is not specified, we assume default 'draft'
  /// environment. If `User ID` is not specified, we assume default '-' user.
  public var name: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The request message for [Contexts.DeleteAllContexts][google.cloud.dialogflow.v2.Contexts.DeleteAllContexts].
public struct Google_Cloud_Dialogflow_V2_DeleteAllContextsRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The name of the session to delete all contexts from. Format:
  /// `projects/<Project ID>/agent/sessions/<Session ID>` or `projects/<Project
  /// ID>/agent/environments/<Environment ID>/users/<User ID>/sessions/<Session
  /// ID>`.
  /// If `Environment ID` is not specified we assume default 'draft' environment.
  /// If `User ID` is not specified, we assume default '-' user.
  public var parent: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.dialogflow.v2"

extension Google_Cloud_Dialogflow_V2_Context: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Context"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "lifespan_count"),
    3: .same(proto: "parameters"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.lifespanCount) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._parameters) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.lifespanCount != 0 {
      try visitor.visitSingularInt32Field(value: self.lifespanCount, fieldNumber: 2)
    }
    if let v = self._parameters {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_Context, rhs: Google_Cloud_Dialogflow_V2_Context) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.lifespanCount != rhs.lifespanCount {return false}
    if lhs._parameters != rhs._parameters {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_V2_ListContextsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListContextsRequest"
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

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_ListContextsRequest, rhs: Google_Cloud_Dialogflow_V2_ListContextsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.pageSize != rhs.pageSize {return false}
    if lhs.pageToken != rhs.pageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_V2_ListContextsResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListContextsResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "contexts"),
    2: .standard(proto: "next_page_token"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.contexts) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.nextPageToken) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.contexts.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.contexts, fieldNumber: 1)
    }
    if !self.nextPageToken.isEmpty {
      try visitor.visitSingularStringField(value: self.nextPageToken, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_ListContextsResponse, rhs: Google_Cloud_Dialogflow_V2_ListContextsResponse) -> Bool {
    if lhs.contexts != rhs.contexts {return false}
    if lhs.nextPageToken != rhs.nextPageToken {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_V2_GetContextRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".GetContextRequest"
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

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_GetContextRequest, rhs: Google_Cloud_Dialogflow_V2_GetContextRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_V2_CreateContextRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CreateContextRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
    2: .same(proto: "context"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._context) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    if let v = self._context {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_CreateContextRequest, rhs: Google_Cloud_Dialogflow_V2_CreateContextRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs._context != rhs._context {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_V2_UpdateContextRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".UpdateContextRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "context"),
    2: .standard(proto: "update_mask"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._context) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._updateMask) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._context {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._updateMask {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_UpdateContextRequest, rhs: Google_Cloud_Dialogflow_V2_UpdateContextRequest) -> Bool {
    if lhs._context != rhs._context {return false}
    if lhs._updateMask != rhs._updateMask {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_V2_DeleteContextRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteContextRequest"
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

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_DeleteContextRequest, rhs: Google_Cloud_Dialogflow_V2_DeleteContextRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Dialogflow_V2_DeleteAllContextsRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DeleteAllContextsRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "parent"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.parent) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.parent.isEmpty {
      try visitor.visitSingularStringField(value: self.parent, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Dialogflow_V2_DeleteAllContextsRequest, rhs: Google_Cloud_Dialogflow_V2_DeleteAllContextsRequest) -> Bool {
    if lhs.parent != rhs.parent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
