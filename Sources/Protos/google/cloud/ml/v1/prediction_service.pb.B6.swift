// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/ml/v1/prediction_service.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2017 Google Inc.
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

/// Request for predictions to be issued against a trained model.
///
/// The body of the request is a single JSON object with a single top-level
/// field:
///
/// <dl>
///   <dt>instances</dt>
///   <dd>A JSON array containing values representing the instances to use for
///       prediction.</dd>
/// </dl>
///
/// The structure of each element of the instances list is determined by your
/// model's input definition. Instances can include named inputs or can contain
/// only unlabeled values.
///
/// Not all data includes named inputs. Some instances will be simple
/// JSON values (boolean, number, or string). However, instances are often lists
/// of simple values, or complex nested lists. Here are some examples of request
/// bodies:
///
/// CSV data with each row encoded as a string value:
/// <pre>
/// {"instances": ["1.0,true,\\"x\\"", "-2.0,false,\\"y\\""]}
/// </pre>
/// Plain text:
/// <pre>
/// {"instances": ["the quick brown fox", "la bruja le dio"]}
/// </pre>
/// Sentences encoded as lists of words (vectors of strings):
/// <pre>
/// {
///   "instances": [
///     ["the","quick","brown"],
///     ["la","bruja","le"],
///     ...
///   ]
/// }
/// </pre>
/// Floating point scalar values:
/// <pre>
/// {"instances": [0.0, 1.1, 2.2]}
/// </pre>
/// Vectors of integers:
/// <pre>
/// {
///   "instances": [
///     [0, 1, 2],
///     [3, 4, 5],
///     ...
///   ]
/// }
/// </pre>
/// Tensors (in this case, two-dimensional tensors):
/// <pre>
/// {
///   "instances": [
///     [
///       [0, 1, 2],
///       [3, 4, 5]
///     ],
///     ...
///   ]
/// }
/// </pre>
/// Images can be represented different ways. In this encoding scheme the first
/// two dimensions represent the rows and columns of the image, and the third
/// contains lists (vectors) of the R, G, and B values for each pixel.
/// <pre>
/// {
///   "instances": [
///     [
///       [
///         [138, 30, 66],
///         [130, 20, 56],
///         ...
///       ],
///       [
///         [126, 38, 61],
///         [122, 24, 57],
///         ...
///       ],
///       ...
///     ],
///     ...
///   ]
/// }
/// </pre>
/// JSON strings must be encoded as UTF-8. To send binary data, you must
/// base64-encode the data and mark it as binary. To mark a JSON string
/// as binary, replace it with a JSON object with a single attribute named `b64`:
/// <pre>{"b64": "..."} </pre>
/// For example:
///
/// Two Serialized tf.Examples (fake data, for illustrative purposes only):
/// <pre>
/// {"instances": [{"b64": "X5ad6u"}, {"b64": "IA9j4nx"}]}
/// </pre>
/// Two JPEG image byte strings (fake data, for illustrative purposes only):
/// <pre>
/// {"instances": [{"b64": "ASa8asdf"}, {"b64": "JLK7ljk3"}]}
/// </pre>
/// If your data includes named references, format each instance as a JSON object
/// with the named references as the keys:
///
/// JSON input data to be preprocessed:
/// <pre>
/// {
///   "instances": [
///     {
///       "a": 1.0,
///       "b": true,
///       "c": "x"
///     },
///     {
///       "a": -2.0,
///       "b": false,
///       "c": "y"
///     }
///   ]
/// }
/// </pre>
/// Some models have an underlying TensorFlow graph that accepts multiple input
/// tensors. In this case, you should use the names of JSON name/value pairs to
/// identify the input tensors, as shown in the following exmaples:
///
/// For a graph with input tensor aliases "tag" (string) and "image"
/// (base64-encoded string):
/// <pre>
/// {
///   "instances": [
///     {
///       "tag": "beach",
///       "image": {"b64": "ASa8asdf"}
///     },
///     {
///       "tag": "car",
///       "image": {"b64": "JLK7ljk3"}
///     }
///   ]
/// }
/// </pre>
/// For a graph with input tensor aliases "tag" (string) and "image"
/// (3-dimensional array of 8-bit ints):
/// <pre>
/// {
///   "instances": [
///     {
///       "tag": "beach",
///       "image": [
///         [
///           [138, 30, 66],
///           [130, 20, 56],
///           ...
///         ],
///         [
///           [126, 38, 61],
///           [122, 24, 57],
///           ...
///         ],
///         ...
///       ]
///     },
///     {
///       "tag": "car",
///       "image": [
///         [
///           [255, 0, 102],
///           [255, 0, 97],
///           ...
///         ],
///         [
///           [254, 1, 101],
///           [254, 2, 93],
///           ...
///         ],
///         ...
///       ]
///     },
///     ...
///   ]
/// }
/// </pre>
/// If the call is successful, the response body will contain one prediction
/// entry per instance in the request body. If prediction fails for any
/// instance, the response body will contain no predictions and will contian
/// a single error entry instead.
public struct Google_Cloud_Ml_V1_PredictRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The resource name of a model or a version.
  ///
  /// Authorization: requires `Viewer` role on the parent project.
  public var name: String = String()

  ///
  /// Required. The prediction request body.
  public var httpBody: Google_Api_HttpBody {
    get {return _httpBody ?? Google_Api_HttpBody()}
    set {_httpBody = newValue}
  }
  /// Returns true if `httpBody` has been explicitly set.
  public var hasHTTPBody: Bool {return self._httpBody != nil}
  /// Clears the value of `httpBody`. Subsequent reads from it will return its default value.
  public mutating func clearHTTPBody() {self._httpBody = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _httpBody: Google_Api_HttpBody? = nil
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.ml.v1"

extension Google_Cloud_Ml_V1_PredictRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".PredictRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "http_body"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._httpBody) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if let v = self._httpBody {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Ml_V1_PredictRequest, rhs: Google_Cloud_Ml_V1_PredictRequest) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs._httpBody != rhs._httpBody {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
