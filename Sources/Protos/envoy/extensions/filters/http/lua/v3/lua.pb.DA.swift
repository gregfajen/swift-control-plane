// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/extensions/filters/http/lua/v3/lua.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

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

public struct Envoy_Extensions_Filters_Http_Lua_V3_Lua {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The Lua code that Envoy will execute. This can be a very small script that
  /// further loads code from disk if desired. Note that if JSON configuration is used, the code must
  /// be properly escaped. YAML configuration may be easier to read since YAML supports multi-line
  /// strings so complex scripts can be easily expressed inline in the configuration.
  public var inlineCode: String = String()

  /// Map of named Lua source codes that can be referenced in :ref:`LuaPerRoute
  /// <envoy_v3_api_msg_extensions.filters.http.lua.v3.LuaPerRoute>`. The Lua source codes can be
  /// loaded from inline string or local files.
  ///
  /// Example:
  ///
  /// .. code-block:: yaml
  ///
  ///   source_codes:
  ///     hello.lua:
  ///       inline_string: |
  ///         function envoy_on_response(response_handle)
  ///           -- Do something.
  ///         end
  ///     world.lua:
  ///       filename: /etc/lua/world.lua
  public var sourceCodes: Dictionary<String,Envoy_Config_Core_V3_DataSource> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

public struct Envoy_Extensions_Filters_Http_Lua_V3_LuaPerRoute {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var override: Envoy_Extensions_Filters_Http_Lua_V3_LuaPerRoute.OneOf_Override? = nil

  /// Disable the Lua filter for this particular vhost or route. If disabled is specified in
  /// multiple per-filter-configs, the most specific one will be used.
  public var disabled: Bool {
    get {
      if case .disabled(let v)? = override {return v}
      return false
    }
    set {override = .disabled(newValue)}
  }

  /// A name of a Lua source code stored in
  /// :ref:`Lua.source_codes <envoy_v3_api_field_extensions.filters.http.lua.v3.Lua.source_codes>`.
  public var name: String {
    get {
      if case .name(let v)? = override {return v}
      return String()
    }
    set {override = .name(newValue)}
  }

  /// A configured per-route Lua source code that can be served by RDS or provided inline.
  public var sourceCode: Envoy_Config_Core_V3_DataSource {
    get {
      if case .sourceCode(let v)? = override {return v}
      return Envoy_Config_Core_V3_DataSource()
    }
    set {override = .sourceCode(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Override: Equatable {
    /// Disable the Lua filter for this particular vhost or route. If disabled is specified in
    /// multiple per-filter-configs, the most specific one will be used.
    case disabled(Bool)
    /// A name of a Lua source code stored in
    /// :ref:`Lua.source_codes <envoy_v3_api_field_extensions.filters.http.lua.v3.Lua.source_codes>`.
    case name(String)
    /// A configured per-route Lua source code that can be served by RDS or provided inline.
    case sourceCode(Envoy_Config_Core_V3_DataSource)

  #if !swift(>=4.1)
    public static func ==(lhs: Envoy_Extensions_Filters_Http_Lua_V3_LuaPerRoute.OneOf_Override, rhs: Envoy_Extensions_Filters_Http_Lua_V3_LuaPerRoute.OneOf_Override) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.disabled, .disabled): return {
        guard case .disabled(let l) = lhs, case .disabled(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.name, .name): return {
        guard case .name(let l) = lhs, case .name(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.sourceCode, .sourceCode): return {
        guard case .sourceCode(let l) = lhs, case .sourceCode(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.extensions.filters.http.lua.v3"

extension Envoy_Extensions_Filters_Http_Lua_V3_Lua: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Lua"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "inline_code"),
    2: .standard(proto: "source_codes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.inlineCode) }()
      case 2: try { try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Envoy_Config_Core_V3_DataSource>.self, value: &self.sourceCodes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.inlineCode.isEmpty {
      try visitor.visitSingularStringField(value: self.inlineCode, fieldNumber: 1)
    }
    if !self.sourceCodes.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Envoy_Config_Core_V3_DataSource>.self, value: self.sourceCodes, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Lua_V3_Lua, rhs: Envoy_Extensions_Filters_Http_Lua_V3_Lua) -> Bool {
    if lhs.inlineCode != rhs.inlineCode {return false}
    if lhs.sourceCodes != rhs.sourceCodes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Envoy_Extensions_Filters_Http_Lua_V3_LuaPerRoute: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LuaPerRoute"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "disabled"),
    2: .same(proto: "name"),
    3: .standard(proto: "source_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.override != nil {try decoder.handleConflictingOneOf()}
        var v: Bool?
        try decoder.decodeSingularBoolField(value: &v)
        if let v = v {self.override = .disabled(v)}
      }()
      case 2: try {
        if self.override != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.override = .name(v)}
      }()
      case 3: try {
        var v: Envoy_Config_Core_V3_DataSource?
        if let current = self.override {
          try decoder.handleConflictingOneOf()
          if case .sourceCode(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.override = .sourceCode(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.override {
    case .disabled?: try {
      guard case .disabled(let v)? = self.override else { preconditionFailure() }
      try visitor.visitSingularBoolField(value: v, fieldNumber: 1)
    }()
    case .name?: try {
      guard case .name(let v)? = self.override else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case .sourceCode?: try {
      guard case .sourceCode(let v)? = self.override else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Extensions_Filters_Http_Lua_V3_LuaPerRoute, rhs: Envoy_Extensions_Filters_Http_Lua_V3_LuaPerRoute) -> Bool {
    if lhs.override != rhs.override {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}