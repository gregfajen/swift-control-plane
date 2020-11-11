// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/texttospeech/v1/cloud_tts.proto
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

/// Gender of the voice as described in
/// [SSML voice element](https://www.w3.org/TR/speech-synthesis11/#edef_voice).
public enum Google_Cloud_Texttospeech_V1_SsmlVoiceGender: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// An unspecified gender.
  /// In VoiceSelectionParams, this means that the client doesn't care which
  /// gender the selected voice will have. In the Voice field of
  /// ListVoicesResponse, this may mean that the voice doesn't fit any of the
  /// other categories in this enum, or that the gender of the voice isn't known.
  case unspecified // = 0

  /// A male voice.
  case male // = 1

  /// A female voice.
  case female // = 2

  /// A gender-neutral voice.
  case neutral // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .male
    case 2: self = .female
    case 3: self = .neutral
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .male: return 1
    case .female: return 2
    case .neutral: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Texttospeech_V1_SsmlVoiceGender: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Texttospeech_V1_SsmlVoiceGender] = [
    .unspecified,
    .male,
    .female,
    .neutral,
  ]
}

#endif  // swift(>=4.2)

/// Configuration to set up audio encoder. The encoding determines the output
/// audio format that we'd like.
public enum Google_Cloud_Texttospeech_V1_AudioEncoding: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Not specified. Will return result [google.rpc.Code.INVALID_ARGUMENT][].
  case unspecified // = 0

  /// Uncompressed 16-bit signed little-endian samples (Linear PCM).
  /// Audio content returned as LINEAR16 also contains a WAV header.
  case linear16 // = 1

  /// MP3 audio at 32kbps.
  case mp3 // = 2

  /// Opus encoded audio wrapped in an ogg container. The result will be a
  /// file which can be played natively on Android, and in browsers (at least
  /// Chrome and Firefox). The quality of the encoding is considerably higher
  /// than MP3 while using approximately the same bitrate.
  case oggOpus // = 3
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .linear16
    case 2: self = .mp3
    case 3: self = .oggOpus
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .linear16: return 1
    case .mp3: return 2
    case .oggOpus: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Texttospeech_V1_AudioEncoding: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Texttospeech_V1_AudioEncoding] = [
    .unspecified,
    .linear16,
    .mp3,
    .oggOpus,
  ]
}

#endif  // swift(>=4.2)

/// The top-level message sent by the client for the `ListVoices` method.
public struct Google_Cloud_Texttospeech_V1_ListVoicesRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Optional. Recommended.
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. If
  /// specified, the ListVoices call will only return voices that can be used to
  /// synthesize this language_code. E.g. when specifying "en-NZ", you will get
  /// supported "en-\*" voices; when specifying "no", you will get supported
  /// "no-\*" (Norwegian) and "nb-\*" (Norwegian Bokmal) voices; specifying "zh"
  /// will also get supported "cmn-\*" voices; specifying "zh-hk" will also get
  /// supported "yue-\*" voices.
  public var languageCode: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The message returned to the client by the `ListVoices` method.
public struct Google_Cloud_Texttospeech_V1_ListVoicesResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The list of voices.
  public var voices: [Google_Cloud_Texttospeech_V1_Voice] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Description of a voice supported by the TTS service.
