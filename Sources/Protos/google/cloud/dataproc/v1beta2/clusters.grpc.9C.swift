//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/dataproc/v1beta2/clusters.proto
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


/// Usage: instantiate Google_Cloud_Dataproc_V1beta2_ClusterControllerClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Dataproc_V1beta2_ClusterControllerClientProtocol: GRPCClient {
  func createCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_CreateClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_CreateClusterRequest, Google_Longrunning_Operation>

  func updateCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_UpdateClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_UpdateClusterRequest, Google_Longrunning_Operation>

  func deleteCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_DeleteClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_DeleteClusterRequest, Google_Longrunning_Operation>

  func getCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_GetClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_GetClusterRequest, Google_Cloud_Dataproc_V1beta2_Cluster>

  func listClusters(
    _ request: Google_Cloud_Dataproc_V1beta2_ListClustersRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_ListClustersRequest, Google_Cloud_Dataproc_V1beta2_ListClustersResponse>

  func diagnoseCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_DiagnoseClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_DiagnoseClusterRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Dataproc_V1beta2_ClusterControllerClientProtocol {

  /// Creates a cluster in a project. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_CreateClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_CreateClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.dataproc.v1beta2.ClusterController/CreateCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a cluster in a project. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_UpdateClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_UpdateClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.dataproc.v1beta2.ClusterController/UpdateCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a cluster in a project. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_DeleteClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_DeleteClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.dataproc.v1beta2.ClusterController/DeleteCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the resource representation for a cluster in a project.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_GetClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_GetClusterRequest, Google_Cloud_Dataproc_V1beta2_Cluster> {
    return self.makeUnaryCall(
      path: "/google.cloud.dataproc.v1beta2.ClusterController/GetCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all regions/{region}/clusters in a project alphabetically.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListClusters.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listClusters(
    _ request: Google_Cloud_Dataproc_V1beta2_ListClustersRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_ListClustersRequest, Google_Cloud_Dataproc_V1beta2_ListClustersResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.dataproc.v1beta2.ClusterController/ListClusters",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets cluster diagnostic information. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  /// After the operation completes,
  /// [Operation.response][google.longrunning.Operation.response]
  /// contains
  /// [Empty][google.protobuf.Empty].
  ///
  /// - Parameters:
  ///   - request: Request to send to DiagnoseCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func diagnoseCluster(
    _ request: Google_Cloud_Dataproc_V1beta2_DiagnoseClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Dataproc_V1beta2_DiagnoseClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.dataproc.v1beta2.ClusterController/DiagnoseCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Dataproc_V1beta2_ClusterControllerClient: Google_Cloud_Dataproc_V1beta2_ClusterControllerClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.dataproc.v1beta2.ClusterController service.
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
public protocol Google_Cloud_Dataproc_V1beta2_ClusterControllerProvider: CallHandlerProvider {
  /// Creates a cluster in a project. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  func createCluster(request: Google_Cloud_Dataproc_V1beta2_CreateClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Updates a cluster in a project. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  func updateCluster(request: Google_Cloud_Dataproc_V1beta2_UpdateClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes a cluster in a project. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  func deleteCluster(request: Google_Cloud_Dataproc_V1beta2_DeleteClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets the resource representation for a cluster in a project.
  func getCluster(request: Google_Cloud_Dataproc_V1beta2_GetClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dataproc_V1beta2_Cluster>
  /// Lists all regions/{region}/clusters in a project alphabetically.
  func listClusters(request: Google_Cloud_Dataproc_V1beta2_ListClustersRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Dataproc_V1beta2_ListClustersResponse>
  /// Gets cluster diagnostic information. The returned
  /// [Operation.metadata][google.longrunning.Operation.metadata] will be
  /// [ClusterOperationMetadata](https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1beta2#clusteroperationmetadata).
  /// After the operation completes,
  /// [Operation.response][google.longrunning.Operation.response]
  /// contains
  /// [Empty][google.protobuf.Empty].
  func diagnoseCluster(request: Google_Cloud_Dataproc_V1beta2_DiagnoseClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Dataproc_V1beta2_ClusterControllerProvider {
  public var serviceName: Substring { return "google.cloud.dataproc.v1beta2.ClusterController" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createCluster(request: request, context: context)
        }
      }

    case "UpdateCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateCluster(request: request, context: context)
        }
      }

    case "DeleteCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteCluster(request: request, context: context)
        }
      }

    case "GetCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getCluster(request: request, context: context)
        }
      }

    case "ListClusters":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listClusters(request: request, context: context)
        }
      }

    case "DiagnoseCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.diagnoseCluster(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

