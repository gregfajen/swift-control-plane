// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: envoy/type/v3/http_status.proto
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

/// HTTP response codes supported in Envoy.
/// For more details: https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml
public enum Envoy_Type_V3_StatusCode: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// Empty - This code not part of the HTTP status code specification, but it is needed for proto
  /// `enum` type.
  case empty // = 0
  case `continue` // = 100
  case ok // = 200
  case created // = 201
  case accepted // = 202
  case nonAuthoritativeInformation // = 203
  case noContent // = 204
  case resetContent // = 205
  case partialContent // = 206
  case multiStatus // = 207
  case alreadyReported // = 208
  case imused // = 226
  case multipleChoices // = 300
  case movedPermanently // = 301
  case found // = 302
  case seeOther // = 303
  case notModified // = 304
  case useProxy // = 305
  case temporaryRedirect // = 307
  case permanentRedirect // = 308
  case badRequest // = 400
  case unauthorized // = 401
  case paymentRequired // = 402
  case forbidden // = 403
  case notFound // = 404
  case methodNotAllowed // = 405
  case notAcceptable // = 406
  case proxyAuthenticationRequired // = 407
  case requestTimeout // = 408
  case conflict // = 409
  case gone // = 410
  case lengthRequired // = 411
  case preconditionFailed // = 412
  case payloadTooLarge // = 413
  case uritooLong // = 414
  case unsupportedMediaType // = 415
  case rangeNotSatisfiable // = 416
  case expectationFailed // = 417
  case misdirectedRequest // = 421
  case unprocessableEntity // = 422
  case locked // = 423
  case failedDependency // = 424
  case upgradeRequired // = 426
  case preconditionRequired // = 428
  case tooManyRequests // = 429
  case requestHeaderFieldsTooLarge // = 431
  case internalServerError // = 500
  case notImplemented // = 501
  case badGateway // = 502
  case serviceUnavailable // = 503
  case gatewayTimeout // = 504
  case httpversionNotSupported // = 505
  case variantAlsoNegotiates // = 506
  case insufficientStorage // = 507
  case loopDetected // = 508
  case notExtended // = 510
  case networkAuthenticationRequired // = 511
  case UNRECOGNIZED(Int)

  public init() {
    self = .empty
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .empty
    case 100: self = .continue
    case 200: self = .ok
    case 201: self = .created
    case 202: self = .accepted
    case 203: self = .nonAuthoritativeInformation
    case 204: self = .noContent
    case 205: self = .resetContent
    case 206: self = .partialContent
    case 207: self = .multiStatus
    case 208: self = .alreadyReported
    case 226: self = .imused
    case 300: self = .multipleChoices
    case 301: self = .movedPermanently
    case 302: self = .found
    case 303: self = .seeOther
    case 304: self = .notModified
    case 305: self = .useProxy
    case 307: self = .temporaryRedirect
    case 308: self = .permanentRedirect
    case 400: self = .badRequest
    case 401: self = .unauthorized
    case 402: self = .paymentRequired
    case 403: self = .forbidden
    case 404: self = .notFound
    case 405: self = .methodNotAllowed
    case 406: self = .notAcceptable
    case 407: self = .proxyAuthenticationRequired
    case 408: self = .requestTimeout
    case 409: self = .conflict
    case 410: self = .gone
    case 411: self = .lengthRequired
    case 412: self = .preconditionFailed
    case 413: self = .payloadTooLarge
    case 414: self = .uritooLong
    case 415: self = .unsupportedMediaType
    case 416: self = .rangeNotSatisfiable
    case 417: self = .expectationFailed
    case 421: self = .misdirectedRequest
    case 422: self = .unprocessableEntity
    case 423: self = .locked
    case 424: self = .failedDependency
    case 426: self = .upgradeRequired
    case 428: self = .preconditionRequired
    case 429: self = .tooManyRequests
    case 431: self = .requestHeaderFieldsTooLarge
    case 500: self = .internalServerError
    case 501: self = .notImplemented
    case 502: self = .badGateway
    case 503: self = .serviceUnavailable
    case 504: self = .gatewayTimeout
    case 505: self = .httpversionNotSupported
    case 506: self = .variantAlsoNegotiates
    case 507: self = .insufficientStorage
    case 508: self = .loopDetected
    case 510: self = .notExtended
    case 511: self = .networkAuthenticationRequired
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .empty: return 0
    case .continue: return 100
    case .ok: return 200
    case .created: return 201
    case .accepted: return 202
    case .nonAuthoritativeInformation: return 203
    case .noContent: return 204
    case .resetContent: return 205
    case .partialContent: return 206
    case .multiStatus: return 207
    case .alreadyReported: return 208
    case .imused: return 226
    case .multipleChoices: return 300
    case .movedPermanently: return 301
    case .found: return 302
    case .seeOther: return 303
    case .notModified: return 304
    case .useProxy: return 305
    case .temporaryRedirect: return 307
    case .permanentRedirect: return 308
    case .badRequest: return 400
    case .unauthorized: return 401
    case .paymentRequired: return 402
    case .forbidden: return 403
    case .notFound: return 404
    case .methodNotAllowed: return 405
    case .notAcceptable: return 406
    case .proxyAuthenticationRequired: return 407
    case .requestTimeout: return 408
    case .conflict: return 409
    case .gone: return 410
    case .lengthRequired: return 411
    case .preconditionFailed: return 412
    case .payloadTooLarge: return 413
    case .uritooLong: return 414
    case .unsupportedMediaType: return 415
    case .rangeNotSatisfiable: return 416
    case .expectationFailed: return 417
    case .misdirectedRequest: return 421
    case .unprocessableEntity: return 422
    case .locked: return 423
    case .failedDependency: return 424
    case .upgradeRequired: return 426
    case .preconditionRequired: return 428
    case .tooManyRequests: return 429
    case .requestHeaderFieldsTooLarge: return 431
    case .internalServerError: return 500
    case .notImplemented: return 501
    case .badGateway: return 502
    case .serviceUnavailable: return 503
    case .gatewayTimeout: return 504
    case .httpversionNotSupported: return 505
    case .variantAlsoNegotiates: return 506
    case .insufficientStorage: return 507
    case .loopDetected: return 508
    case .notExtended: return 510
    case .networkAuthenticationRequired: return 511
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Envoy_Type_V3_StatusCode: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Envoy_Type_V3_StatusCode] = [
    .empty,
    .continue,
    .ok,
    .created,
    .accepted,
    .nonAuthoritativeInformation,
    .noContent,
    .resetContent,
    .partialContent,
    .multiStatus,
    .alreadyReported,
    .imused,
    .multipleChoices,
    .movedPermanently,
    .found,
    .seeOther,
    .notModified,
    .useProxy,
    .temporaryRedirect,
    .permanentRedirect,
    .badRequest,
    .unauthorized,
    .paymentRequired,
    .forbidden,
    .notFound,
    .methodNotAllowed,
    .notAcceptable,
    .proxyAuthenticationRequired,
    .requestTimeout,
    .conflict,
    .gone,
    .lengthRequired,
    .preconditionFailed,
    .payloadTooLarge,
    .uritooLong,
    .unsupportedMediaType,
    .rangeNotSatisfiable,
    .expectationFailed,
    .misdirectedRequest,
    .unprocessableEntity,
    .locked,
    .failedDependency,
    .upgradeRequired,
    .preconditionRequired,
    .tooManyRequests,
    .requestHeaderFieldsTooLarge,
    .internalServerError,
    .notImplemented,
    .badGateway,
    .serviceUnavailable,
    .gatewayTimeout,
    .httpversionNotSupported,
    .variantAlsoNegotiates,
    .insufficientStorage,
    .loopDetected,
    .notExtended,
    .networkAuthenticationRequired,
  ]
}

