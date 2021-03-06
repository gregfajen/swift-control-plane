//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/bigtable/admin/cluster/v1/bigtable_cluster_service.proto
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


/// Usage: instantiate Google_Bigtable_Admin_Cluster_V1_BigtableClusterServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Bigtable_Admin_Cluster_V1_BigtableClusterServiceClientProtocol: GRPCClient {
  func listZones(
    _ request: Google_Bigtable_Admin_Cluster_V1_ListZonesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_ListZonesRequest, Google_Bigtable_Admin_Cluster_V1_ListZonesResponse>

  func getCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_GetClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_GetClusterRequest, Google_Bigtable_Admin_Cluster_V1_Cluster>

  func listClusters(
    _ request: Google_Bigtable_Admin_Cluster_V1_ListClustersRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_ListClustersRequest, Google_Bigtable_Admin_Cluster_V1_ListClustersResponse>

  func createCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_CreateClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_CreateClusterRequest, Google_Bigtable_Admin_Cluster_V1_Cluster>

  func updateCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_Cluster,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_Cluster, Google_Bigtable_Admin_Cluster_V1_Cluster>

  func deleteCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_DeleteClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_DeleteClusterRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func undeleteCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_UndeleteClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_UndeleteClusterRequest, Google_Longrunning_Operation>

}

extension Google_Bigtable_Admin_Cluster_V1_BigtableClusterServiceClientProtocol {

  /// Lists the supported zones for the given project.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListZones.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listZones(
    _ request: Google_Bigtable_Admin_Cluster_V1_ListZonesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_ListZonesRequest, Google_Bigtable_Admin_Cluster_V1_ListZonesResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.cluster.v1.BigtableClusterService/ListZones",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets information about a particular cluster.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_GetClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_GetClusterRequest, Google_Bigtable_Admin_Cluster_V1_Cluster> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.cluster.v1.BigtableClusterService/GetCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all clusters in the given project, along with any zones for which
  /// cluster information could not be retrieved.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListClusters.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listClusters(
    _ request: Google_Bigtable_Admin_Cluster_V1_ListClustersRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_ListClustersRequest, Google_Bigtable_Admin_Cluster_V1_ListClustersResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.cluster.v1.BigtableClusterService/ListClusters",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a cluster and begins preparing it to begin serving. The returned
  /// cluster embeds as its "current_operation" a long-running operation which
  /// can be used to track the progress of turning up the new cluster.
  /// Immediately upon completion of this request:
  ///  * The cluster will be readable via the API, with all requested attributes
  ///    but no allocated resources.
  /// Until completion of the embedded operation:
  ///  * Cancelling the operation will render the cluster immediately unreadable
  ///    via the API.
  ///  * All other attempts to modify or delete the cluster will be rejected.
  /// Upon completion of the embedded operation:
  ///  * Billing for all successfully-allocated resources will begin (some types
  ///    may have lower than the requested levels).
  ///  * New tables can be created in the cluster.
  ///  * The cluster's allocated resource levels will be readable via the API.
  /// The embedded operation's "metadata" field type is
  /// [CreateClusterMetadata][google.bigtable.admin.cluster.v1.CreateClusterMetadata]
  /// The embedded operation's "response" field type is
  /// [Cluster][google.bigtable.admin.cluster.v1.Cluster], if successful.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_CreateClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_CreateClusterRequest, Google_Bigtable_Admin_Cluster_V1_Cluster> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.cluster.v1.BigtableClusterService/CreateCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a cluster, and begins allocating or releasing resources as
  /// requested. The returned cluster embeds as its "current_operation" a
  /// long-running operation which can be used to track the progress of updating
  /// the cluster.
  /// Immediately upon completion of this request:
  ///  * For resource types where a decrease in the cluster's allocation has been
  ///    requested, billing will be based on the newly-requested level.
  /// Until completion of the embedded operation:
  ///  * Cancelling the operation will set its metadata's "cancelled_at_time",
  ///    and begin restoring resources to their pre-request values. The operation
  ///    is guaranteed to succeed at undoing all resource changes, after which
  ///    point it will terminate with a CANCELLED status.
  ///  * All other attempts to modify or delete the cluster will be rejected.
  ///  * Reading the cluster via the API will continue to give the pre-request
  ///    resource levels.
  /// Upon completion of the embedded operation:
  ///  * Billing will begin for all successfully-allocated resources (some types
  ///    may have lower than the requested levels).
  ///  * All newly-reserved resources will be available for serving the cluster's
  ///    tables.
  ///  * The cluster's new resource levels will be readable via the API.
  /// [UpdateClusterMetadata][google.bigtable.admin.cluster.v1.UpdateClusterMetadata]
  /// The embedded operation's "response" field type is
  /// [Cluster][google.bigtable.admin.cluster.v1.Cluster], if successful.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_Cluster,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_Cluster, Google_Bigtable_Admin_Cluster_V1_Cluster> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.cluster.v1.BigtableClusterService/UpdateCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Marks a cluster and all of its tables for permanent deletion in 7 days.
  /// Immediately upon completion of the request:
  ///  * Billing will cease for all of the cluster's reserved resources.
  ///  * The cluster's "delete_time" field will be set 7 days in the future.
  /// Soon afterward:
  ///  * All tables within the cluster will become unavailable.
  /// Prior to the cluster's "delete_time":
  ///  * The cluster can be recovered with a call to UndeleteCluster.
  ///  * All other attempts to modify or delete the cluster will be rejected.
  /// At the cluster's "delete_time":
  ///  * The cluster and *all of its tables* will immediately and irrevocably
  ///    disappear from the API, and their data will be permanently deleted.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_DeleteClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_DeleteClusterRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.cluster.v1.BigtableClusterService/DeleteCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Cancels the scheduled deletion of an cluster and begins preparing it to
  /// resume serving. The returned operation will also be embedded as the
  /// cluster's "current_operation".
  /// Immediately upon completion of this request:
  ///  * The cluster's "delete_time" field will be unset, protecting it from
  ///    automatic deletion.
  /// Until completion of the returned operation:
  ///  * The operation cannot be cancelled.
  /// Upon completion of the returned operation:
  ///  * Billing for the cluster's resources will resume.
  ///  * All tables within the cluster will be available.
  /// [UndeleteClusterMetadata][google.bigtable.admin.cluster.v1.UndeleteClusterMetadata]
  /// The embedded operation's "response" field type is
  /// [Cluster][google.bigtable.admin.cluster.v1.Cluster], if successful.
  ///
  /// - Parameters:
  ///   - request: Request to send to UndeleteCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func undeleteCluster(
    _ request: Google_Bigtable_Admin_Cluster_V1_UndeleteClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_Cluster_V1_UndeleteClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.cluster.v1.BigtableClusterService/UndeleteCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Bigtable_Admin_Cluster_V1_BigtableClusterServiceClient: Google_Bigtable_Admin_Cluster_V1_BigtableClusterServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.bigtable.admin.cluster.v1.BigtableClusterService service.
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
public protocol Google_Bigtable_Admin_Cluster_V1_BigtableClusterServiceProvider: CallHandlerProvider {
  /// Lists the supported zones for the given project.
  func listZones(request: Google_Bigtable_Admin_Cluster_V1_ListZonesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_Cluster_V1_ListZonesResponse>
  /// Gets information about a particular cluster.
  func getCluster(request: Google_Bigtable_Admin_Cluster_V1_GetClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_Cluster_V1_Cluster>
  /// Lists all clusters in the given project, along with any zones for which
  /// cluster information could not be retrieved.
  func listClusters(request: Google_Bigtable_Admin_Cluster_V1_ListClustersRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_Cluster_V1_ListClustersResponse>
  /// Creates a cluster and begins preparing it to begin serving. The returned
  /// cluster embeds as its "current_operation" a long-running operation which
  /// can be used to track the progress of turning up the new cluster.
  /// Immediately upon completion of this request:
  ///  * The cluster will be readable via the API, with all requested attributes
  ///    but no allocated resources.
  /// Until completion of the embedded operation:
  ///  * Cancelling the operation will render the cluster immediately unreadable
  ///    via the API.
  ///  * All other attempts to modify or delete the cluster will be rejected.
  /// Upon completion of the embedded operation:
  ///  * Billing for all successfully-allocated resources will begin (some types
  ///    may have lower than the requested levels).
  ///  * New tables can be created in the cluster.
  ///  * The cluster's allocated resource levels will be readable via the API.
  /// The embedded operation's "metadata" field type is
  /// [CreateClusterMetadata][google.bigtable.admin.cluster.v1.CreateClusterMetadata]
  /// The embedded operation's "response" field type is
  /// [Cluster][google.bigtable.admin.cluster.v1.Cluster], if successful.
  func createCluster(request: Google_Bigtable_Admin_Cluster_V1_CreateClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_Cluster_V1_Cluster>
  /// Updates a cluster, and begins allocating or releasing resources as
  /// requested. The returned cluster embeds as its "current_operation" a
  /// long-running operation which can be used to track the progress of updating
  /// the cluster.
  /// Immediately upon completion of this request:
  ///  * For resource types where a decrease in the cluster's allocation has been
  ///    requested, billing will be based on the newly-requested level.
  /// Until completion of the embedded operation:
  ///  * Cancelling the operation will set its metadata's "cancelled_at_time",
  ///    and begin restoring resources to their pre-request values. The operation
  ///    is guaranteed to succeed at undoing all resource changes, after which
  ///    point it will terminate with a CANCELLED status.
  ///  * All other attempts to modify or delete the cluster will be rejected.
  ///  * Reading the cluster via the API will continue to give the pre-request
  ///    resource levels.
  /// Upon completion of the embedded operation:
  ///  * Billing will begin for all successfully-allocated resources (some types
  ///    may have lower than the requested levels).
  ///  * All newly-reserved resources will be available for serving the cluster's
  ///    tables.
  ///  * The cluster's new resource levels will be readable via the API.
  /// [UpdateClusterMetadata][google.bigtable.admin.cluster.v1.UpdateClusterMetadata]
  /// The embedded operation's "response" field type is
  /// [Cluster][google.bigtable.admin.cluster.v1.Cluster], if successful.
  func updateCluster(request: Google_Bigtable_Admin_Cluster_V1_Cluster, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_Cluster_V1_Cluster>
  /// Marks a cluster and all of its tables for permanent deletion in 7 days.
  /// Immediately upon completion of the request:
  ///  * Billing will cease for all of the cluster's reserved resources.
  ///  * The cluster's "delete_time" field will be set 7 days in the future.
  /// Soon afterward:
  ///  * All tables within the cluster will become unavailable.
  /// Prior to the cluster's "delete_time":
  ///  * The cluster can be recovered with a call to UndeleteCluster.
  ///  * All other attempts to modify or delete the cluster will be rejected.
  /// At the cluster's "delete_time":
  ///  * The cluster and *all of its tables* will immediately and irrevocably
  ///    disappear from the API, and their data will be permanently deleted.
  func deleteCluster(request: Google_Bigtable_Admin_Cluster_V1_DeleteClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Cancels the scheduled deletion of an cluster and begins preparing it to
  /// resume serving. The returned operation will also be embedded as the
  /// cluster's "current_operation".
  /// Immediately upon completion of this request:
  ///  * The cluster's "delete_time" field will be unset, protecting it from
  ///    automatic deletion.
  /// Until completion of the returned operation:
  ///  * The operation cannot be cancelled.
  /// Upon completion of the returned operation:
  ///  * Billing for the cluster's resources will resume.
  ///  * All tables within the cluster will be available.
  /// [UndeleteClusterMetadata][google.bigtable.admin.cluster.v1.UndeleteClusterMetadata]
  /// The embedded operation's "response" field type is
  /// [Cluster][google.bigtable.admin.cluster.v1.Cluster], if successful.
  func undeleteCluster(request: Google_Bigtable_Admin_Cluster_V1_UndeleteClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Bigtable_Admin_Cluster_V1_BigtableClusterServiceProvider {
  public var serviceName: Substring { return "google.bigtable.admin.cluster.v1.BigtableClusterService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListZones":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listZones(request: request, context: context)
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

    case "UndeleteCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.undeleteCluster(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

