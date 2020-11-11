// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/vision/v1/text_annotation.proto
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

/// TextAnnotation contains a structured representation of OCR extracted text.
/// The hierarchy of an OCR extracted text structure is like this:
///     TextAnnotation -> Page -> Block -> Paragraph -> Word -> Symbol
/// Each structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please refer
/// to the [TextAnnotation.TextProperty][google.cloud.vision.v1.TextAnnotation.TextProperty] message definition below for more
/// detail.
public struct Google_Cloud_Vision_V1_TextAnnotation {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// List of pages detected by OCR.
  public var pages: [Google_Cloud_Vision_V1_Page] = []

  /// UTF-8 text detected on the pages.
  public var text: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Detected language for a structural component.
  public struct DetectedLanguage {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
    /// information, see
    /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
    public var languageCode: String = String()

    /// Confidence of detected language. Range [0, 1].
    public var confidence: Float = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  /// Detected start or end of a structural component.
  public struct DetectedBreak {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Detected break type.
    public var type: Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak.BreakType = .unknown

    /// True if break prepends the element.
    public var isPrefix: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    /// Enum to denote the type of break found. New line, space etc.
    public enum BreakType: SwiftProtobuf.Enum {
      public typealias RawValue = Int

      /// Unknown break label type.
      case unknown // = 0

      /// Regular space.
      case space // = 1

      /// Sure space (very wide).
      case sureSpace // = 2

      /// Line-wrapping break.
      case eolSureSpace // = 3

      /// End-line hyphen that is not present in text; does not co-occur with
      /// `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
      case hyphen // = 4

      /// Line break that ends a paragraph.
      case lineBreak // = 5
      case UNRECOGNIZED(Int)

      public init() {
        self = .unknown
      }

      public init?(rawValue: Int) {
        switch rawValue {
        case 0: self = .unknown
        case 1: self = .space
        case 2: self = .sureSpace
        case 3: self = .eolSureSpace
        case 4: self = .hyphen
        case 5: self = .lineBreak
        default: self = .UNRECOGNIZED(rawValue)
        }
      }

      public var rawValue: Int {
        switch self {
        case .unknown: return 0
        case .space: return 1
        case .sureSpace: return 2
        case .eolSureSpace: return 3
        case .hyphen: return 4
        case .lineBreak: return 5
        case .UNRECOGNIZED(let i): return i
        }
      }

    }

    public init() {}
  }

  /// Additional information detected on the structural component.
  public struct TextProperty {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// A list of detected languages together with confidence.
    public var detectedLanguages: [Google_Cloud_Vision_V1_TextAnnotation.DetectedLanguage] = []

    /// Detected start or end of a text segment.
    public var detectedBreak: Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak {
      get {return _detectedBreak ?? Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak()}
      set {_detectedBreak = newValue}
    }
    /// Returns true if `detectedBreak` has been explicitly set.
    public var hasDetectedBreak: Bool {return self._detectedBreak != nil}
    /// Clears the value of `detectedBreak`. Subsequent reads from it will return its default value.
    public mutating func clearDetectedBreak() {self._detectedBreak = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _detectedBreak: Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak? = nil
  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak.BreakType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak.BreakType] = [
    .unknown,
    .space,
    .sureSpace,
    .eolSureSpace,
    .hyphen,
    .lineBreak,
  ]
}

#endif  // swift(>=4.2)

/// Detected page from OCR.
public struct Google_Cloud_Vision_V1_Page {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Additional information detected on the page.
  public var property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty {
    get {return _property ?? Google_Cloud_Vision_V1_TextAnnotation.TextProperty()}
    set {_property = newValue}
  }
  /// Returns true if `property` has been explicitly set.
  public var hasProperty: Bool {return self._property != nil}
  /// Clears the value of `property`. Subsequent reads from it will return its default value.
  public mutating func clearProperty() {self._property = nil}

  /// Page width. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  public var width: Int32 = 0

  /// Page height. For PDFs the unit is points. For images (including
  /// TIFFs) the unit is pixels.
  public var height: Int32 = 0

  /// List of blocks of text, images etc on this page.
  public var blocks: [Google_Cloud_Vision_V1_Block] = []

  /// Confidence of the OCR results on the page. Range [0, 1].
  public var confidence: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty? = nil
}

/// Logical element on the page.
public struct Google_Cloud_Vision_V1_Block {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Additional information detected for the block.
  public var property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty {
    get {return _property ?? Google_Cloud_Vision_V1_TextAnnotation.TextProperty()}
    set {_property = newValue}
  }
  /// Returns true if `property` has been explicitly set.
  public var hasProperty: Bool {return self._property != nil}
  /// Clears the value of `property`. Subsequent reads from it will return its default value.
  public mutating func clearProperty() {self._property = nil}

