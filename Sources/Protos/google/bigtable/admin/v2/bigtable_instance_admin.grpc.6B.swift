//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/bigtable/admin/v2/bigtable_instance_admin.proto
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


/// Usage: instantiate Google_Bigtable_Admin_V2_BigtableInstanceAdminClient, then call methods of this protocol to make API calls.
public protocol Google_Bigtable_Admin_V2_BigtableInstanceAdminClientProtocol: GRPCClient {
  func createInstance(
    _ request: Google_Bigtable_Admin_V2_CreateInstanceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateInstanceRequest, Google_Longrunning_Operation>

  func getInstance(
    _ request: Google_Bigtable_Admin_V2_GetInstanceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetInstanceRequest, Google_Bigtable_Admin_V2_Instance>

  func listInstances(
    _ request: Google_Bigtable_Admin_V2_ListInstancesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListInstancesRequest, Google_Bigtable_Admin_V2_ListInstancesResponse>

  func updateInstance(
    _ request: Google_Bigtable_Admin_V2_Instance,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_Instance, Google_Bigtable_Admin_V2_Instance>

  func partialUpdateInstance(
    _ request: Google_Bigtable_Admin_V2_PartialUpdateInstanceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_PartialUpdateInstanceRequest, Google_Longrunning_Operation>

  func deleteInstance(
    _ request: Google_Bigtable_Admin_V2_DeleteInstanceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteInstanceRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createCluster(
    _ request: Google_Bigtable_Admin_V2_CreateClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateClusterRequest, Google_Longrunning_Operation>

  func getCluster(
    _ request: Google_Bigtable_Admin_V2_GetClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetClusterRequest, Google_Bigtable_Admin_V2_Cluster>

  func listClusters(
    _ request: Google_Bigtable_Admin_V2_ListClustersRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListClustersRequest, Google_Bigtable_Admin_V2_ListClustersResponse>

  func updateCluster(
    _ request: Google_Bigtable_Admin_V2_Cluster,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_Cluster, Google_Longrunning_Operation>

  func deleteCluster(
    _ request: Google_Bigtable_Admin_V2_DeleteClusterRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteClusterRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createAppProfile(
    _ request: Google_Bigtable_Admin_V2_CreateAppProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateAppProfileRequest, Google_Bigtable_Admin_V2_AppProfile>

  func getAppProfile(
    _ request: Google_Bigtable_Admin_V2_GetAppProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetAppProfileRequest, Google_Bigtable_Admin_V2_AppProfile>

  func listAppProfiles(
    _ request: Google_Bigtable_Admin_V2_ListAppProfilesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListAppProfilesRequest, Google_Bigtable_Admin_V2_ListAppProfilesResponse>

  func updateAppProfile(
    _ request: Google_Bigtable_Admin_V2_UpdateAppProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_UpdateAppProfileRequest, Google_Longrunning_Operation>

  func deleteAppProfile(
    _ request: Google_Bigtable_Admin_V2_DeleteAppProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteAppProfileRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getIamPolicy(
    _ request: Google_Iam_V1_GetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_GetIamPolicyRequest, Google_Iam_V1_Policy>

  func setIamPolicy(
    _ request: Google_Iam_V1_SetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_SetIamPolicyRequest, Google_Iam_V1_Policy>

  func testIamPermissions(
    _ request: Google_Iam_V1_TestIamPermissionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_TestIamPermissionsRequest, Google_Iam_V1_TestIamPermissionsResponse>

}

extension Google_Bigtable_Admin_V2_BigtableInstanceAdminClientProtocol {

  /// Create an instance within a project.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateInstance.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createInstance(
    _ request: Google_Bigtable_Admin_V2_CreateInstanceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateInstanceRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/CreateInstance",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets information about an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetInstance.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getInstance(
    _ request: Google_Bigtable_Admin_V2_GetInstanceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetInstanceRequest, Google_Bigtable_Admin_V2_Instance> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/GetInstance",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists information about instances in a project.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListInstances.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listInstances(
    _ request: Google_Bigtable_Admin_V2_ListInstancesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListInstancesRequest, Google_Bigtable_Admin_V2_ListInstancesResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/ListInstances",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates an instance within a project. This method updates only the display
  /// name and type for an Instance. To update other Instance properties, such as
  /// labels, use PartialUpdateInstance.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateInstance.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateInstance(
    _ request: Google_Bigtable_Admin_V2_Instance,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_Instance, Google_Bigtable_Admin_V2_Instance> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/UpdateInstance",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Partially updates an instance within a project. This method can modify all
  /// fields of an Instance and is the preferred way to update an Instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to PartialUpdateInstance.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func partialUpdateInstance(
    _ request: Google_Bigtable_Admin_V2_PartialUpdateInstanceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_PartialUpdateInstanceRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/PartialUpdateInstance",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Delete an instance from a project.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteInstance.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteInstance(
    _ request: Google_Bigtable_Admin_V2_DeleteInstanceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteInstanceRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/DeleteInstance",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a cluster within an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createCluster(
    _ request: Google_Bigtable_Admin_V2_CreateClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateClusterRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/CreateCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets information about a cluster.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getCluster(
    _ request: Google_Bigtable_Admin_V2_GetClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetClusterRequest, Google_Bigtable_Admin_V2_Cluster> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/GetCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists information about clusters in an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListClusters.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listClusters(
    _ request: Google_Bigtable_Admin_V2_ListClustersRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListClustersRequest, Google_Bigtable_Admin_V2_ListClustersResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/ListClusters",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a cluster within an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateCluster(
    _ request: Google_Bigtable_Admin_V2_Cluster,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_Cluster, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/UpdateCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a cluster from an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteCluster.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteCluster(
    _ request: Google_Bigtable_Admin_V2_DeleteClusterRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteClusterRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/DeleteCluster",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates an app profile within an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateAppProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createAppProfile(
    _ request: Google_Bigtable_Admin_V2_CreateAppProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateAppProfileRequest, Google_Bigtable_Admin_V2_AppProfile> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/CreateAppProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets information about an app profile.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAppProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAppProfile(
    _ request: Google_Bigtable_Admin_V2_GetAppProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetAppProfileRequest, Google_Bigtable_Admin_V2_AppProfile> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/GetAppProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists information about app profiles in an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListAppProfiles.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listAppProfiles(
    _ request: Google_Bigtable_Admin_V2_ListAppProfilesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListAppProfilesRequest, Google_Bigtable_Admin_V2_ListAppProfilesResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/ListAppProfiles",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates an app profile within an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateAppProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateAppProfile(
    _ request: Google_Bigtable_Admin_V2_UpdateAppProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_UpdateAppProfileRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/UpdateAppProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes an app profile from an instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteAppProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteAppProfile(
    _ request: Google_Bigtable_Admin_V2_DeleteAppProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteAppProfileRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/DeleteAppProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the access control policy for an instance resource. Returns an empty
  /// policy if an instance exists but does not have a policy set.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetIamPolicy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getIamPolicy(
    _ request: Google_Iam_V1_GetIamPolicyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_V1_GetIamPolicyRequest, Google_Iam_V1_Policy> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the access control policy on an instance resource. Replaces any
  /// existing policy.
  ///
  /// - Parameters:
  ///   - request: Request to send to SetIamPolicy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setIamPolicy(
    _ request: Google_Iam_V1_SetIamPolicyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_V1_SetIamPolicyRequest, Google_Iam_V1_Policy> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns permissions that the caller has on the specified instance resource.
  ///
  /// - Parameters:
  ///   - request: Request to send to TestIamPermissions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func testIamPermissions(
    _ request: Google_Iam_V1_TestIamPermissionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_V1_TestIamPermissionsRequest, Google_Iam_V1_TestIamPermissionsResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableInstanceAdmin/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Bigtable_Admin_V2_BigtableInstanceAdminClient: Google_Bigtable_Admin_V2_BigtableInstanceAdminClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.bigtable.admin.v2.BigtableInstanceAdmin service.
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
public protocol Google_Bigtable_Admin_V2_BigtableInstanceAdminProvider: CallHandlerProvider {
  /// Create an instance within a project.
  func createInstance(request: Google_Bigtable_Admin_V2_CreateInstanceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets information about an instance.
  func getInstance(request: Google_Bigtable_Admin_V2_GetInstanceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Instance>
  /// Lists information about instances in a project.
  func listInstances(request: Google_Bigtable_Admin_V2_ListInstancesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_ListInstancesResponse>
  /// Updates an instance within a project. This method updates only the display
  /// name and type for an Instance. To update other Instance properties, such as
  /// labels, use PartialUpdateInstance.
  func updateInstance(request: Google_Bigtable_Admin_V2_Instance, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Instance>
  /// Partially updates an instance within a project. This method can modify all
  /// fields of an Instance and is the preferred way to update an Instance.
  func partialUpdateInstance(request: Google_Bigtable_Admin_V2_PartialUpdateInstanceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Delete an instance from a project.
  func deleteInstance(request: Google_Bigtable_Admin_V2_DeleteInstanceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Creates a cluster within an instance.
  func createCluster(request: Google_Bigtable_Admin_V2_CreateClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets information about a cluster.
  func getCluster(request: Google_Bigtable_Admin_V2_GetClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Cluster>
  /// Lists information about clusters in an instance.
  func listClusters(request: Google_Bigtable_Admin_V2_ListClustersRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_ListClustersResponse>
  /// Updates a cluster within an instance.
  func updateCluster(request: Google_Bigtable_Admin_V2_Cluster, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes a cluster from an instance.
  func deleteCluster(request: Google_Bigtable_Admin_V2_DeleteClusterRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Creates an app profile within an instance.
  func createAppProfile(request: Google_Bigtable_Admin_V2_CreateAppProfileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_AppProfile>
  /// Gets information about an app profile.
  func getAppProfile(request: Google_Bigtable_Admin_V2_GetAppProfileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_AppProfile>
  /// Lists information about app profiles in an instance.
  func listAppProfiles(request: Google_Bigtable_Admin_V2_ListAppProfilesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_ListAppProfilesResponse>
  /// Updates an app profile within an instance.
  func updateAppProfile(request: Google_Bigtable_Admin_V2_UpdateAppProfileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes an app profile from an instance.
  func deleteAppProfile(request: Google_Bigtable_Admin_V2_DeleteAppProfileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Gets the access control policy for an instance resource. Returns an empty
  /// policy if an instance exists but does not have a policy set.
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Sets the access control policy on an instance resource. Replaces any
  /// existing policy.
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Returns permissions that the caller has on the specified instance resource.
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
}

extension Google_Bigtable_Admin_V2_BigtableInstanceAdminProvider {
  public var serviceName: Substring { return "google.bigtable.admin.v2.BigtableInstanceAdmin" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateInstance":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createInstance(request: request, context: context)
        }
      }

    case "GetInstance":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getInstance(request: request, context: context)
        }
      }

    case "ListInstances":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listInstances(request: request, context: context)
        }
      }

    case "UpdateInstance":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateInstance(request: request, context: context)
        }
      }

    case "PartialUpdateInstance":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.partialUpdateInstance(request: request, context: context)
        }
      }

    case "DeleteInstance":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteInstance(request: request, context: context)
        }
      }

    case "CreateCluster":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createCluster(request: request, context: context)
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

    case "CreateAppProfile":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createAppProfile(request: request, context: context)
        }
      }

    case "GetAppProfile":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getAppProfile(request: request, context: context)
        }
      }

    case "ListAppProfiles":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listAppProfiles(request: request, context: context)
        }
      }

    case "UpdateAppProfile":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateAppProfile(request: request, context: context)
        }
      }

    case "DeleteAppProfile":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteAppProfile(request: request, context: context)
        }
      }

    case "GetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getIamPolicy(request: request, context: context)
        }
      }

    case "SetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setIamPolicy(request: request, context: context)
        }
      }

    case "TestIamPermissions":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.testIamPermissions(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

