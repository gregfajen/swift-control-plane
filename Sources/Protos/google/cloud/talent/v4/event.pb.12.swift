// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/talent/v4/event.proto
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

/// An event issued when an end user interacts with the application that
/// implements Cloud Talent Solution. Providing this information improves the
/// quality of results for the API clients, enabling the
/// service to perform optimally. The number of events sent must be consistent
/// with other calls, such as job searches, issued to the service by the client.
public struct Google_Cloud_Talent_V4_ClientEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Strongly recommended for the best service experience.
  ///
  /// A unique ID generated in the API responses. It can be found in
  /// [ResponseMetadata.request_id][google.cloud.talent.v4.ResponseMetadata.request_id].
  public var requestID: String = String()

  /// Required. A unique identifier, generated by the client application.
  public var eventID: String = String()

  /// Required. The timestamp of the event.
  public var createTime: SwiftProtobuf.Google_Protobuf_Timestamp {
    get {return _createTime ?? SwiftProtobuf.Google_Protobuf_Timestamp()}
    set {_createTime = newValue}
  }
  /// Returns true if `createTime` has been explicitly set.
  public var hasCreateTime: Bool {return self._createTime != nil}
  /// Clears the value of `createTime`. Subsequent reads from it will return its default value.
  public mutating func clearCreateTime() {self._createTime = nil}

  /// Required.
  ///
  /// The detail information of a specific event type.
  public var event: Google_Cloud_Talent_V4_ClientEvent.OneOf_Event? = nil

  /// An event issued when a job seeker interacts with the application that
  /// implements Cloud Talent Solution.
  public var jobEvent: Google_Cloud_Talent_V4_JobEvent {
    get {
      if case .jobEvent(let v)? = event {return v}
      return Google_Cloud_Talent_V4_JobEvent()
    }
    set {event = .jobEvent(newValue)}
  }

  /// Notes about the event provided by recruiters or other users, for example,
  /// feedback on why a job was bookmarked.
  public var eventNotes: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Required.
  ///
  /// The detail information of a specific event type.
  public enum OneOf_Event: Equatable {
    /// An event issued when a job seeker interacts with the application that
    /// implements Cloud Talent Solution.
    case jobEvent(Google_Cloud_Talent_V4_JobEvent)

  #if !swift(>=4.1)
    public static func ==(lhs: Google_Cloud_Talent_V4_ClientEvent.OneOf_Event, rhs: Google_Cloud_Talent_V4_ClientEvent.OneOf_Event) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.jobEvent, .jobEvent): return {
        guard case .jobEvent(let l) = lhs, case .jobEvent(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      }
    }
  #endif
  }

  public init() {}

  fileprivate var _createTime: SwiftProtobuf.Google_Protobuf_Timestamp? = nil
}

/// An event issued when a job seeker interacts with the application that
/// implements Cloud Talent Solution.
public struct Google_Cloud_Talent_V4_JobEvent {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Required. The type of the event (see [JobEventType][google.cloud.talent.v4.JobEvent.JobEventType]).
  public var type: Google_Cloud_Talent_V4_JobEvent.JobEventType = .unspecified

  /// Required. The [job name(s)][google.cloud.talent.v4.Job.name] associated with this event.
  /// For example, if this is an [impression][google.cloud.talent.v4.JobEvent.JobEventType.IMPRESSION] event,
  /// this field contains the identifiers of all jobs shown to the job seeker.
  /// If this was a [view][google.cloud.talent.v4.JobEvent.JobEventType.VIEW] event, this field contains the
  /// identifier of the viewed job.
  ///
  /// The format is
  /// "projects/{project_id}/tenants/{tenant_id}/jobs/{job_id}", for
  /// example, "projects/foo/tenants/bar/jobs/baz".
  public var jobs: [String] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// An enumeration of an event attributed to the behavior of the end user,
  /// such as a job seeker.
  public enum JobEventType: SwiftProtobuf.Enum {
    public typealias RawValue = Int

    /// The event is unspecified by other provided values.
    case unspecified // = 0

    /// The job seeker or other entity interacting with the service has
    /// had a job rendered in their view, such as in a list of search results in
    /// a compressed or clipped format. This event is typically associated with
    /// the viewing of a jobs list on a single page by a job seeker.
    case impression // = 1

