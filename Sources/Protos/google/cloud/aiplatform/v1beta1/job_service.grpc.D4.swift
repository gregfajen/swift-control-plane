//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/aiplatform/v1beta1/job_service.proto
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


/// Usage: instantiate Google_Cloud_Aiplatform_V1beta1_JobServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Aiplatform_V1beta1_JobServiceClientProtocol: GRPCClient {
  func createCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateCustomJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateCustomJobRequest, Google_Cloud_Aiplatform_V1beta1_CustomJob>

  func getCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetCustomJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetCustomJobRequest, Google_Cloud_Aiplatform_V1beta1_CustomJob>

  func listCustomJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListCustomJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListCustomJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListCustomJobsResponse>

  func deleteCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteCustomJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteCustomJobRequest, Google_Longrunning_Operation>

  func cancelCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelCustomJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelCustomJobRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateDataLabelingJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateDataLabelingJobRequest, Google_Cloud_Aiplatform_V1beta1_DataLabelingJob>

  func getDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetDataLabelingJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetDataLabelingJobRequest, Google_Cloud_Aiplatform_V1beta1_DataLabelingJob>

  func listDataLabelingJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsResponse>

  func deleteDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteDataLabelingJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteDataLabelingJobRequest, Google_Longrunning_Operation>

  func cancelDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelDataLabelingJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelDataLabelingJobRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateHyperparameterTuningJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateHyperparameterTuningJobRequest, Google_Cloud_Aiplatform_V1beta1_HyperparameterTuningJob>

  func getHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetHyperparameterTuningJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetHyperparameterTuningJobRequest, Google_Cloud_Aiplatform_V1beta1_HyperparameterTuningJob>

  func listHyperparameterTuningJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsResponse>

  func deleteHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteHyperparameterTuningJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteHyperparameterTuningJobRequest, Google_Longrunning_Operation>

  func cancelHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelHyperparameterTuningJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelHyperparameterTuningJobRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateBatchPredictionJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateBatchPredictionJobRequest, Google_Cloud_Aiplatform_V1beta1_BatchPredictionJob>

  func getBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetBatchPredictionJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetBatchPredictionJobRequest, Google_Cloud_Aiplatform_V1beta1_BatchPredictionJob>

  func listBatchPredictionJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsResponse>

  func deleteBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteBatchPredictionJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteBatchPredictionJobRequest, Google_Longrunning_Operation>

  func cancelBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelBatchPredictionJobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelBatchPredictionJobRequest, SwiftProtobuf.Google_Protobuf_Empty>

}

extension Google_Cloud_Aiplatform_V1beta1_JobServiceClientProtocol {