  /// The bounding box for the block.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///
  /// * when the text is horizontal it might look like:
  ///
  ///         0----1
  ///         |    |
  ///         3----2
  ///
  /// * when it's rotated 180 degrees around the top-left corner it becomes:
  ///
  ///         2----3
  ///         |    |
  ///         1----0
  ///
  ///   and the vertex order will still be (0, 1, 2, 3).
  public var boundingBox: Google_Cloud_Vision_V1_BoundingPoly {
    get {return _boundingBox ?? Google_Cloud_Vision_V1_BoundingPoly()}
    set {_boundingBox = newValue}
  }
  /// Returns true if `boundingBox` has been explicitly set.
  public var hasBoundingBox: Bool {return self._boundingBox != nil}
  /// Clears the value of `boundingBox`. Subsequent reads from it will return its default value.
  public mutating func clearBoundingBox() {self._boundingBox = nil}

  /// List of paragraphs in this block (if this blocks is of type text).
  public var paragraphs: [Google_Cloud_Vision_V1_Paragraph] = []

  /// Detected block type (text, image etc) for this block.
  public var blockType: Google_Cloud_Vision_V1_Block.BlockType = .unknown

  /// Confidence of the OCR results on the block. Range [0, 1].
  public var confidence: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Type of a block (text, image etc) as identified by OCR.
  public enum BlockType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// Unknown block type.
    case unknown // = 0

    /// Regular text block.
    case text // = 1

    /// Table block.
    case table // = 2

    /// Image block.
    case picture // = 3

    /// Horizontal/vertical line box.
    case ruler // = 4

    /// Barcode block.
    case barcode // = 5
    case UNRECOGNIZED(Int)

    public init() {
      self = .unknown
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknown
      case 1: self = .text
      case 2: self = .table
      case 3: self = .picture
      case 4: self = .ruler
      case 5: self = .barcode
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unknown: return 0
      case .text: return 1
      case .table: return 2
      case .picture: return 3
      case .ruler: return 4
      case .barcode: return 5
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty? = nil
  fileprivate var _boundingBox: Google_Cloud_Vision_V1_BoundingPoly? = nil
}

#if swift(>=4.2)

extension Google_Cloud_Vision_V1_Block.BlockType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Vision_V1_Block.BlockType] = [
    .unknown,
    .text,
    .table,
    .picture,
    .ruler,
    .barcode,
  ]
}

#endif  // swift(>=4.2)

/// Structural unit of text representing a number of words in certain order.
public struct Google_Cloud_Vision_V1_Paragraph {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Additional information detected for the paragraph.
  public var property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty {
    get {return _property ?? Google_Cloud_Vision_V1_TextAnnotation.TextProperty()}
    set {_property = newValue}
  }
  /// Returns true if `property` has been explicitly set.
  public var hasProperty: Bool {return self._property != nil}
  /// Clears the value of `property`. Subsequent reads from it will return its default value.
  public mutating func clearProperty() {self._property = nil}

  /// The bounding box for the paragraph.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  public var boundingBox: Google_Cloud_Vision_V1_BoundingPoly {
    get {return _boundingBox ?? Google_Cloud_Vision_V1_BoundingPoly()}
    set {_boundingBox = newValue}
  }
  /// Returns true if `boundingBox` has been explicitly set.
  public var hasBoundingBox: Bool {return self._boundingBox != nil}
  /// Clears the value of `boundingBox`. Subsequent reads from it will return its default value.
  public mutating func clearBoundingBox() {self._boundingBox = nil}

  /// List of all words in this paragraph.
  public var words: [Google_Cloud_Vision_V1_Word] = []

  /// Confidence of the OCR results for the paragraph. Range [0, 1].
  public var confidence: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty? = nil
  fileprivate var _boundingBox: Google_Cloud_Vision_V1_BoundingPoly? = nil
}

/// A word representation.
public struct Google_Cloud_Vision_V1_Word {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Additional information detected for the word.
  public var property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty {
    get {return _property ?? Google_Cloud_Vision_V1_TextAnnotation.TextProperty()}
    set {_property = newValue}
  }
  /// Returns true if `property` has been explicitly set.
  public var hasProperty: Bool {return self._property != nil}
  /// Clears the value of `property`. Subsequent reads from it will return its default value.
  public mutating func clearProperty() {self._property = nil}