    /// The job seeker, or other entity interacting with the service, has
    /// viewed the details of a job, including the full description. This
    /// event doesn't apply to the viewing a snippet of a job appearing as a
    /// part of the job search results. Viewing a snippet is associated with an
    /// [impression][google.cloud.talent.v4.JobEvent.JobEventType.IMPRESSION]).
    case view // = 2

    /// The job seeker or other entity interacting with the service
    /// performed an action to view a job and was redirected to a different
    /// website for job.
    case viewRedirect // = 3

    /// The job seeker or other entity interacting with the service
    /// began the process or demonstrated the intention of applying for a job.
    case applicationStart // = 4

    /// The job seeker or other entity interacting with the service
    /// submitted an application for a job.
    case applicationFinish // = 5

    /// The job seeker or other entity interacting with the service
    /// submitted an application for a job with a single click without
    /// entering information. If a job seeker performs this action, send only
    /// this event to the service. Do not also send
    /// [JobEventType.APPLICATION_START][google.cloud.talent.v4.JobEvent.JobEventType.APPLICATION_START] or [JobEventType.APPLICATION_FINISH][google.cloud.talent.v4.JobEvent.JobEventType.APPLICATION_FINISH]
    /// events.
    case applicationQuickSubmission // = 6

    /// The job seeker or other entity interacting with the service
    /// performed an action to apply to a job and was redirected to a different
    /// website to complete the application.
    case applicationRedirect // = 7

    /// The job seeker or other entity interacting with the service began the
    /// process or demonstrated the intention of applying for a job from the
    /// search results page without viewing the details of the job posting.
    /// If sending this event, JobEventType.VIEW event shouldn't be sent.
    case applicationStartFromSearch // = 8

    /// The job seeker, or other entity interacting with the service, performs an
    /// action with a single click from the search results page to apply to a job
    /// (without viewing the details of the job posting), and is redirected
    /// to a different website to complete the application. If a candidate
    /// performs this action, send only this event to the service. Do not also
    /// send [JobEventType.APPLICATION_START][google.cloud.talent.v4.JobEvent.JobEventType.APPLICATION_START],
    /// [JobEventType.APPLICATION_FINISH][google.cloud.talent.v4.JobEvent.JobEventType.APPLICATION_FINISH] or [JobEventType.VIEW][google.cloud.talent.v4.JobEvent.JobEventType.VIEW] events.
    case applicationRedirectFromSearch // = 9

    /// This event should be used when a company submits an application
    /// on behalf of a job seeker. This event is intended for use by staffing
    /// agencies attempting to place candidates.
    case applicationCompanySubmit // = 10

    /// The job seeker or other entity interacting with the service demonstrated
    /// an interest in a job by bookmarking or saving it.
    case bookmark // = 11

    /// The job seeker or other entity interacting with the service was
    /// sent a notification, such as an email alert or device notification,
    /// containing one or more jobs listings generated by the service.
    case notification // = 12

    /// The job seeker or other entity interacting with the service was
    /// employed by the hiring entity (employer). Send this event
    /// only if the job seeker was hired through an application that was
    /// initiated by a search conducted through the Cloud Talent Solution
    /// service.
    case hired // = 13

    /// A recruiter or staffing agency submitted an application on behalf of the
    /// candidate after interacting with the service to identify a suitable job
    /// posting.
    case sentCv // = 14