  /// Creates a CustomJob. A created CustomJob right away
  /// will be attempted to be run.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateCustomJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateCustomJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateCustomJobRequest, Google_Cloud_Aiplatform_V1beta1_CustomJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CreateCustomJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a CustomJob.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCustomJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetCustomJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetCustomJobRequest, Google_Cloud_Aiplatform_V1beta1_CustomJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/GetCustomJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists CustomJobs in a Location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListCustomJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listCustomJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListCustomJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListCustomJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListCustomJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/ListCustomJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a CustomJob.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteCustomJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteCustomJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteCustomJobRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/DeleteCustomJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Cancels a CustomJob.
  /// Starts asynchronous cancellation on the CustomJob. The server
  /// makes a best effort to cancel the job, but success is not
  /// guaranteed. Clients can use [JobService.GetCustomJob][google.cloud.aiplatform.v1beta1.JobService.GetCustomJob] or
  /// other methods to check whether the cancellation succeeded or whether the
  /// job completed despite cancellation. On successful cancellation,
  /// the CustomJob is not deleted; instead it becomes a job with
  /// a [CustomJob.error][google.cloud.aiplatform.v1beta1.CustomJob.error] value with a [google.rpc.Status.code][google.rpc.Status.code] of 1,
  /// corresponding to `Code.CANCELLED`, and [CustomJob.state][google.cloud.aiplatform.v1beta1.CustomJob.state] is set to
  /// `CANCELLED`.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelCustomJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelCustomJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelCustomJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelCustomJobRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CancelCustomJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a DataLabelingJob.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateDataLabelingJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateDataLabelingJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateDataLabelingJobRequest, Google_Cloud_Aiplatform_V1beta1_DataLabelingJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CreateDataLabelingJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a DataLabelingJob.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDataLabelingJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetDataLabelingJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetDataLabelingJobRequest, Google_Cloud_Aiplatform_V1beta1_DataLabelingJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/GetDataLabelingJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists DataLabelingJobs in a Location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDataLabelingJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDataLabelingJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/ListDataLabelingJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a DataLabelingJob.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDataLabelingJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteDataLabelingJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteDataLabelingJobRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/DeleteDataLabelingJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Cancels a DataLabelingJob. Success of cancellation is not guaranteed.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelDataLabelingJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelDataLabelingJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelDataLabelingJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelDataLabelingJobRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CancelDataLabelingJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a HyperparameterTuningJob
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateHyperparameterTuningJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateHyperparameterTuningJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateHyperparameterTuningJobRequest, Google_Cloud_Aiplatform_V1beta1_HyperparameterTuningJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CreateHyperparameterTuningJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a HyperparameterTuningJob
  ///
  /// - Parameters:
  ///   - request: Request to send to GetHyperparameterTuningJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetHyperparameterTuningJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetHyperparameterTuningJobRequest, Google_Cloud_Aiplatform_V1beta1_HyperparameterTuningJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/GetHyperparameterTuningJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists HyperparameterTuningJobs in a Location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListHyperparameterTuningJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listHyperparameterTuningJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/ListHyperparameterTuningJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a HyperparameterTuningJob.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteHyperparameterTuningJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteHyperparameterTuningJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteHyperparameterTuningJobRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/DeleteHyperparameterTuningJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Cancels a HyperparameterTuningJob.
  /// Starts asynchronous cancellation on the HyperparameterTuningJob. The server
  /// makes a best effort to cancel the job, but success is not
  /// guaranteed. Clients can use [JobService.GetHyperparameterTuningJob][google.cloud.aiplatform.v1beta1.JobService.GetHyperparameterTuningJob] or
  /// other methods to check whether the cancellation succeeded or whether the
  /// job completed despite cancellation. On successful cancellation,
  /// the HyperparameterTuningJob is not deleted; instead it becomes a job with
  /// a [HyperparameterTuningJob.error][google.cloud.aiplatform.v1beta1.HyperparameterTuningJob.error] value with a [google.rpc.Status.code][google.rpc.Status.code]
  /// of 1, corresponding to `Code.CANCELLED`, and
  /// [HyperparameterTuningJob.state][google.cloud.aiplatform.v1beta1.HyperparameterTuningJob.state] is set to `CANCELLED`.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelHyperparameterTuningJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelHyperparameterTuningJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelHyperparameterTuningJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelHyperparameterTuningJobRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CancelHyperparameterTuningJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a BatchPredictionJob. A BatchPredictionJob once created will
  /// right away be attempted to start.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateBatchPredictionJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CreateBatchPredictionJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CreateBatchPredictionJobRequest, Google_Cloud_Aiplatform_V1beta1_BatchPredictionJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CreateBatchPredictionJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a BatchPredictionJob
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBatchPredictionJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_GetBatchPredictionJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_GetBatchPredictionJobRequest, Google_Cloud_Aiplatform_V1beta1_BatchPredictionJob> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/GetBatchPredictionJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists BatchPredictionJobs in a Location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListBatchPredictionJobs.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listBatchPredictionJobs(
    _ request: Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsRequest, Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/ListBatchPredictionJobs",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a BatchPredictionJob. Can only be called on jobs that already
  /// finished.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteBatchPredictionJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_DeleteBatchPredictionJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_DeleteBatchPredictionJobRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/DeleteBatchPredictionJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Cancels a BatchPredictionJob.
  ///
  /// Starts asynchronous cancellation on the BatchPredictionJob. The server
  /// makes the best effort to cancel the job, but success is not
  /// guaranteed. Clients can use [JobService.GetBatchPredictionJob][google.cloud.aiplatform.v1beta1.JobService.GetBatchPredictionJob] or
  /// other methods to check whether the cancellation succeeded or whether the
  /// job completed despite cancellation. On a successful cancellation,
  /// the BatchPredictionJob is not deleted;instead its
  /// [BatchPredictionJob.state][google.cloud.aiplatform.v1beta1.BatchPredictionJob.state] is set to `CANCELLED`. Any files already
  /// outputted by the job are not deleted.
  ///
  /// - Parameters:
  ///   - request: Request to send to CancelBatchPredictionJob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func cancelBatchPredictionJob(
    _ request: Google_Cloud_Aiplatform_V1beta1_CancelBatchPredictionJobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Aiplatform_V1beta1_CancelBatchPredictionJobRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.aiplatform.v1beta1.JobService/CancelBatchPredictionJob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Aiplatform_V1beta1_JobServiceClient: Google_Cloud_Aiplatform_V1beta1_JobServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.aiplatform.v1beta1.JobService service.
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
public protocol Google_Cloud_Aiplatform_V1beta1_JobServiceProvider: CallHandlerProvider {
  /// Creates a CustomJob. A created CustomJob right away
  /// will be attempted to be run.
  func createCustomJob(request: Google_Cloud_Aiplatform_V1beta1_CreateCustomJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_CustomJob>
  /// Gets a CustomJob.
  func getCustomJob(request: Google_Cloud_Aiplatform_V1beta1_GetCustomJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_CustomJob>
  /// Lists CustomJobs in a Location.
  func listCustomJobs(request: Google_Cloud_Aiplatform_V1beta1_ListCustomJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ListCustomJobsResponse>
  /// Deletes a CustomJob.
  func deleteCustomJob(request: Google_Cloud_Aiplatform_V1beta1_DeleteCustomJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Cancels a CustomJob.
  /// Starts asynchronous cancellation on the CustomJob. The server
  /// makes a best effort to cancel the job, but success is not
  /// guaranteed. Clients can use [JobService.GetCustomJob][google.cloud.aiplatform.v1beta1.JobService.GetCustomJob] or
  /// other methods to check whether the cancellation succeeded or whether the
  /// job completed despite cancellation. On successful cancellation,
  /// the CustomJob is not deleted; instead it becomes a job with
  /// a [CustomJob.error][google.cloud.aiplatform.v1beta1.CustomJob.error] value with a [google.rpc.Status.code][google.rpc.Status.code] of 1,
  /// corresponding to `Code.CANCELLED`, and [CustomJob.state][google.cloud.aiplatform.v1beta1.CustomJob.state] is set to
  /// `CANCELLED`.
  func cancelCustomJob(request: Google_Cloud_Aiplatform_V1beta1_CancelCustomJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Creates a DataLabelingJob.
  func createDataLabelingJob(request: Google_Cloud_Aiplatform_V1beta1_CreateDataLabelingJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_DataLabelingJob>
  /// Gets a DataLabelingJob.
  func getDataLabelingJob(request: Google_Cloud_Aiplatform_V1beta1_GetDataLabelingJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_DataLabelingJob>
  /// Lists DataLabelingJobs in a Location.
  func listDataLabelingJobs(request: Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ListDataLabelingJobsResponse>
  /// Deletes a DataLabelingJob.
  func deleteDataLabelingJob(request: Google_Cloud_Aiplatform_V1beta1_DeleteDataLabelingJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Cancels a DataLabelingJob. Success of cancellation is not guaranteed.
  func cancelDataLabelingJob(request: Google_Cloud_Aiplatform_V1beta1_CancelDataLabelingJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Creates a HyperparameterTuningJob
  func createHyperparameterTuningJob(request: Google_Cloud_Aiplatform_V1beta1_CreateHyperparameterTuningJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_HyperparameterTuningJob>
  /// Gets a HyperparameterTuningJob
  func getHyperparameterTuningJob(request: Google_Cloud_Aiplatform_V1beta1_GetHyperparameterTuningJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_HyperparameterTuningJob>
  /// Lists HyperparameterTuningJobs in a Location.
  func listHyperparameterTuningJobs(request: Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ListHyperparameterTuningJobsResponse>
  /// Deletes a HyperparameterTuningJob.
  func deleteHyperparameterTuningJob(request: Google_Cloud_Aiplatform_V1beta1_DeleteHyperparameterTuningJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Cancels a HyperparameterTuningJob.
  /// Starts asynchronous cancellation on the HyperparameterTuningJob. The server
  /// makes a best effort to cancel the job, but success is not
  /// guaranteed. Clients can use [JobService.GetHyperparameterTuningJob][google.cloud.aiplatform.v1beta1.JobService.GetHyperparameterTuningJob] or
  /// other methods to check whether the cancellation succeeded or whether the
  /// job completed despite cancellation. On successful cancellation,
  /// the HyperparameterTuningJob is not deleted; instead it becomes a job with
  /// a [HyperparameterTuningJob.error][google.cloud.aiplatform.v1beta1.HyperparameterTuningJob.error] value with a [google.rpc.Status.code][google.rpc.Status.code]
  /// of 1, corresponding to `Code.CANCELLED`, and
  /// [HyperparameterTuningJob.state][google.cloud.aiplatform.v1beta1.HyperparameterTuningJob.state] is set to `CANCELLED`.
  func cancelHyperparameterTuningJob(request: Google_Cloud_Aiplatform_V1beta1_CancelHyperparameterTuningJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Creates a BatchPredictionJob. A BatchPredictionJob once created will
  /// right away be attempted to start.
  func createBatchPredictionJob(request: Google_Cloud_Aiplatform_V1beta1_CreateBatchPredictionJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_BatchPredictionJob>
  /// Gets a BatchPredictionJob
  func getBatchPredictionJob(request: Google_Cloud_Aiplatform_V1beta1_GetBatchPredictionJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_BatchPredictionJob>
  /// Lists BatchPredictionJobs in a Location.
  func listBatchPredictionJobs(request: Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Aiplatform_V1beta1_ListBatchPredictionJobsResponse>
  /// Deletes a BatchPredictionJob. Can only be called on jobs that already
  /// finished.
  func deleteBatchPredictionJob(request: Google_Cloud_Aiplatform_V1beta1_DeleteBatchPredictionJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Cancels a BatchPredictionJob.
  ///
  /// Starts asynchronous cancellation on the BatchPredictionJob. The server
  /// makes the best effort to cancel the job, but success is not
  /// guaranteed. Clients can use [JobService.GetBatchPredictionJob][google.cloud.aiplatform.v1beta1.JobService.GetBatchPredictionJob] or
  /// other methods to check whether the cancellation succeeded or whether the
  /// job completed despite cancellation. On a successful cancellation,
  /// the BatchPredictionJob is not deleted;instead its
  /// [BatchPredictionJob.state][google.cloud.aiplatform.v1beta1.BatchPredictionJob.state] is set to `CANCELLED`. Any files already
  /// outputted by the job are not deleted.
  func cancelBatchPredictionJob(request: Google_Cloud_Aiplatform_V1beta1_CancelBatchPredictionJobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Google_Cloud_Aiplatform_V1beta1_JobServiceProvider {
  public var serviceName: Substring { return "google.cloud.aiplatform.v1beta1.JobService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateCustomJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createCustomJob(request: request, context: context)
        }
      }

    case "GetCustomJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getCustomJob(request: request, context: context)
        }
      }

    case "ListCustomJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listCustomJobs(request: request, context: context)
        }
      }

    case "DeleteCustomJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteCustomJob(request: request, context: context)
        }
      }

    case "CancelCustomJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelCustomJob(request: request, context: context)
        }
      }

    case "CreateDataLabelingJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createDataLabelingJob(request: request, context: context)
        }
      }

    case "GetDataLabelingJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDataLabelingJob(request: request, context: context)
        }
      }

    case "ListDataLabelingJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDataLabelingJobs(request: request, context: context)
        }
      }

    case "DeleteDataLabelingJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteDataLabelingJob(request: request, context: context)
        }
      }

    case "CancelDataLabelingJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelDataLabelingJob(request: request, context: context)
        }
      }

    case "CreateHyperparameterTuningJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createHyperparameterTuningJob(request: request, context: context)
        }
      }

    case "GetHyperparameterTuningJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getHyperparameterTuningJob(request: request, context: context)
        }
      }

    case "ListHyperparameterTuningJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listHyperparameterTuningJobs(request: request, context: context)
        }
      }

    case "DeleteHyperparameterTuningJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteHyperparameterTuningJob(request: request, context: context)
        }
      }

    case "CancelHyperparameterTuningJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelHyperparameterTuningJob(request: request, context: context)
        }
      }

    case "CreateBatchPredictionJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createBatchPredictionJob(request: request, context: context)
        }
      }

    case "GetBatchPredictionJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getBatchPredictionJob(request: request, context: context)
        }
      }

    case "ListBatchPredictionJobs":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listBatchPredictionJobs(request: request, context: context)
        }
      }

    case "DeleteBatchPredictionJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteBatchPredictionJob(request: request, context: context)
        }
      }

    case "CancelBatchPredictionJob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.cancelBatchPredictionJob(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

