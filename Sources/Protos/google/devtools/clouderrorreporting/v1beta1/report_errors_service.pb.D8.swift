// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/devtools/clouderrorreporting/v1beta1/report_errors_service.proto
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

/// A request for reporting an individual error event.
public struct Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of the Google Cloud Platform project. Written
  /// as `projects/` plus the
  /// [Google Cloud Platform project
  /// ID](https://support.google.com/cloud/answer/6158840). Example:
  /// `projects/my-project-123`.
  public var projectName: String {
    get {return _storage._projectName}
    set {_uniqueStorage()._projectName = newValue}
  }

  /// Required. The error event to be reported.
  public var event: Google_Devtools_Clouderrorreporting_V1beta1_ReportedErrorEvent {
    get {return _storage._event ?? Google_Devtools_Clouderrorreporting_V1beta1_ReportedErrorEvent()}
    set {_uniqueStorage()._event = newValue}
  }
  /// Returns true if `event` has been explicitly set.
  public var hasEvent: Bool {return _storage._event != nil}
  /// Clears the value of `event`. Subsequent reads from it will return its default value.
  public mutating func clearEvent() {_uniqueStorage()._event = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Response for reporting an individual error event.
/// Data may be added to this message in the future.
public struct Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// An error event which is reported to the Error Reporting system.
public struct Google_Devtools_Clouderrorreporting_V1beta1_ReportedErrorEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. Time when the event occurred.
  /// If not provided, the time when the event was received by the
  /// Error Reporting system will be used.
  public var eventTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _eventTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_eventTime = newValue}
  }
  /// Returns true if `eventTime` has been explicitly set.
  public var hasEventTime: Bool {return self._eventTime != nil}
  /// Clears the value of `eventTime`. Subsequent reads from it will return its default value.
  public mutating func clearEventTime() {self._eventTime = nil}

  /// Required. The service context in which this error has occurred.
  public var serviceContext: Google_Devtools_Clouderrorreporting_V1beta1_ServiceContext {
    get {return _serviceContext ?? Google_Devtools_Clouderrorreporting_V1beta1_ServiceContext()}
    set {_serviceContext = newValue}
  }
  /// Returns true if `serviceContext` has been explicitly set.
  public var hasServiceContext: Bool {return self._serviceContext != nil}
  /// Clears the value of `serviceContext`. Subsequent reads from it will return its default value.
  public mutating func clearServiceContext() {self._serviceContext = nil}

  /// Required. The error message.
  /// If no `context.reportLocation` is provided, the message must contain a
  /// header (typically consisting of the exception type name and an error
  /// message) and an exception stack trace in one of the supported programming
  /// languages and formats.
  /// Supported languages are Java, Python, JavaScript, Ruby, C#, PHP, and Go.
  /// Supported stack trace formats are:
  ///
  /// * **Java**: Must be the return value of
  /// [`Throwable.printStackTrace()`](https://docs.oracle.com/javase/7/docs/api/java/lang/Throwable.html#printStackTrace%28%29).
  /// * **Python**: Must be the return value of
  /// [`traceback.format_exc()`](https://docs.python.org/2/library/traceback.html#traceback.format_exc).
  /// * **JavaScript**: Must be the value of
  /// [`error.stack`](https://github.com/v8/v8/wiki/Stack-Trace-API) as returned
  /// by V8.
  /// * **Ruby**: Must contain frames returned by
  /// [`Exception.backtrace`](https://ruby-doc.org/core-2.2.0/Exception.html#method-i-backtrace).
  /// * **C#**: Must be the return value of
  /// [`Exception.ToString()`](https://msdn.microsoft.com/en-us/library/system.exception.tostring.aspx).
  /// * **PHP**: Must start with `PHP (Notice|Parse error|Fatal error|Warning)`
  /// and contain the result of
  /// [`(string)$exception`](http://php.net/manual/en/exception.tostring.php).
  /// * **Go**: Must be the return value of
  /// [`runtime.Stack()`](https://golang.org/pkg/runtime/debug/#Stack).
  public var message: String = String()

  /// Optional. A description of the context in which the error occurred.
  public var context: Google_Devtools_Clouderrorreporting_V1beta1_ErrorContext {
    get {return _context ?? Google_Devtools_Clouderrorreporting_V1beta1_ErrorContext()}
    set {_context = newValue}
  }
  /// Returns true if `context` has been explicitly set.
  public var hasContext: Bool {return self._context != nil}
  /// Clears the value of `context`. Subsequent reads from it will return its default value.
  public mutating func clearContext() {self._context = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _eventTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _serviceContext: Google_Devtools_Clouderrorreporting_V1beta1_ServiceContext? = nil
  fileprivate var _context: Google_Devtools_Clouderrorreporting_V1beta1_ErrorContext? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.devtools.clouderrorreporting.v1beta1"

extension Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ReportErrorEventRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "project_name"),
    2: .same(proto: "event"),
  ]

  fileprivate class _StorageClass {
    var _projectName: String = String()
    var _event: Google_Devtools_Clouderrorreporting_V1beta1_ReportedErrorEvent? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _projectName = source._projectName
      _event = source._event
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._projectName) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._event) }()
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._projectName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._projectName, fieldNumber: 1)
      }
      if let v = _storage._event {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventRequest, rhs: Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventRequest) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._projectName != rhs_storage._projectName {return false}
        if _storage._event != rhs_storage._event {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ReportErrorEventResponse"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventResponse, rhs: Google_Devtools_Clouderrorreporting_V1beta1_ReportErrorEventResponse) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Devtools_Clouderrorreporting_V1beta1_ReportedErrorEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ReportedErrorEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "event_time"),
    2: .standard(proto: "service_context"),
    3: .same(proto: "message"),
    4: .same(proto: "context"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._eventTime) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._serviceContext) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.message) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._context) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._eventTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._serviceContext {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.message.isEmpty {
      try visitor.visitSingularStringField(value: self.message, fieldNumber: 3)
    }
    if let v = self._context {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Devtools_Clouderrorreporting_V1beta1_ReportedErrorEvent, rhs: Google_Devtools_Clouderrorreporting_V1beta1_ReportedErrorEvent) -> Bool {
    if lhs._eventTime != rhs._eventTime {return false}
    if lhs._serviceContext != rhs._serviceContext {return false}
    if lhs.message != rhs.message {return false}
    if lhs._context != rhs._context {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