#endif  // swift(>=4.2)

/// HTTP status.
public struct Envoy_Type_V3_HttpStatus {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Supplies HTTP response code.
  public var code: Envoy_Type_V3_StatusCode = .empty

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "envoy.type.v3"

extension Envoy_Type_V3_StatusCode: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "Empty"),
    100: .same(proto: "Continue"),
    200: .same(proto: "OK"),
    201: .same(proto: "Created"),
    202: .same(proto: "Accepted"),
    203: .same(proto: "NonAuthoritativeInformation"),
    204: .same(proto: "NoContent"),
    205: .same(proto: "ResetContent"),
    206: .same(proto: "PartialContent"),
    207: .same(proto: "MultiStatus"),
    208: .same(proto: "AlreadyReported"),
    226: .same(proto: "IMUsed"),
    300: .same(proto: "MultipleChoices"),
    301: .same(proto: "MovedPermanently"),
    302: .same(proto: "Found"),
    303: .same(proto: "SeeOther"),
    304: .same(proto: "NotModified"),
    305: .same(proto: "UseProxy"),
    307: .same(proto: "TemporaryRedirect"),
    308: .same(proto: "PermanentRedirect"),
    400: .same(proto: "BadRequest"),
    401: .same(proto: "Unauthorized"),
    402: .same(proto: "PaymentRequired"),
    403: .same(proto: "Forbidden"),
    404: .same(proto: "NotFound"),
    405: .same(proto: "MethodNotAllowed"),
    406: .same(proto: "NotAcceptable"),
    407: .same(proto: "ProxyAuthenticationRequired"),
    408: .same(proto: "RequestTimeout"),
    409: .same(proto: "Conflict"),
    410: .same(proto: "Gone"),
    411: .same(proto: "LengthRequired"),
    412: .same(proto: "PreconditionFailed"),
    413: .same(proto: "PayloadTooLarge"),
    414: .same(proto: "URITooLong"),
    415: .same(proto: "UnsupportedMediaType"),
    416: .same(proto: "RangeNotSatisfiable"),
    417: .same(proto: "ExpectationFailed"),
    421: .same(proto: "MisdirectedRequest"),
    422: .same(proto: "UnprocessableEntity"),
    423: .same(proto: "Locked"),
    424: .same(proto: "FailedDependency"),
    426: .same(proto: "UpgradeRequired"),
    428: .same(proto: "PreconditionRequired"),
    429: .same(proto: "TooManyRequests"),
    431: .same(proto: "RequestHeaderFieldsTooLarge"),
    500: .same(proto: "InternalServerError"),
    501: .same(proto: "NotImplemented"),
    502: .same(proto: "BadGateway"),
    503: .same(proto: "ServiceUnavailable"),
    504: .same(proto: "GatewayTimeout"),
    505: .same(proto: "HTTPVersionNotSupported"),
    506: .same(proto: "VariantAlsoNegotiates"),
    507: .same(proto: "InsufficientStorage"),
    508: .same(proto: "LoopDetected"),
    510: .same(proto: "NotExtended"),
    511: .same(proto: "NetworkAuthenticationRequired"),
  ]
}

extension Envoy_Type_V3_HttpStatus: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".HttpStatus"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "code"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularEnumField(value: &self.code)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.code != .empty {
      try visitor.visitSingularEnumField(value: self.code, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Envoy_Type_V3_HttpStatus, rhs: Envoy_Type_V3_HttpStatus) -> Bool {
    if lhs.code != rhs.code {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
