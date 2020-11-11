// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/cloud/aiplatform/v1beta1/job_state.proto
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

/// Describes the state of a job.
public enum Google_Cloud_Aiplatform_V1beta1_JobState: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// The job state is unspecified.
  case unspecified // = 0

  /// The job has been just created or resumed and processing has not yet begun.
  case queued // = 1

  /// The service is preparing to run the job.
  case pending // = 2

  /// The job is in progress.
  case running // = 3

  /// The job completed successfully.
  case succeeded // = 4

  /// The job failed.
  case failed // = 5

  /// The job is being cancelled. From this state the job may only go to
  /// either `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  case cancelling // = 6

  /// The job has been cancelled.
  case cancelled // = 7

  /// The job has been stopped, and can be resumed.
  case paused // = 8
  case UNRECOGNIZED(Int)

  public init() {
    self = .unspecified
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .unspecified
    case 1: self = .queued
    case 2: self = .pending
    case 3: self = .running
    case 4: self = .succeeded
    case 5: self = .failed
    case 6: self = .cancelling
    case 7: self = .cancelled
    case 8: self = .paused
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .unspecified: return 0
    case .queued: return 1
    case .pending: return 2
    case .running: return 3
    case .succeeded: return 4
    case .failed: return 5
    case .cancelling: return 6
    case .cancelled: return 7
    case .paused: return 8
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Google_Cloud_Aiplatform_V1beta1_JobState: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Google_Cloud_Aiplatform_V1beta1_JobState] = [
    .unspecified,
    .queued,
    .pending,
    .running,
    .succeeded,
    .failed,
    .cancelling,
    .cancelled,
    .paused,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Google_Cloud_Aiplatform_V1beta1_JobState: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "JOB_STATE_UNSPECIFIED"),
    1: .same(proto: "JOB_STATE_QUEUED"),
    2: .same(proto: "JOB_STATE_PENDING"),
    3: .same(proto: "JOB_STATE_RUNNING"),
    4: .same(proto: "JOB_STATE_SUCCEEDED"),
    5: .same(proto: "JOB_STATE_FAILED"),
    6: .same(proto: "JOB_STATE_CANCELLING"),
    7: .same(proto: "JOB_STATE_CANCELLED"),
    8: .same(proto: "JOB_STATE_PAUSED"),
  ]
}
