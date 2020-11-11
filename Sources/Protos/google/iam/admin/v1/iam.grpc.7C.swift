//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/iam/admin/v1/iam.proto
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


/// Usage: instantiate Google_Iam_Admin_V1_IAMClient, then call methods of this protocol to make API calls.
public protocol Google_Iam_Admin_V1_IAMClientProtocol: GRPCClient {
  func listServiceAccounts(
    _ request: Google_Iam_Admin_V1_ListServiceAccountsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_ListServiceAccountsRequest, Google_Iam_Admin_V1_ListServiceAccountsResponse>

  func getServiceAccount(
    _ request: Google_Iam_Admin_V1_GetServiceAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_GetServiceAccountRequest, Google_Iam_Admin_V1_ServiceAccount>

  func createServiceAccount(
    _ request: Google_Iam_Admin_V1_CreateServiceAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_CreateServiceAccountRequest, Google_Iam_Admin_V1_ServiceAccount>

  func updateServiceAccount(
    _ request: Google_Iam_Admin_V1_ServiceAccount,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_ServiceAccount, Google_Iam_Admin_V1_ServiceAccount>

  func deleteServiceAccount(
    _ request: Google_Iam_Admin_V1_DeleteServiceAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_DeleteServiceAccountRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listServiceAccountKeys(
    _ request: Google_Iam_Admin_V1_ListServiceAccountKeysRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_ListServiceAccountKeysRequest, Google_Iam_Admin_V1_ListServiceAccountKeysResponse>

  func getServiceAccountKey(
    _ request: Google_Iam_Admin_V1_GetServiceAccountKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_GetServiceAccountKeyRequest, Google_Iam_Admin_V1_ServiceAccountKey>

  func createServiceAccountKey(
    _ request: Google_Iam_Admin_V1_CreateServiceAccountKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_CreateServiceAccountKeyRequest, Google_Iam_Admin_V1_ServiceAccountKey>

  func deleteServiceAccountKey(
    _ request: Google_Iam_Admin_V1_DeleteServiceAccountKeyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_DeleteServiceAccountKeyRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func signBlob(
    _ request: Google_Iam_Admin_V1_SignBlobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_SignBlobRequest, Google_Iam_Admin_V1_SignBlobResponse>

  func signJwt(
    _ request: Google_Iam_Admin_V1_SignJwtRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_SignJwtRequest, Google_Iam_Admin_V1_SignJwtResponse>

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

  func queryGrantableRoles(
    _ request: Google_Iam_Admin_V1_QueryGrantableRolesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_QueryGrantableRolesRequest, Google_Iam_Admin_V1_QueryGrantableRolesResponse>

  func listRoles(
    _ request: Google_Iam_Admin_V1_ListRolesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_ListRolesRequest, Google_Iam_Admin_V1_ListRolesResponse>

  func getRole(
    _ request: Google_Iam_Admin_V1_GetRoleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_GetRoleRequest, Google_Iam_Admin_V1_Role>

  func createRole(
    _ request: Google_Iam_Admin_V1_CreateRoleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_CreateRoleRequest, Google_Iam_Admin_V1_Role>

  func updateRole(
    _ request: Google_Iam_Admin_V1_UpdateRoleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_UpdateRoleRequest, Google_Iam_Admin_V1_Role>

  func deleteRole(
    _ request: Google_Iam_Admin_V1_DeleteRoleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_DeleteRoleRequest, Google_Iam_Admin_V1_Role>

  func undeleteRole(
    _ request: Google_Iam_Admin_V1_UndeleteRoleRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_UndeleteRoleRequest, Google_Iam_Admin_V1_Role>

  func queryTestablePermissions(
    _ request: Google_Iam_Admin_V1_QueryTestablePermissionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Admin_V1_QueryTestablePermissionsRequest, Google_Iam_Admin_V1_QueryTestablePermissionsResponse>

}

extension Google_Iam_Admin_V1_IAMClientProtocol {

  /// Lists [ServiceAccounts][google.iam.admin.v1.ServiceAccount] for a project.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListServiceAccounts.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listServiceAccounts(
    _ request: Google_Iam_Admin_V1_ListServiceAccountsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_ListServiceAccountsRequest, Google_Iam_Admin_V1_ListServiceAccountsResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/ListServiceAccounts",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// - Parameters:
  ///   - request: Request to send to GetServiceAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getServiceAccount(
    _ request: Google_Iam_Admin_V1_GetServiceAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_GetServiceAccountRequest, Google_Iam_Admin_V1_ServiceAccount> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/GetServiceAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a [ServiceAccount][google.iam.admin.v1.ServiceAccount]
  /// and returns it.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateServiceAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createServiceAccount(
    _ request: Google_Iam_Admin_V1_CreateServiceAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_CreateServiceAccountRequest, Google_Iam_Admin_V1_ServiceAccount> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/CreateServiceAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// Currently, only the following fields are updatable:
  /// `display_name` and `description`.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateServiceAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateServiceAccount(
    _ request: Google_Iam_Admin_V1_ServiceAccount,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_ServiceAccount, Google_Iam_Admin_V1_ServiceAccount> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/UpdateServiceAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteServiceAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteServiceAccount(
    _ request: Google_Iam_Admin_V1_DeleteServiceAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_DeleteServiceAccountRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/DeleteServiceAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists [ServiceAccountKeys][google.iam.admin.v1.ServiceAccountKey].
  ///
  /// - Parameters:
  ///   - request: Request to send to ListServiceAccountKeys.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listServiceAccountKeys(
    _ request: Google_Iam_Admin_V1_ListServiceAccountKeysRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_ListServiceAccountKeysRequest, Google_Iam_Admin_V1_ListServiceAccountKeysResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/ListServiceAccountKeys",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the [ServiceAccountKey][google.iam.admin.v1.ServiceAccountKey]
  /// by key id.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetServiceAccountKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getServiceAccountKey(
    _ request: Google_Iam_Admin_V1_GetServiceAccountKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_GetServiceAccountKeyRequest, Google_Iam_Admin_V1_ServiceAccountKey> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/GetServiceAccountKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a [ServiceAccountKey][google.iam.admin.v1.ServiceAccountKey]
  /// and returns it.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateServiceAccountKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createServiceAccountKey(
    _ request: Google_Iam_Admin_V1_CreateServiceAccountKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_CreateServiceAccountKeyRequest, Google_Iam_Admin_V1_ServiceAccountKey> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/CreateServiceAccountKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a [ServiceAccountKey][google.iam.admin.v1.ServiceAccountKey].
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteServiceAccountKey.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteServiceAccountKey(
    _ request: Google_Iam_Admin_V1_DeleteServiceAccountKeyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_DeleteServiceAccountKeyRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/DeleteServiceAccountKey",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Signs a blob using a service account's system-managed private key.
  ///
  /// - Parameters:
  ///   - request: Request to send to SignBlob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func signBlob(
    _ request: Google_Iam_Admin_V1_SignBlobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_SignBlobRequest, Google_Iam_Admin_V1_SignBlobResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/SignBlob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Signs a JWT using a service account's system-managed private key.
  ///
  /// If no expiry time (`exp`) is provided in the `SignJwtRequest`, IAM sets an
  /// an expiry time of one hour by default. If you request an expiry time of
  /// more than one hour, the request will fail.
  ///
  /// - Parameters:
  ///   - request: Request to send to SignJwt.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func signJwt(
    _ request: Google_Iam_Admin_V1_SignJwtRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_SignJwtRequest, Google_Iam_Admin_V1_SignJwtResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/SignJwt",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns the Cloud IAM access control policy for a
  /// [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// Note: Service accounts are both
  /// [resources and
  /// identities](/iam/docs/service-accounts#service_account_permissions). This
  /// method treats the service account as a resource. It returns the Cloud IAM
  /// policy that reflects what members have access to the service account.
  ///
  /// This method does not return what resources the service account has access
  /// to. To see if a service account has access to a resource, call the
  /// `getIamPolicy` method on the target resource. For example, to view grants
  /// for a project, call the
  /// [projects.getIamPolicy](/resource-manager/reference/rest/v1/projects/getIamPolicy)
  /// method.
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
      path: "/google.iam.admin.v1.IAM/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the Cloud IAM access control policy for a
  /// [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// Note: Service accounts are both
  /// [resources and
  /// identities](/iam/docs/service-accounts#service_account_permissions). This
  /// method treats the service account as a resource. Use it to grant members
  /// access to the service account, such as when they need to impersonate it.
  ///
  /// This method does not grant the service account access to other resources,
  /// such as projects. To grant a service account access to resources, include
  /// the service account in the Cloud IAM policy for the desired resource, then
  /// call the appropriate `setIamPolicy` method on the target resource. For
  /// example, to grant a service account access to a project, call the
  /// [projects.setIamPolicy](/resource-manager/reference/rest/v1/projects/setIamPolicy)
  /// method.
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
      path: "/google.iam.admin.v1.IAM/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Tests the specified permissions against the IAM access control policy
  /// for a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
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
      path: "/google.iam.admin.v1.IAM/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Queries roles that can be granted on a particular resource.
  /// A role is grantable if it can be used as the role in a binding for a policy
  /// for that resource.
  ///
  /// - Parameters:
  ///   - request: Request to send to QueryGrantableRoles.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func queryGrantableRoles(
    _ request: Google_Iam_Admin_V1_QueryGrantableRolesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_QueryGrantableRolesRequest, Google_Iam_Admin_V1_QueryGrantableRolesResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/QueryGrantableRoles",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the Roles defined on a resource.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListRoles.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listRoles(
    _ request: Google_Iam_Admin_V1_ListRolesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_ListRolesRequest, Google_Iam_Admin_V1_ListRolesResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/ListRoles",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a Role definition.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRole.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRole(
    _ request: Google_Iam_Admin_V1_GetRoleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_GetRoleRequest, Google_Iam_Admin_V1_Role> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/GetRole",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new Role.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateRole.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createRole(
    _ request: Google_Iam_Admin_V1_CreateRoleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_CreateRoleRequest, Google_Iam_Admin_V1_Role> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/CreateRole",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a Role definition.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateRole.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateRole(
    _ request: Google_Iam_Admin_V1_UpdateRoleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_UpdateRoleRequest, Google_Iam_Admin_V1_Role> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/UpdateRole",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Soft deletes a role. The role is suspended and cannot be used to create new
  /// IAM Policy Bindings.
  /// The Role will not be included in `ListRoles()` unless `show_deleted` is set
  /// in the `ListRolesRequest`. The Role contains the deleted boolean set.
  /// Existing Bindings remains, but are inactive. The Role can be undeleted
  /// within 7 days. After 7 days the Role is deleted and all Bindings associated
  /// with the role are removed.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteRole.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteRole(
    _ request: Google_Iam_Admin_V1_DeleteRoleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_DeleteRoleRequest, Google_Iam_Admin_V1_Role> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/DeleteRole",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Undelete a Role, bringing it back in its previous state.
  ///
  /// - Parameters:
  ///   - request: Request to send to UndeleteRole.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func undeleteRole(
    _ request: Google_Iam_Admin_V1_UndeleteRoleRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_UndeleteRoleRequest, Google_Iam_Admin_V1_Role> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/UndeleteRole",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the permissions testable on a resource.
  /// A permission is testable if it can be tested for an identity on a resource.
  ///
  /// - Parameters:
  ///   - request: Request to send to QueryTestablePermissions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func queryTestablePermissions(
    _ request: Google_Iam_Admin_V1_QueryTestablePermissionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Admin_V1_QueryTestablePermissionsRequest, Google_Iam_Admin_V1_QueryTestablePermissionsResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.admin.v1.IAM/QueryTestablePermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Iam_Admin_V1_IAMClient: Google_Iam_Admin_V1_IAMClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.iam.admin.v1.IAM service.
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
public protocol Google_Iam_Admin_V1_IAMProvider: CallHandlerProvider {
  /// Lists [ServiceAccounts][google.iam.admin.v1.ServiceAccount] for a project.
  func listServiceAccounts(request: Google_Iam_Admin_V1_ListServiceAccountsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ListServiceAccountsResponse>
  /// Gets a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  func getServiceAccount(request: Google_Iam_Admin_V1_GetServiceAccountRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ServiceAccount>
  /// Creates a [ServiceAccount][google.iam.admin.v1.ServiceAccount]
  /// and returns it.
  func createServiceAccount(request: Google_Iam_Admin_V1_CreateServiceAccountRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ServiceAccount>
  /// Updates a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// Currently, only the following fields are updatable:
  /// `display_name` and `description`.
  func updateServiceAccount(request: Google_Iam_Admin_V1_ServiceAccount, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ServiceAccount>
  /// Deletes a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  func deleteServiceAccount(request: Google_Iam_Admin_V1_DeleteServiceAccountRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Lists [ServiceAccountKeys][google.iam.admin.v1.ServiceAccountKey].
  func listServiceAccountKeys(request: Google_Iam_Admin_V1_ListServiceAccountKeysRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ListServiceAccountKeysResponse>
  /// Gets the [ServiceAccountKey][google.iam.admin.v1.ServiceAccountKey]
  /// by key id.
  func getServiceAccountKey(request: Google_Iam_Admin_V1_GetServiceAccountKeyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ServiceAccountKey>
  /// Creates a [ServiceAccountKey][google.iam.admin.v1.ServiceAccountKey]
  /// and returns it.
  func createServiceAccountKey(request: Google_Iam_Admin_V1_CreateServiceAccountKeyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ServiceAccountKey>
  /// Deletes a [ServiceAccountKey][google.iam.admin.v1.ServiceAccountKey].
  func deleteServiceAccountKey(request: Google_Iam_Admin_V1_DeleteServiceAccountKeyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Signs a blob using a service account's system-managed private key.
  func signBlob(request: Google_Iam_Admin_V1_SignBlobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_SignBlobResponse>
  /// Signs a JWT using a service account's system-managed private key.
  ///
  /// If no expiry time (`exp`) is provided in the `SignJwtRequest`, IAM sets an
  /// an expiry time of one hour by default. If you request an expiry time of
  /// more than one hour, the request will fail.
  func signJwt(request: Google_Iam_Admin_V1_SignJwtRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_SignJwtResponse>
  /// Returns the Cloud IAM access control policy for a
  /// [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// Note: Service accounts are both
  /// [resources and
  /// identities](/iam/docs/service-accounts#service_account_permissions). This
  /// method treats the service account as a resource. It returns the Cloud IAM
  /// policy that reflects what members have access to the service account.
  ///
  /// This method does not return what resources the service account has access
  /// to. To see if a service account has access to a resource, call the
  /// `getIamPolicy` method on the target resource. For example, to view grants
  /// for a project, call the
  /// [projects.getIamPolicy](/resource-manager/reference/rest/v1/projects/getIamPolicy)
  /// method.
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Sets the Cloud IAM access control policy for a
  /// [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  ///
  /// Note: Service accounts are both
  /// [resources and
  /// identities](/iam/docs/service-accounts#service_account_permissions). This
  /// method treats the service account as a resource. Use it to grant members
  /// access to the service account, such as when they need to impersonate it.
  ///
  /// This method does not grant the service account access to other resources,
  /// such as projects. To grant a service account access to resources, include
  /// the service account in the Cloud IAM policy for the desired resource, then
  /// call the appropriate `setIamPolicy` method on the target resource. For
  /// example, to grant a service account access to a project, call the
  /// [projects.setIamPolicy](/resource-manager/reference/rest/v1/projects/setIamPolicy)
  /// method.
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Tests the specified permissions against the IAM access control policy
  /// for a [ServiceAccount][google.iam.admin.v1.ServiceAccount].
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
  /// Queries roles that can be granted on a particular resource.
  /// A role is grantable if it can be used as the role in a binding for a policy
  /// for that resource.
  func queryGrantableRoles(request: Google_Iam_Admin_V1_QueryGrantableRolesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_QueryGrantableRolesResponse>
  /// Lists the Roles defined on a resource.
  func listRoles(request: Google_Iam_Admin_V1_ListRolesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_ListRolesResponse>
  /// Gets a Role definition.
  func getRole(request: Google_Iam_Admin_V1_GetRoleRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_Role>
  /// Creates a new Role.
  func createRole(request: Google_Iam_Admin_V1_CreateRoleRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_Role>
  /// Updates a Role definition.
  func updateRole(request: Google_Iam_Admin_V1_UpdateRoleRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_Role>
  /// Soft deletes a role. The role is suspended and cannot be used to create new
  /// IAM Policy Bindings.
  /// The Role will not be included in `ListRoles()` unless `show_deleted` is set
  /// in the `ListRolesRequest`. The Role contains the deleted boolean set.
  /// Existing Bindings remains, but are inactive. The Role can be undeleted
  /// within 7 days. After 7 days the Role is deleted and all Bindings associated
  /// with the role are removed.
  func deleteRole(request: Google_Iam_Admin_V1_DeleteRoleRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_Role>
  /// Undelete a Role, bringing it back in its previous state.
  func undeleteRole(request: Google_Iam_Admin_V1_UndeleteRoleRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_Role>
  /// Lists the permissions testable on a resource.
  /// A permission is testable if it can be tested for an identity on a resource.
  func queryTestablePermissions(request: Google_Iam_Admin_V1_QueryTestablePermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Admin_V1_QueryTestablePermissionsResponse>
}

extension Google_Iam_Admin_V1_IAMProvider {
  public var serviceName: Substring { return "google.iam.admin.v1.IAM" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListServiceAccounts":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listServiceAccounts(request: request, context: context)
        }
      }

    case "GetServiceAccount":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getServiceAccount(request: request, context: context)
        }
      }

    case "CreateServiceAccount":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createServiceAccount(request: request, context: context)
        }
      }

    case "UpdateServiceAccount":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateServiceAccount(request: request, context: context)
        }
      }

    case "DeleteServiceAccount":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteServiceAccount(request: request, context: context)
        }
      }

    case "ListServiceAccountKeys":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listServiceAccountKeys(request: request, context: context)
        }
      }

    case "GetServiceAccountKey":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getServiceAccountKey(request: request, context: context)
        }
      }

    case "CreateServiceAccountKey":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createServiceAccountKey(request: request, context: context)
        }
      }

    case "DeleteServiceAccountKey":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteServiceAccountKey(request: request, context: context)
        }
      }

    case "SignBlob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.signBlob(request: request, context: context)
        }
      }

    case "SignJwt":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.signJwt(request: request, context: context)
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

    case "QueryGrantableRoles":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.queryGrantableRoles(request: request, context: context)
        }
      }

    case "ListRoles":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listRoles(request: request, context: context)
        }
      }

    case "GetRole":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getRole(request: request, context: context)
        }
      }

    case "CreateRole":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createRole(request: request, context: context)
        }
      }

    case "UpdateRole":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateRole(request: request, context: context)
        }
      }

    case "DeleteRole":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteRole(request: request, context: context)
        }
      }

    case "UndeleteRole":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.undeleteRole(request: request, context: context)
        }
      }

    case "QueryTestablePermissions":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.queryTestablePermissions(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