    /// The entity interacting with the service (for example, the job seeker),
    /// was granted an initial interview by the hiring entity (employer). This
    /// event should only be sent if the job seeker was granted an interview as
    /// part of an application that was initiated by a search conducted through /
    /// recommendation provided by the Cloud Talent Solution service.
    case interviewGranted // = 15
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .impression
      case 2: self = .view
      case 3: self = .viewRedirect
      case 4: self = .applicationStart
      case 5: self = .applicationFinish
      case 6: self = .applicationQuickSubmission
      case 7: self = .applicationRedirect
      case 8: self = .applicationStartFromSearch
      case 9: self = .applicationRedirectFromSearch
      case 10: self = .applicationCompanySubmit
      case 11: self = .bookmark
      case 12: self = .notification
      case 13: self = .hired
      case 14: self = .sentCv
      case 15: self = .interviewGranted
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .impression: return 1
      case .view: return 2
      case .viewRedirect: return 3
      case .applicationStart: return 4
      case .applicationFinish: return 5
      case .applicationQuickSubmission: return 6
      case .applicationRedirect: return 7
      case .applicationStartFromSearch: return 8
      case .applicationRedirectFromSearch: return 9
      case .applicationCompanySubmit: return 10
      case .bookmark: return 11
      case .notification: return 12
      case .hired: return 13
      case .sentCv: return 14
      case .interviewGranted: return 15
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Google_Cloud_Talent_V4_JobEvent.JobEventType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Talent_V4_JobEvent.JobEventType] = [
    .unspecified,
    .impression,
    .view,
    .viewRedirect,
    .applicationStart,
    .applicationFinish,
    .applicationQuickSubmission,
    .applicationRedirect,
    .applicationStartFromSearch,
    .applicationRedirectFromSearch,
    .applicationCompanySubmit,
    .bookmark,
    .notification,
    .hired,
    .sentCv,
    .interviewGranted,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.cloud.talent.v4"

extension Google_Cloud_Talent_V4_ClientEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ClientEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "request_id"),
    2: .standard(proto: "event_id"),
    4: .standard(proto: "create_time"),
    5: .standard(proto: "job_event"),
    9: .standard(proto: "event_notes"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.requestID) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.eventID) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._createTime) }()
      case 5: try {
        var v: Google_Cloud_Talent_V4_JobEvent?
        if let current = self.event {
          try decoder.handleConflictingOneOf()
          if case .jobEvent(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.event = .jobEvent(v)}
      }()
      case 9: try { try decoder.decodeSingularStringField(value: &self.eventNotes) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.requestID.isEmpty {
      try visitor.visitSingularStringField(value: self.requestID, fieldNumber: 1)
    }
    if !self.eventID.isEmpty {
      try visitor.visitSingularStringField(value: self.eventID, fieldNumber: 2)
    }
    if let v = self._createTime {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    if case .jobEvent(let v)? = self.event {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }
    if !self.eventNotes.isEmpty {
      try visitor.visitSingularStringField(value: self.eventNotes, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_ClientEvent, rhs: Google_Cloud_Talent_V4_ClientEvent) -> Bool {
    if lhs.requestID != rhs.requestID {return false}
    if lhs.eventID != rhs.eventID {return false}
    if lhs._createTime != rhs._createTime {return false}
    if lhs.event != rhs.event {return false}
    if lhs.eventNotes != rhs.eventNotes {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Talent_V4_JobEvent: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".JobEvent"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "jobs"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self.type) }()
      case 2: try { try decoder.decodeRepeatedStringField(value: &self.jobs) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.type != .unspecified {
      try visitor.visitSingularEnumField(value: self.type, fieldNumber: 1)
    }
    if !self.jobs.isEmpty {
      try visitor.visitRepeatedStringField(value: self.jobs, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Google_Cloud_Talent_V4_JobEvent, rhs: Google_Cloud_Talent_V4_JobEvent) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.jobs != rhs.jobs {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Google_Cloud_Talent_V4_JobEvent.JobEventType: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "JOB_EVENT_TYPE_UNSPECIFIED"),
    1: .same(proto: "IMPRESSION"),
    2: .same(proto: "VIEW"),
    3: .same(proto: "VIEW_REDIRECT"),
    4: .same(proto: "APPLICATION_START"),
    5: .same(proto: "APPLICATION_FINISH"),
    6: .same(proto: "APPLICATION_QUICK_SUBMISSION"),
    7: .same(proto: "APPLICATION_REDIRECT"),
    8: .same(proto: "APPLICATION_START_FROM_SEARCH"),
    9: .same(proto: "APPLICATION_REDIRECT_FROM_SEARCH"),
    10: .same(proto: "APPLICATION_COMPANY_SUBMIT"),
    11: .same(proto: "BOOKMARK"),
    12: .same(proto: "NOTIFICATION"),
    13: .same(proto: "HIRED"),
    14: .same(proto: "SENT_CV"),
    15: .same(proto: "INTERVIEW_GRANTED"),
  ]
}