public struct Google_Cloud_Texttospeech_V1_Voice {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The languages that this voice supports, expressed as
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags (e.g.
  /// "en-US", "es-419", "cmn-tw").
  public var languageCodes: [String] = []

  /// The name of this voice.  Each distinct voice has a unique name.
  public var name: String = String()

  /// The gender of this voice.
  public var ssmlGender: Google_Cloud_Texttospeech_V1_SsmlVoiceGender = .unspecified

  /// The natural sample rate (in hertz) for this voice.
  public var naturalSampleRateHertz: Int32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The top-level message sent by the client for the `SynthesizeSpeech` method.
public struct Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The Synthesizer requires either plain text or SSML as input.
  public var input: Google_Cloud_Texttospeech_V1_SynthesisInput {
    get {return _input ?? Google_Cloud_Texttospeech_V1_SynthesisInput()}
    set {_input = newValue}
  }
  /// Returns true if `input` has been explicitly set.
  public var hasInput: Bool {return self._input != nil}
  /// Clears the value of `input`. Subsequent reads from it will return its default value.
  public mutating func clearInput() {self._input = nil}

  /// Required. The desired voice of the synthesized audio.
  public var voice: Google_Cloud_Texttospeech_V1_VoiceSelectionParams {
    get {return _voice ?? Google_Cloud_Texttospeech_V1_VoiceSelectionParams()}
    set {_voice = newValue}
  }
  /// Returns true if `voice` has been explicitly set.
  public var hasVoice: Bool {return self._voice != nil}
  /// Clears the value of `voice`. Subsequent reads from it will return its default value.
  public mutating func clearVoice() {self._voice = nil}

  /// Required. The configuration of the synthesized audio.
  public var audioConfig: Google_Cloud_Texttospeech_V1_AudioConfig {
    get {return _audioConfig ?? Google_Cloud_Texttospeech_V1_AudioConfig()}
    set {_audioConfig = newValue}
  }
  /// Returns true if `audioConfig` has been explicitly set.
  public var hasAudioConfig: Bool {return self._audioConfig != nil}
  /// Clears the value of `audioConfig`. Subsequent reads from it will return its default value.
  public mutating func clearAudioConfig() {self._audioConfig = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _input: Google_Cloud_Texttospeech_V1_SynthesisInput? = nil
  fileprivate var _voice: Google_Cloud_Texttospeech_V1_VoiceSelectionParams? = nil
  fileprivate var _audioConfig: Google_Cloud_Texttospeech_V1_AudioConfig? = nil
}

/// Contains text input to be synthesized. Either `text` or `ssml` must be
/// supplied. Supplying both or neither returns
/// [google.rpc.Code.INVALID_ARGUMENT][]. The input size is limited to 5000
/// characters.
public struct Google_Cloud_Texttospeech_V1_SynthesisInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The input source, which is either plain text or SSML.
  public var inputSource: Google_Cloud_Texttospeech_V1_SynthesisInput.OneOf_InputSource? = nil

  /// The raw text to be synthesized.
  public var text: String {
    get {
      if case .text(let v)? = inputSource {return v}
      return String()
    }
    set {inputSource = .text(newValue)}
  }

  /// The SSML document to be synthesized. The SSML document must be valid
  /// and well-formed. Otherwise the RPC will fail and return
  /// [google.rpc.Code.INVALID_ARGUMENT][]. For more information, see
  /// [SSML](https://cloud.google.com/text-to-speech/docs/ssml).
  public var ssml: String {
    get {
      if case .ssml(let v)? = inputSource {return v}
      return String()
    }
    set {inputSource = .ssml(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// The input source, which is either plain text or SSML.
  public enum OneOf_InputSource: Equatable {
    /// The raw text to be synthesized.
    case text(String)
    /// The SSML document to be synthesized. The SSML document must be valid
    /// and well-formed. Otherwise the RPC will fail and return
    /// [google.rpc.Code.INVALID_ARGUMENT][]. For more information, see
    /// [SSML](https://cloud.google.com/text-to-speech/docs/ssml).
    case ssml(String)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Texttospeech_V1_SynthesisInput.OneOf_InputSource, rhs: Google_Cloud_Texttospeech_V1_SynthesisInput.OneOf_InputSource) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.text, .text): return {
        guard case .text(let l) = lhs, case .text(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.ssml, .ssml): return {
        guard case .ssml(let l) = lhs, case .ssml(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public init() {}
}

/// Description of which voice to use for a synthesis request.
public struct Google_Cloud_Texttospeech_V1_VoiceSelectionParams {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The language (and potentially also the region) of the voice expressed as a
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag, e.g.
  /// "en-US". This should not include a script tag (e.g. use
  /// "cmn-cn" rather than "cmn-Hant-cn"), because the script will be inferred
  /// from the input provided in the SynthesisInput.  The TTS service
  /// will use this parameter to help choose an appropriate voice.  Note that
  /// the TTS service may choose a voice with a slightly different language code
  /// than the one selected; it may substitute a different region
  /// (e.g. using en-US rather than en-CA if there isn't a Canadian voice
  /// available), or even a different language, e.g. using "nb" (Norwegian
  /// Bokmal) instead of "no" (Norwegian)".
  public var languageCode: String = String()

  /// The name of the voice. If not set, the service will choose a
  /// voice based on the other parameters such as language_code and gender.
  public var name: String = String()

  /// The preferred gender of the voice. If not set, the service will
  /// choose a voice based on the other parameters such as language_code and
  /// name. Note that this is only a preference, not requirement; if a
  /// voice of the appropriate gender is not available, the synthesizer should
  /// substitute a voice with a different gender rather than failing the request.
  public var ssmlGender: Google_Cloud_Texttospeech_V1_SsmlVoiceGender = .unspecified

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Description of audio data to be synthesized.
public struct Google_Cloud_Texttospeech_V1_AudioConfig {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The format of the audio byte stream.
  public var audioEncoding: Google_Cloud_Texttospeech_V1_AudioEncoding = .unspecified

  /// Optional. Input only. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is
  /// the normal native speed supported by the specific voice. 2.0 is twice as
  /// fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0
  /// speed. Any other values < 0.25 or > 4.0 will return an error.
  public var speakingRate: Double = 0

  /// Optional. Input only. Speaking pitch, in the range [-20.0, 20.0]. 20 means
  /// increase 20 semitones from the original pitch. -20 means decrease 20
  /// semitones from the original pitch.
  public var pitch: Double = 0

  /// Optional. Input only. Volume gain (in dB) of the normal native volume
  /// supported by the specific voice, in the range [-96.0, 16.0]. If unset, or
  /// set to a value of 0.0 (dB), will play at normal native signal amplitude. A
  /// value of -6.0 (dB) will play at approximately half the amplitude of the
  /// normal native signal amplitude. A value of +6.0 (dB) will play at
  /// approximately twice the amplitude of the normal native signal amplitude.
  /// Strongly recommend not to exceed +10 (dB) as there's usually no effective
  /// increase in loudness for any value greater than that.
  public var volumeGainDb: Double = 0

  /// Optional. The synthesis sample rate (in hertz) for this audio. When this is
  /// specified in SynthesizeSpeechRequest, if this is different from the voice's
  /// natural sample rate, then the synthesizer will honor this request by
  /// converting to the desired sample rate (which might result in worse audio
  /// quality), unless the specified sample rate is not supported for the
  /// encoding chosen, in which case it will fail the request and return
  /// [google.rpc.Code.INVALID_ARGUMENT][].
  public var sampleRateHertz: Int32 = 0

  /// Optional. Input only. An identifier which selects 'audio effects' profiles
  /// that are applied on (post synthesized) text to speech. Effects are applied
  /// on top of each other in the order they are given. See
  /// [audio
  /// profiles](https://cloud.google.com/text-to-speech/docs/audio-profiles) for
  /// current supported profile ids.
  public var effectsProfileID: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// The message returned to the client by the `SynthesizeSpeech` method.
public struct Google_Cloud_Texttospeech_V1_SynthesizeSpeechResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The audio data bytes encoded as specified in the request, including the
  /// header for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS).
  /// For LINEAR16 audio, we include the WAV header. Note: as
  /// with all bytes fields, protobuffers use a pure binary representation,
  /// whereas JSON representations use base64.
  public var audioContent: Data = Data()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.texttospeech.v1"

extension Google_Cloud_Texttospeech_V1_SsmlVoiceGender: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SSML_VOICE_GENDER_UNSPECIFIED"),
    1: .same(proto: "MALE"),
    2: .same(proto: "FEMALE"),
    3: .same(proto: "NEUTRAL"),
  ]
}

extension Google_Cloud_Texttospeech_V1_AudioEncoding: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "AUDIO_ENCODING_UNSPECIFIED"),
    1: .same(proto: "LINEAR16"),
    2: .same(proto: "MP3"),
    3: .same(proto: "OGG_OPUS"),
  ]
}

extension Google_Cloud_Texttospeech_V1_ListVoicesRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListVoicesRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "language_code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_ListVoicesRequest, rhs: Google_Cloud_Texttospeech_V1_ListVoicesRequest) -> Bool {
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Texttospeech_V1_ListVoicesResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ListVoicesResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "voices"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.voices) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.voices.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.voices, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_ListVoicesResponse, rhs: Google_Cloud_Texttospeech_V1_ListVoicesResponse) -> Bool {
    if lhs.voices != rhs.voices {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Texttospeech_V1_Voice: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Voice"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "language_codes"),
    2: .same(proto: "name"),
    3: .standard(proto: "ssml_gender"),
    4: .standard(proto: "natural_sample_rate_hertz"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.languageCodes) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.ssmlGender) }()
      case 4: try { try decoder.decodeSingularInt32Field(value: &self.naturalSampleRateHertz) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.languageCodes.isEmpty {
      try visitor.visitRepeatedStringField(value: self.languageCodes, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.ssmlGender != .unspecified {
      try visitor.visitSingularEnumField(value: self.ssmlGender, fieldNumber: 3)
    }
    if self.naturalSampleRateHertz != 0 {
      try visitor.visitSingularInt32Field(value: self.naturalSampleRateHertz, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_Voice, rhs: Google_Cloud_Texttospeech_V1_Voice) -> Bool {
    if lhs.languageCodes != rhs.languageCodes {return false}
    if lhs.name != rhs.name {return false}
    if lhs.ssmlGender != rhs.ssmlGender {return false}
    if lhs.naturalSampleRateHertz != rhs.naturalSampleRateHertz {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SynthesizeSpeechRequest"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "input"),
    2: .same(proto: "voice"),
    3: .standard(proto: "audio_config"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._input) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._voice) }()
      case 3: try { try decoder.decodeSingularMessageField(value: &self._audioConfig) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._input {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if let v = self._voice {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if let v = self._audioConfig {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest, rhs: Google_Cloud_Texttospeech_V1_SynthesizeSpeechRequest) -> Bool {
    if lhs._input != rhs._input {return false}
    if lhs._voice != rhs._voice {return false}
    if lhs._audioConfig != rhs._audioConfig {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Texttospeech_V1_SynthesisInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SynthesisInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "text"),
    2: .same(proto: "ssml"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        if self.inputSource != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.inputSource = .text(v)}
      }()
      case 2: try {
        if self.inputSource != nil {try decoder.handleConflictingOneOf()}
        var v: String?
        try decoder.decodeSingularStringField(value: &v)
        if let v = v {self.inputSource = .ssml(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.inputSource {
    case .text?: try {
      guard case .text(let v)? = self.inputSource else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 1)
    }()
    case .ssml?: try {
      guard case .ssml(let v)? = self.inputSource else { preconditionFailure() }
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_SynthesisInput, rhs: Google_Cloud_Texttospeech_V1_SynthesisInput) -> Bool {
    if lhs.inputSource != rhs.inputSource {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Texttospeech_V1_VoiceSelectionParams: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".VoiceSelectionParams"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "language_code"),
    2: .same(proto: "name"),
    3: .standard(proto: "ssml_gender"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.languageCode) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self.ssmlGender) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.languageCode.isEmpty {
      try visitor.visitSingularStringField(value: self.languageCode, fieldNumber: 1)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 2)
    }
    if self.ssmlGender != .unspecified {
      try visitor.visitSingularEnumField(value: self.ssmlGender, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_VoiceSelectionParams, rhs: Google_Cloud_Texttospeech_V1_VoiceSelectionParams) -> Bool {
    if lhs.languageCode != rhs.languageCode {return false}
    if lhs.name != rhs.name {return false}
    if lhs.ssmlGender != rhs.ssmlGender {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Texttospeech_V1_AudioConfig: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".AudioConfig"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "audio_encoding"),
    2: .standard(proto: "speaking_rate"),
    3: .same(proto: "pitch"),
    4: .standard(proto: "volume_gain_db"),
    5: .standard(proto: "sample_rate_hertz"),
    6: .standard(proto: "effects_profile_id"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.audioEncoding) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.speakingRate) }()
      case 3: try { try decoder.decodeSingularDoubleField(value: &self.pitch) }()
      case 4: try { try decoder.decodeSingularDoubleField(value: &self.volumeGainDb) }()
      case 5: try { try decoder.decodeSingularInt32Field(value: &self.sampleRateHertz) }()
      case 6: try { try decoder.decodeRepeatedStringField(value: &self.effectsProfileID) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.audioEncoding != .unspecified {
      try visitor.visitSingularEnumField(value: self.audioEncoding, fieldNumber: 1)
    }
    if self.speakingRate != 0 {
      try visitor.visitSingularDoubleField(value: self.speakingRate, fieldNumber: 2)
    }
    if self.pitch != 0 {
      try visitor.visitSingularDoubleField(value: self.pitch, fieldNumber: 3)
    }
    if self.volumeGainDb != 0 {
      try visitor.visitSingularDoubleField(value: self.volumeGainDb, fieldNumber: 4)
    }
    if self.sampleRateHertz != 0 {
      try visitor.visitSingularInt32Field(value: self.sampleRateHertz, fieldNumber: 5)
    }
    if !self.effectsProfileID.isEmpty {
      try visitor.visitRepeatedStringField(value: self.effectsProfileID, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_AudioConfig, rhs: Google_Cloud_Texttospeech_V1_AudioConfig) -> Bool {
    if lhs.audioEncoding != rhs.audioEncoding {return false}
    if lhs.speakingRate != rhs.speakingRate {return false}
    if lhs.pitch != rhs.pitch {return false}
    if lhs.volumeGainDb != rhs.volumeGainDb {return false}
    if lhs.sampleRateHertz != rhs.sampleRateHertz {return false}
    if lhs.effectsProfileID != rhs.effectsProfileID {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Texttospeech_V1_SynthesizeSpeechResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SynthesizeSpeechResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "audio_content"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.audioContent) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.audioContent.isEmpty {
      try visitor.visitSingularBytesField(value: self.audioContent, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Texttospeech_V1_SynthesizeSpeechResponse, rhs: Google_Cloud_Texttospeech_V1_SynthesizeSpeechResponse) -> Bool {
    if lhs.audioContent != rhs.audioContent {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
