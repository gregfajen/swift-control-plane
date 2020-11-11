// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/actions/type/date_range.proto
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

/// Represents a range based on whole or partial calendar dates, e.g. the
/// duration of a hotel reservation or the Common Era. This can represent:
///
/// * A range between full dates, e.g. the duration of a hotel reservation
/// * A range between years, e.g. a historical era
/// * A range between year/month dates, e.g. the duration of a job on a resume
/// * A range beginning in a year, e.g. the Common Era
/// * A range ending on a specific date, e.g. the period of time before an event
///
/// While [google.type.Date][google.type.Date] allows zero years, DateRange does not. Year must
/// always be non-zero.
///
/// End cannot be chronologically before start. For example, if start has year
/// 2000, end cannot have year 1999.
///
/// When both set, start and end must have exactly the same precision. That is,
/// they must have the same fields populated with non-zero values. For example,
/// if start specifies only year and month, then end must also specify only year
/// and month (but not day).
///
/// The date range is inclusive. That is, the dates specified by start and end
/// are part of the date range. For example, the date January 1, 2000 falls
/// within any date with start or end equal to January 1, 2000. When determining
/// whether a date is inside a date range, the date should only be compared to
/// start and end when those values are set.
///
/// When a date and date range are specified to different degrees of precision,
/// the rules for evaluating whether that date is inside the date range are as
/// follows:
///
///  * When comparing the date to the start of the date range, unspecified months
///    should be replaced with 1, and unspecified days should be replaced with 1.
///    For example, the year 2000 is within the date range with start equal to
///    January 1, 2000 and no end. And the date January 1, 2000 is within the
///    date range with start equal to the year 2000 and no end.
///
///  * When comparing the date to the end of the date range, unspecified months
///    should be replaced with 12, and unspecified days should be replaced with
///    the last valid day for the month/year. For example, the year 2000 is
///    within the date range with start equal to January 1, 1999 and end equal to
///    December 31, 2000. And the date December 31, 2001 is within the date range
///    with start equal to the year 2000 and end equal to the year 2001.
///
/// The semantics of start and end are the same as those of [google.type.Date][google.type.Date],
/// except that year must always be non-zero in DateRange.
public struct Google_Actions_Type_DateRange {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Date at which the date range begins. If unset, the date range has no
  /// beginning bound.
  public var start: Google_Type_Date {
    get {return _start ?? Google_Type_Date()}
    set {_start = newValue}
  }
  /// Returns true if `start` has been explicitly set.
  public var hasStart: Bool {return self._start != nil}
  /// Clears the value of `start`. Subsequent reads from it will return its default value.
  public mutating func clearStart() {self._start = nil}

  /// Date at which the date range ends. If unset, the date range has no ending
  /// bound.
  public var end: Google_Type_Date {
    get {return _end ?? Google_Type_Date()}
    set {_end = newValue}
  }
  /// Returns true if `end` has been explicitly set.
  public var hasEnd: Bool {return self._end != nil}
  /// Clears the value of `end`. Subsequent reads from it will return its default value.
  public mutating func clearEnd() {self._end = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _start: Google_Type_Date? = nil
  fileprivate var _end: Google_Type_Date? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.actions.type"

extension Google_Actions_Type_DateRange: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".DateRange"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "start"),
    2: .same(proto: "end"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._start) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._end) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._start {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._end {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Actions_Type_DateRange, rhs: Google_Actions_Type_DateRange) -> Bool {
    if lhs._start != rhs._start {return false}
    if lhs._end != rhs._end {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}