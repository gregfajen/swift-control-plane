// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/datalabeling/v1beta1/instruction.proto
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

/// Instruction of how to perform the labeling task for human operators.
/// Currently only PDF instruction is supported.
public struct Google_Cloud_Datalabeling_V1beta1_Instruction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Output only. Instruction resource name, format:
  /// projects/{project_id}/instructions/{instruction_id}
  public var name: String = String()

  /// Required. The display name of the instruction. Maximum of 64 characters.
  public var displayName: String = String()

  /// Optional. User-provided description of the instruction.
  /// The description can be up to 10000 characters long.
  public var description_p: String = String()

  /// Output only. Creation time of instruction.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Output only. Last update time of instruction.
  public var updateTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _updateTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_updateTime = newValue}
  }
  /// Returns true if `updateTime` has been explicitly set.
  public var hasUpdateTime: Bool {return self._updateTime != nil}
  /// Clears the value of `updateTime`. Subsequent reads from it will return its default value.
  public mutating func clearUpdateTime() {self._updateTime = nil}

  /// Required. The data type of this instruction.
  public var dataType: Google_Cloud_Datalabeling_V1beta1_DataType = .unspecified

  /// Deprecated: this instruction format is not supported any more.
  /// Instruction from a CSV file, such as for classification task.
  /// The CSV file should have exact two columns, in the following format:
  ///
  /// * The first column is labeled data, such as an image reference, text.
  /// * The second column is comma separated labels associated with data.
  public var csvInstruction: Google_Cloud_Datalabeling_V1beta1_CsvInstruction {
    get {return _csvInstruction ?? Google_Cloud_Datalabeling_V1beta1_CsvInstruction()}
    set {_csvInstruction = newValue}
  }
  /// Returns true if `csvInstruction` has been explicitly set.
  public var hasCsvInstruction: Bool {return self._csvInstruction != nil}
  /// Clears the value of `csvInstruction`. Subsequent reads from it will return its default value.
  public mutating func clearCsvInstruction() {self._csvInstruction = nil}

  /// Instruction from a PDF document. The PDF should be in a Cloud Storage
  /// bucket.
  public var pdfInstruction: Google_Cloud_Datalabeling_V1beta1_PdfInstruction {
    get {return _pdfInstruction ?? Google_Cloud_Datalabeling_V1beta1_PdfInstruction()}
    set {_pdfInstruction = newValue}
  }
  /// Returns true if `pdfInstruction` has been explicitly set.
  public var hasPdfInstruction: Bool {return self._pdfInstruction != nil}
  /// Clears the value of `pdfInstruction`. Subsequent reads from it will return its default value.
  public mutating func clearPdfInstruction() {self._pdfInstruction = nil}

  /// Output only. The names of any related resources that are blocking changes
  /// to the instruction.
  public var blockingResources: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _updateTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
  fileprivate var _csvInstruction: Google_Cloud_Datalabeling_V1beta1_CsvInstruction? = nil
  fileprivate var _pdfInstruction: Google_Cloud_Datalabeling_V1beta1_PdfInstruction? = nil
}

/// Deprecated: this instruction format is not supported any more.
/// Instruction from a CSV file.
public struct Google_Cloud_Datalabeling_V1beta1_CsvInstruction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// CSV file for the instruction. Only gcs path is allowed.
  public var gcsFileUri: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Instruction from a PDF file.
public struct Google_Cloud_Datalabeling_V1beta1_PdfInstruction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// PDF file for the instruction. Only gcs path is allowed.
  public var gcsFileUri: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.datalabeling.v1beta1"

extension Google_Cloud_Datalabeling_V1beta1_Instruction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Instruction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "display_name"),
    3: .same(proto: "description"),
    4: .standard(proto: "create_time"),
    5: .standard(proto: "update_time"),
    6: .standard(proto: "data_type"),
    7: .standard(proto: "csv_instruction"),
    9: .standard(proto: "pdf_instruction"),
    10: .standard(proto: "blocking_resources"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.displayName) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.description_p) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 5: try { try decoder.decodeSingularMessageField(value: &self._updateTime) }()
      case 6: try { try decoder.decodeSingularEnumField(value: &self.dataType) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._csvInstruction) }()
      case 9: try { try decoder.decodeSingularMessageField(value: &self._pdfInstruction) }()
      case 10: try { try decoder.decodeRepeatedStringField(value: &self.blockingResources) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.displayName.isEmpty {
      try visitor.visitSingularStringField(value: self.displayName, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if let v = self._updateTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if self.dataType != .unspecified {
      try visitor.visitSingularEnumField(value: self.dataType, fieldNumber: 6)
    }
    if let v = self._csvInstruction {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    if let v = self._pdfInstruction {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }
    if !self.blockingResources.isEmpty {
      try visitor.visitRepeatedStringField(value: self.blockingResources, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datalabeling_V1beta1_Instruction, rhs: Google_Cloud_Datalabeling_V1beta1_Instruction) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.displayName != rhs.displayName {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs._updateTime != rhs._updateTime {return false}
    if lhs.dataType != rhs.dataType {return false}
    if lhs._csvInstruction != rhs._csvInstruction {return false}
    if lhs._pdfInstruction != rhs._pdfInstruction {return false}
    if lhs.blockingResources != rhs.blockingResources {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datalabeling_V1beta1_CsvInstruction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".CsvInstruction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gcs_file_uri"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.gcsFileUri) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.gcsFileUri.isEmpty {
      try visitor.visitSingularStringField(value: self.gcsFileUri, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datalabeling_V1beta1_CsvInstruction, rhs: Google_Cloud_Datalabeling_V1beta1_CsvInstruction) -> Bool {
    if lhs.gcsFileUri != rhs.gcsFileUri {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Datalabeling_V1beta1_PdfInstruction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PdfInstruction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "gcs_file_uri"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.gcsFileUri) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.gcsFileUri.isEmpty {
      try visitor.visitSingularStringField(value: self.gcsFileUri, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Datalabeling_V1beta1_PdfInstruction, rhs: Google_Cloud_Datalabeling_V1beta1_PdfInstruction) -> Bool {
    if lhs.gcsFileUri != rhs.gcsFileUri {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
