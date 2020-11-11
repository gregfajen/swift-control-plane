//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/talent/v4beta1/job_service.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
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
//
import GRPC
import NIO
import SwiftProtobuf


/// Usage: instantiate Google_Cloud_Talent_V4beta1_JobServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Talent_V4beta1_JobServiceClientProtocol: GRPCClient {
  func createJob(
    _ request: Google_Cloud_Talent_V4beta1_CreateJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_CreateJobRequest, Google_Cloud_Talent_V4beta1_Job>

  func batchCreateJobs(
    _ request: Google_Cloud_Talent_V4beta1_BatchCreateJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_BatchCreateJobsRequest, Google_Longrunning_Operation>

  func getJob(
    _ request: Google_Cloud_Talent_V4beta1_GetJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_GetJobRequest, Google_Cloud_Talent_V4beta1_Job>

  func updateJob(
    _ request: Google_Cloud_Talent_V4beta1_UpdateJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_UpdateJobRequest, Google_Cloud_Talent_V4beta1_Job>

  func batchUpdateJobs(
    _ request: Google_Cloud_Talent_V4beta1_BatchUpdateJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_BatchUpdateJobsRequest, Google_Longrunning_Operation>

  func deleteJob(
    _ request: Google_Cloud_Talent_V4beta1_DeleteJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_DeleteJobRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func batchDeleteJobs(
    _ request: Google_Cloud_Talent_V4beta1_BatchDeleteJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_BatchDeleteJobsRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listJobs(
    _ request: Google_Cloud_Talent_V4beta1_ListJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_ListJobsRequest, Google_Cloud_Talent_V4beta1_ListJobsResponse>

  func searchJobs(
    _ request: Google_Cloud_Talent_V4beta1_SearchJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_SearchJobsRequest, Google_Cloud_Talent_V4beta1_SearchJobsResponse>

  func searchJobsForAlert(
    _ request: Google_Cloud_Talent_V4beta1_SearchJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_SearchJobsRequest, Google_Cloud_Talent_V4beta1_SearchJobsResponse>

}

extension Google_Cloud_Talent_V4beta1_JobServiceClientProtocol {

  /// Creates a new job.
  ///
  /// Typically, the job becomes searchable within 10 seconds, but it may take
  /// up to 5 minutes.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createJob(
    _ request: Google_Cloud_Talent_V4beta1_CreateJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_CreateJobRequest, Google_Cloud_Talent_V4beta1_Job> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/CreateJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Begins executing a batch create jobs operation.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchCreateJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchCreateJobs(
    _ request: Google_Cloud_Talent_V4beta1_BatchCreateJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_BatchCreateJobsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/BatchCreateJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves the specified job, whose status is OPEN or recently EXPIRED
  /// within the last 90 days.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getJob(
    _ request: Google_Cloud_Talent_V4beta1_GetJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_GetJobRequest, Google_Cloud_Talent_V4beta1_Job> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/GetJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates specified job.
  ///
  /// Typically, updated contents become visible in search results within 10
  /// seconds, but it may take up to 5 minutes.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateJob(
    _ request: Google_Cloud_Talent_V4beta1_UpdateJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_UpdateJobRequest, Google_Cloud_Talent_V4beta1_Job> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/UpdateJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Begins executing a batch update jobs operation.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchUpdateJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchUpdateJobs(
    _ request: Google_Cloud_Talent_V4beta1_BatchUpdateJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_BatchUpdateJobsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/BatchUpdateJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes the specified job.
  ///
  /// Typically, the job becomes unsearchable within 10 seconds, but it may take
  /// up to 5 minutes.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteJob(
    _ request: Google_Cloud_Talent_V4beta1_DeleteJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_DeleteJobRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/DeleteJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a list of [Job][google.cloud.talent.v4beta1.Job]s by filter.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchDeleteJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchDeleteJobs(
    _ request: Google_Cloud_Talent_V4beta1_BatchDeleteJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_BatchDeleteJobsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/BatchDeleteJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists jobs by filter.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listJobs(
    _ request: Google_Cloud_Talent_V4beta1_ListJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_ListJobsRequest, Google_Cloud_Talent_V4beta1_ListJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/ListJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Searches for jobs using the provided [SearchJobsRequest][google.cloud.talent.v4beta1.SearchJobsRequest].
  ///
  /// This call constrains the [visibility][google.cloud.talent.v4beta1.Job.visibility] of jobs
  /// present in the database, and only returns jobs that the caller has
  /// permission to search against.
  ///
  /// - Parameters:
  ///   - request: Request to send to SearchJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func searchJobs(
    _ request: Google_Cloud_Talent_V4beta1_SearchJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_SearchJobsRequest, Google_Cloud_Talent_V4beta1_SearchJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/SearchJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Searches for jobs using the provided [SearchJobsRequest][google.cloud.talent.v4beta1.SearchJobsRequest].
  ///
  /// This API call is intended for the use case of targeting passive job
  /// seekers (for example, job seekers who have signed up to receive email
  /// alerts about potential job opportunities), and has different algorithmic
  /// adjustments that are targeted to passive job seekers.
  ///
  /// This call constrains the [visibility][google.cloud.talent.v4beta1.Job.visibility] of jobs
  /// present in the database, and only returns jobs the caller has
  /// permission to search against.
  ///
  /// - Parameters:
  ///   - request: Request to send to SearchJobsForAlert.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func searchJobsForAlert(
    _ request: Google_Cloud_Talent_V4beta1_SearchJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_SearchJobsRequest, Google_Cloud_Talent_V4beta1_SearchJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.JobService/SearchJobsForAlert",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Talent_V4beta1_JobServiceClient: Google_Cloud_Talent_V4beta1_JobServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.talent.v4beta1.JobService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Google_Cloud_Talent_V4beta1_JobServiceProvider: CallHandlerProvider {
  /// Creates a new job.
  ///
  /// Typically, the job becomes searchable within 10 seconds, but it may take
  /// up to 5 minutes.
  func createJob(request: Google_Cloud_Talent_V4beta1_CreateJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_Job>
  /// Begins executing a batch create jobs operation.
  func batchCreateJobs(request: Google_Cloud_Talent_V4beta1_BatchCreateJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Retrieves the specified job, whose status is OPEN or recently EXPIRED
  /// within the last 90 days.
  func getJob(request: Google_Cloud_Talent_V4beta1_GetJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_Job>
  /// Updates specified job.
  ///
  /// Typically, updated contents become visible in search results within 10
  /// seconds, but it may take up to 5 minutes.
  func updateJob(request: Google_Cloud_Talent_V4beta1_UpdateJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_Job>
  /// Begins executing a batch update jobs operation.
  func batchUpdateJobs(request: Google_Cloud_Talent_V4beta1_BatchUpdateJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes the specified job.
  ///
  /// Typically, the job becomes unsearchable within 10 seconds, but it may take
  /// up to 5 minutes.
  func deleteJob(request: Google_Cloud_Talent_V4beta1_DeleteJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Deletes a list of [Job][google.cloud.talent.v4beta1.Job]s by filter.
  func batchDeleteJobs(request: Google_Cloud_Talent_V4beta1_BatchDeleteJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Lists jobs by filter.
  func listJobs(request: Google_Cloud_Talent_V4beta1_ListJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_ListJobsResponse>
  /// Searches for jobs using the provided [SearchJobsRequest][google.cloud.talent.v4beta1.SearchJobsRequest].
  ///
  /// This call constrains the [visibility][google.cloud.talent.v4beta1.Job.visibility] of jobs
  /// present in the database, and only returns jobs that the caller has
  /// permission to search against.
  func searchJobs(request: Google_Cloud_Talent_V4beta1_SearchJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_SearchJobsResponse>
  /// Searches for jobs using the provided [SearchJobsRequest][google.cloud.talent.v4beta1.SearchJobsRequest].
  ///
  /// This API call is intended for the use case of targeting passive job
  /// seekers (for example, job seekers who have signed up to receive email
  /// alerts about potential job opportunities), and has different algorithmic
  /// adjustments that are targeted to passive job seekers.
  ///
  /// This call constrains the [visibility][google.cloud.talent.v4beta1.Job.visibility] of jobs
  /// present in the database, and only returns jobs the caller has
  /// permission to search against.
  func searchJobsForAlert(request: Google_Cloud_Talent_V4beta1_SearchJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_SearchJobsResponse>
}

extension Google_Cloud_Talent_V4beta1_JobServiceProvider {
  public var serviceName: Substring { return "google.cloud.talent.v4beta1.JobService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createJob(request: request, context: context)
        }
      }

    case "BatchCreateJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchCreateJobs(request: request, context: context)
        }
      }

    case "GetJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getJob(request: request, context: context)
        }
      }

    case "UpdateJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateJob(request: request, context: context)
        }
      }

    case "BatchUpdateJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchUpdateJobs(request: request, context: context)
        }
      }

    case "DeleteJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteJob(request: request, context: context)
        }
      }

    case "BatchDeleteJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchDeleteJobs(request: request, context: context)
        }
      }

    case "ListJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listJobs(request: request, context: context)
        }
      }

    case "SearchJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.searchJobs(request: request, context: context)
        }
      }

    case "SearchJobsForAlert":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.searchJobsForAlert(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