  /// The bounding box for the word.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  public var boundingBox: Google_Cloud_Vision_V1_BoundingPoly {
    get {return _boundingBox ?? Google_Cloud_Vision_V1_BoundingPoly()}
    set {_boundingBox = newValue}
  }
  /// Returns true if `boundingBox` has been explicitly set.
  public var hasBoundingBox: Bool {return self._boundingBox != nil}
  /// Clears the value of `boundingBox`. Subsequent reads from it will return its default value.
  public mutating func clearBoundingBox() {self._boundingBox = nil}

  /// List of symbols in the word.
  /// The order of the symbols follows the natural reading order.
  public var symbols: [Google_Cloud_Vision_V1_Symbol] = []

  /// Confidence of the OCR results for the word. Range [0, 1].
  public var confidence: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty? = nil
  fileprivate var _boundingBox: Google_Cloud_Vision_V1_BoundingPoly? = nil
}

/// A single symbol representation.
public struct Google_Cloud_Vision_V1_Symbol {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Additional information detected for the symbol.
  public var property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty {
    get {return _property ?? Google_Cloud_Vision_V1_TextAnnotation.TextProperty()}
    set {_property = newValue}
  }
  /// Returns true if `property` has been explicitly set.
  public var hasProperty: Bool {return self._property != nil}
  /// Clears the value of `property`. Subsequent reads from it will return its default value.
  public mutating func clearProperty() {self._property = nil}

  /// The bounding box for the symbol.
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation.
  /// For example:
  ///   * when the text is horizontal it might look like:
  ///      0----1
  ///      |    |
  ///      3----2
  ///   * when it's rotated 180 degrees around the top-left corner it becomes:
  ///      2----3
  ///      |    |
  ///      1----0
  ///   and the vertex order will still be (0, 1, 2, 3).
  public var boundingBox: Google_Cloud_Vision_V1_BoundingPoly {
    get {return _boundingBox ?? Google_Cloud_Vision_V1_BoundingPoly()}
    set {_boundingBox = newValue}
  }
  /// Returns true if `boundingBox` has been explicitly set.
  public var hasBoundingBox: Bool {return self._boundingBox != nil}
  /// Clears the value of `boundingBox`. Subsequent reads from it will return its default value.
  public mutating func clearBoundingBox() {self._boundingBox = nil}

  /// The actual UTF-8 representation of the symbol.
  public var text: String = String()

