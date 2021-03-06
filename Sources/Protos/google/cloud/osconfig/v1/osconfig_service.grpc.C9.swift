//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/osconfig/v1/osconfig_service.proto
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


/// Usage: instantiate Google_Cloud_Osconfig_V1_OsConfigServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Osconfig_V1_OsConfigServiceClientProtocol: GRPCClient {
  func executePatchJob(
    _ request: Google_Cloud_Osconfig_V1_ExecutePatchJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ExecutePatchJobRequest, Google_Cloud_Osconfig_V1_PatchJob>

  func getPatchJob(
    _ request: Google_Cloud_Osconfig_V1_GetPatchJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_GetPatchJobRequest, Google_Cloud_Osconfig_V1_PatchJob>

  func cancelPatchJob(
    _ request: Google_Cloud_Osconfig_V1_CancelPatchJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_CancelPatchJobRequest, Google_Cloud_Osconfig_V1_PatchJob>

  func listPatchJobs(
    _ request: Google_Cloud_Osconfig_V1_ListPatchJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ListPatchJobsRequest, Google_Cloud_Osconfig_V1_ListPatchJobsResponse>

  func listPatchJobInstanceDetails(
    _ request: Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsRequest, Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsResponse>

  func createPatchDeployment(
    _ request: Google_Cloud_Osconfig_V1_CreatePatchDeploymentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_CreatePatchDeploymentRequest, Google_Cloud_Osconfig_V1_PatchDeployment>

  func getPatchDeployment(
    _ request: Google_Cloud_Osconfig_V1_GetPatchDeploymentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_GetPatchDeploymentRequest, Google_Cloud_Osconfig_V1_PatchDeployment>

  func listPatchDeployments(
    _ request: Google_Cloud_Osconfig_V1_ListPatchDeploymentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ListPatchDeploymentsRequest, Google_Cloud_Osconfig_V1_ListPatchDeploymentsResponse>

  func deletePatchDeployment(
    _ request: Google_Cloud_Osconfig_V1_DeletePatchDeploymentRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_DeletePatchDeploymentRequest, SwiftProtobuf.Google_Protobuf_Empty>

}

extension Google_Cloud_Osconfig_V1_OsConfigServiceClientProtocol {

  /// Patch VM instances by creating and running a patch job.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExecutePatchJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func executePatchJob(
    _ request: Google_Cloud_Osconfig_V1_ExecutePatchJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ExecutePatchJobRequest, Google_Cloud_Osconfig_V1_PatchJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/ExecutePatchJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Get the patch job. This can be used to track the progress of an
  /// ongoing patch job or review the details of completed jobs.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPatchJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPatchJob(
    _ request: Google_Cloud_Osconfig_V1_GetPatchJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_GetPatchJobRequest, Google_Cloud_Osconfig_V1_PatchJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/GetPatchJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Cancel a patch job. The patch job must be active. Canceled patch jobs
  /// cannot be restarted.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelPatchJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelPatchJob(
    _ request: Google_Cloud_Osconfig_V1_CancelPatchJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_CancelPatchJobRequest, Google_Cloud_Osconfig_V1_PatchJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/CancelPatchJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Get a list of patch jobs.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListPatchJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listPatchJobs(
    _ request: Google_Cloud_Osconfig_V1_ListPatchJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ListPatchJobsRequest, Google_Cloud_Osconfig_V1_ListPatchJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/ListPatchJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Get a list of instance details for a given patch job.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListPatchJobInstanceDetails.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listPatchJobInstanceDetails(
    _ request: Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsRequest, Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/ListPatchJobInstanceDetails",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Create an OS Config patch deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreatePatchDeployment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createPatchDeployment(
    _ request: Google_Cloud_Osconfig_V1_CreatePatchDeploymentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_CreatePatchDeploymentRequest, Google_Cloud_Osconfig_V1_PatchDeployment> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/CreatePatchDeployment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Get an OS Config patch deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPatchDeployment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPatchDeployment(
    _ request: Google_Cloud_Osconfig_V1_GetPatchDeploymentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_GetPatchDeploymentRequest, Google_Cloud_Osconfig_V1_PatchDeployment> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/GetPatchDeployment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Get a page of OS Config patch deployments.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListPatchDeployments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listPatchDeployments(
    _ request: Google_Cloud_Osconfig_V1_ListPatchDeploymentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_ListPatchDeploymentsRequest, Google_Cloud_Osconfig_V1_ListPatchDeploymentsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/ListPatchDeployments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Delete an OS Config patch deployment.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeletePatchDeployment.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deletePatchDeployment(
    _ request: Google_Cloud_Osconfig_V1_DeletePatchDeploymentRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Osconfig_V1_DeletePatchDeploymentRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.osconfig.v1.OsConfigService/DeletePatchDeployment",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Osconfig_V1_OsConfigServiceClient: Google_Cloud_Osconfig_V1_OsConfigServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.osconfig.v1.OsConfigService service.
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
public protocol Google_Cloud_Osconfig_V1_OsConfigServiceProvider: CallHandlerProvider {
  /// Patch VM instances by creating and running a patch job.
  func executePatchJob(request: Google_Cloud_Osconfig_V1_ExecutePatchJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_PatchJob>
  /// Get the patch job. This can be used to track the progress of an
  /// ongoing patch job or review the details of completed jobs.
  func getPatchJob(request: Google_Cloud_Osconfig_V1_GetPatchJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_PatchJob>
  /// Cancel a patch job. The patch job must be active. Canceled patch jobs
  /// cannot be restarted.
  func cancelPatchJob(request: Google_Cloud_Osconfig_V1_CancelPatchJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_PatchJob>
  /// Get a list of patch jobs.
  func listPatchJobs(request: Google_Cloud_Osconfig_V1_ListPatchJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_ListPatchJobsResponse>
  /// Get a list of instance details for a given patch job.
  func listPatchJobInstanceDetails(request: Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_ListPatchJobInstanceDetailsResponse>
  /// Create an OS Config patch deployment.
  func createPatchDeployment(request: Google_Cloud_Osconfig_V1_CreatePatchDeploymentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_PatchDeployment>
  /// Get an OS Config patch deployment.
  func getPatchDeployment(request: Google_Cloud_Osconfig_V1_GetPatchDeploymentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_PatchDeployment>
  /// Get a page of OS Config patch deployments.
  func listPatchDeployments(request: Google_Cloud_Osconfig_V1_ListPatchDeploymentsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Osconfig_V1_ListPatchDeploymentsResponse>
  /// Delete an OS Config patch deployment.
  func deletePatchDeployment(request: Google_Cloud_Osconfig_V1_DeletePatchDeploymentRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Google_Cloud_Osconfig_V1_OsConfigServiceProvider {
  public var serviceName: Substring { return "google.cloud.osconfig.v1.OsConfigService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ExecutePatchJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.executePatchJob(request: request, context: context)
        }
      }

    case "GetPatchJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getPatchJob(request: request, context: context)
        }
      }

    case "CancelPatchJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelPatchJob(request: request, context: context)
        }
      }

    case "ListPatchJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listPatchJobs(request: request, context: context)
        }
      }

    case "ListPatchJobInstanceDetails":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listPatchJobInstanceDetails(request: request, context: context)
        }
      }

    case "CreatePatchDeployment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createPatchDeployment(request: request, context: context)
        }
      }

    case "GetPatchDeployment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getPatchDeployment(request: request, context: context)
        }
      }

    case "ListPatchDeployments":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listPatchDeployments(request: request, context: context)
        }
      }

    case "DeletePatchDeployment":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deletePatchDeployment(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