  /// Confidence of the OCR results for the symbol. Range [0, 1].
  public var confidence: Float = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _property: Google_Cloud_Vision_V1_TextAnnotation.TextProperty? = nil
  fileprivate var _boundingBox: Google_Cloud_Vision_V1_BoundingPoly? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.vision.v1"

extension Google_Cloud_Vision_V1_TextAnnotation: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".TextAnnotation"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "pages"),
    2: .same(proto: "text"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.pages) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.text) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.pages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.pages, fieldNumber: 1)
    }
    if !self.text.isEmpty {
      try visitor.visitSingularStringField(value: self.text, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_TextAnnotation, rhs: Google_Cloud_Vision_V1_TextAnnotation) -> Bool {
    if lhs.pages != rhs.pages {return false}
    if lhs.text != rhs.text {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_TextAnnotation.DetectedLanguage: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Vision_V1_TextAnnotation.protoMessageName + ".DetectedLanguage"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "language_code"),
    2: .same(proto: "confidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      case 2: try { try decoder.decodeSingularFloatField(value: &self.confidence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 1)
    }
    if self.confidence != 0 {
      try visitor.visitSingularFloatField(value: self.confidence, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_TextAnnotation.DetectedLanguage, rhs: Google_Cloud_Vision_V1_TextAnnotation.DetectedLanguage) -> Bool {
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.confidence != rhs.confidence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Vision_V1_TextAnnotation.protoMessageName + ".DetectedBreak"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .standard(proto: "is_prefix"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self.isPrefix) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .unknown {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if self.isPrefix != false {
      try visitor.visitSingularBoolField(value: self.isPrefix, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak, rhs: Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.isPrefix != rhs.isPrefix {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_TextAnnotation.DetectedBreak.BreakType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "SPACE"),
    2: .same(proto: "SURE_SPACE"),
    3: .same(proto: "EOL_SURE_SPACE"),
    4: .same(proto: "HYPHEN"),
    5: .same(proto: "LINE_BREAK"),
  ]
}

extension Google_Cloud_Vision_V1_TextAnnotation.TextProperty: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Google_Cloud_Vision_V1_TextAnnotation.protoMessageName + ".TextProperty"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "detected_languages"),
    2: .standard(proto: "detected_break"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.detectedLanguages) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._detectedBreak) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.detectedLanguages.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.detectedLanguages, fieldNumber: 1)
    }
    if let v = self._detectedBreak {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_TextAnnotation.TextProperty, rhs: Google_Cloud_Vision_V1_TextAnnotation.TextProperty) -> Bool {
    if lhs.detectedLanguages != rhs.detectedLanguages {return false}
    if lhs._detectedBreak != rhs._detectedBreak {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_Page: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Page"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "property"),
    2: .same(proto: "width"),
    3: .same(proto: "height"),
    4: .same(proto: "blocks"),
    5: .same(proto: "confidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._property) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.width) }()
      case 3: try { try decoder.decodeSingularInt32Field(value: &self.height) }()
      case 4: try { try decoder.decodeRepeatedMessageField(value: &self.blocks) }()
      case 5: try { try decoder.decodeSingularFloatField(value: &self.confidence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._property {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if self.width != 0 {
      try visitor.visitSingularInt32Field(value: self.width, fieldNumber: 2)
    }
    if self.height != 0 {
      try visitor.visitSingularInt32Field(value: self.height, fieldNumber: 3)
    }
    if !self.blocks.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.blocks, fieldNumber: 4)
    }
    if self.confidence != 0 {
      try visitor.visitSingularFloatField(value: self.confidence, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_Page, rhs: Google_Cloud_Vision_V1_Page) -> Bool {
    if lhs._property != rhs._property {return false}
    if lhs.width != rhs.width {return false}
    if lhs.height != rhs.height {return false}
    if lhs.blocks != rhs.blocks {return false}
    if lhs.confidence != rhs.confidence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_Block: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Block"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "property"),
    2: .standard(proto: "bounding_box"),
    3: .same(proto: "paragraphs"),
    4: .standard(proto: "block_type"),
    5: .same(proto: "confidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._property) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._boundingBox) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.paragraphs) }()
      case 4: try { try decoder.decodeSingularEnumField(value: &self.blockType) }()
      case 5: try { try decoder.decodeSingularFloatField(value: &self.confidence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._property {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._boundingBox {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.paragraphs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.paragraphs, fieldNumber: 3)
    }
    if self.blockType != .unknown {
      try visitor.visitSingularEnumField(value: self.blockType, fieldNumber: 4)
    }
    if self.confidence != 0 {
      try visitor.visitSingularFloatField(value: self.confidence, fieldNumber: 5)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_Block, rhs: Google_Cloud_Vision_V1_Block) -> Bool {
    if lhs._property != rhs._property {return false}
    if lhs._boundingBox != rhs._boundingBox {return false}
    if lhs.paragraphs != rhs.paragraphs {return false}
    if lhs.blockType != rhs.blockType {return false}
    if lhs.confidence != rhs.confidence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_Block.BlockType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN"),
    1: .same(proto: "TEXT"),
    2: .same(proto: "TABLE"),
    3: .same(proto: "PICTURE"),
    4: .same(proto: "RULER"),
    5: .same(proto: "BARCODE"),
  ]
}

extension Google_Cloud_Vision_V1_Paragraph: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Paragraph"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "property"),
    2: .standard(proto: "bounding_box"),
    3: .same(proto: "words"),
    4: .same(proto: "confidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._property) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._boundingBox) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.words) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.confidence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._property {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._boundingBox {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.words.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.words, fieldNumber: 3)
    }
    if self.confidence != 0 {
      try visitor.visitSingularFloatField(value: self.confidence, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_Paragraph, rhs: Google_Cloud_Vision_V1_Paragraph) -> Bool {
    if lhs._property != rhs._property {return false}
    if lhs._boundingBox != rhs._boundingBox {return false}
    if lhs.words != rhs.words {return false}
    if lhs.confidence != rhs.confidence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_Word: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Word"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "property"),
    2: .standard(proto: "bounding_box"),
    3: .same(proto: "symbols"),
    4: .same(proto: "confidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._property) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._boundingBox) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.symbols) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.confidence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._property {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._boundingBox {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.symbols.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.symbols, fieldNumber: 3)
    }
    if self.confidence != 0 {
      try visitor.visitSingularFloatField(value: self.confidence, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_Word, rhs: Google_Cloud_Vision_V1_Word) -> Bool {
    if lhs._property != rhs._property {return false}
    if lhs._boundingBox != rhs._boundingBox {return false}
    if lhs.symbols != rhs.symbols {return false}
    if lhs.confidence != rhs.confidence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Vision_V1_Symbol: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Symbol"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "property"),
    2: .standard(proto: "bounding_box"),
    3: .same(proto: "text"),
    4: .same(proto: "confidence"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._property) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._boundingBox) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.text) }()
      case 4: try { try decoder.decodeSingularFloatField(value: &self.confidence) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._property {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._boundingBox {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.text.isEmpty {
      try visitor.visitSingularStringField(value: self.text, fieldNumber: 3)
    }
    if self.confidence != 0 {
      try visitor.visitSingularFloatField(value: self.confidence, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Vision_V1_Symbol, rhs: Google_Cloud_Vision_V1_Symbol) -> Bool {
    if lhs._property != rhs._property {return false}
    if lhs._boundingBox != rhs._boundingBox {return false}
    if lhs.text != rhs.text {return false}
    if lhs.confidence != rhs.confidence {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}