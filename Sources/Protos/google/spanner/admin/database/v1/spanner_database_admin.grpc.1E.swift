//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/spanner/admin/database/v1/spanner_database_admin.proto
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


/// Usage: instantiate Google_Spanner_Admin_Database_V1_DatabaseAdminClient, then call methods of this protocol to make API calls.
public protocol Google_Spanner_Admin_Database_V1_DatabaseAdminClientProtocol: GRPCClient {
  func listDatabases(
    _ request: Google_Spanner_Admin_Database_V1_ListDatabasesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListDatabasesRequest, Google_Spanner_Admin_Database_V1_ListDatabasesResponse>

  func createDatabase(
    _ request: Google_Spanner_Admin_Database_V1_CreateDatabaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_CreateDatabaseRequest, Google_Longrunning_Operation>

  func getDatabase(
    _ request: Google_Spanner_Admin_Database_V1_GetDatabaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_GetDatabaseRequest, Google_Spanner_Admin_Database_V1_Database>

  func updateDatabaseDdl(
    _ request: Google_Spanner_Admin_Database_V1_UpdateDatabaseDdlRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_UpdateDatabaseDdlRequest, Google_Longrunning_Operation>

  func dropDatabase(
    _ request: Google_Spanner_Admin_Database_V1_DropDatabaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_DropDatabaseRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getDatabaseDdl(
    _ request: Google_Spanner_Admin_Database_V1_GetDatabaseDdlRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_GetDatabaseDdlRequest, Google_Spanner_Admin_Database_V1_GetDatabaseDdlResponse>

  func setIamPolicy(
    _ request: Google_Iam_V1_SetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_SetIamPolicyRequest, Google_Iam_V1_Policy>

  func getIamPolicy(
    _ request: Google_Iam_V1_GetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_GetIamPolicyRequest, Google_Iam_V1_Policy>

  func testIamPermissions(
    _ request: Google_Iam_V1_TestIamPermissionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_TestIamPermissionsRequest, Google_Iam_V1_TestIamPermissionsResponse>

  func createBackup(
    _ request: Google_Spanner_Admin_Database_V1_CreateBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_CreateBackupRequest, Google_Longrunning_Operation>

  func getBackup(
    _ request: Google_Spanner_Admin_Database_V1_GetBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_GetBackupRequest, Google_Spanner_Admin_Database_V1_Backup>

  func updateBackup(
    _ request: Google_Spanner_Admin_Database_V1_UpdateBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_UpdateBackupRequest, Google_Spanner_Admin_Database_V1_Backup>

  func deleteBackup(
    _ request: Google_Spanner_Admin_Database_V1_DeleteBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_DeleteBackupRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listBackups(
    _ request: Google_Spanner_Admin_Database_V1_ListBackupsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListBackupsRequest, Google_Spanner_Admin_Database_V1_ListBackupsResponse>

  func restoreDatabase(
    _ request: Google_Spanner_Admin_Database_V1_RestoreDatabaseRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_RestoreDatabaseRequest, Google_Longrunning_Operation>

  func listDatabaseOperations(
    _ request: Google_Spanner_Admin_Database_V1_ListDatabaseOperationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListDatabaseOperationsRequest, Google_Spanner_Admin_Database_V1_ListDatabaseOperationsResponse>

  func listBackupOperations(
    _ request: Google_Spanner_Admin_Database_V1_ListBackupOperationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListBackupOperationsRequest, Google_Spanner_Admin_Database_V1_ListBackupOperationsResponse>

}

extension Google_Spanner_Admin_Database_V1_DatabaseAdminClientProtocol {

  /// Lists Cloud Spanner databases.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDatabases.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDatabases(
    _ request: Google_Spanner_Admin_Database_V1_ListDatabasesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListDatabasesRequest, Google_Spanner_Admin_Database_V1_ListDatabasesResponse> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/ListDatabases",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new Cloud Spanner database and starts to prepare it for serving.
  /// The returned [long-running operation][google.longrunning.Operation] will
  /// have a name of the format `<database_name>/operations/<operation_id>` and
  /// can be used to track preparation of the database. The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [CreateDatabaseMetadata][google.spanner.admin.database.v1.CreateDatabaseMetadata]. The
  /// [response][google.longrunning.Operation.response] field type is
  /// [Database][google.spanner.admin.database.v1.Database], if successful.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateDatabase.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createDatabase(
    _ request: Google_Spanner_Admin_Database_V1_CreateDatabaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_CreateDatabaseRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/CreateDatabase",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the state of a Cloud Spanner database.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDatabase.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDatabase(
    _ request: Google_Spanner_Admin_Database_V1_GetDatabaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_GetDatabaseRequest, Google_Spanner_Admin_Database_V1_Database> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/GetDatabase",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates the schema of a Cloud Spanner database by
  /// creating/altering/dropping tables, columns, indexes, etc. The returned
  /// [long-running operation][google.longrunning.Operation] will have a name of
  /// the format `<database_name>/operations/<operation_id>` and can be used to
  /// track execution of the schema change(s). The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [UpdateDatabaseDdlMetadata][google.spanner.admin.database.v1.UpdateDatabaseDdlMetadata].  The operation has no response.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateDatabaseDdl.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateDatabaseDdl(
    _ request: Google_Spanner_Admin_Database_V1_UpdateDatabaseDdlRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_UpdateDatabaseDdlRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/UpdateDatabaseDdl",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Drops (aka deletes) a Cloud Spanner database.
  /// Completed backups for the database will be retained according to their
  /// `expire_time`.
  ///
  /// - Parameters:
  ///   - request: Request to send to DropDatabase.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func dropDatabase(
    _ request: Google_Spanner_Admin_Database_V1_DropDatabaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_DropDatabaseRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/DropDatabase",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns the schema of a Cloud Spanner database as a list of formatted
  /// DDL statements. This method does not show pending schema updates, those may
  /// be queried using the [Operations][google.longrunning.Operations] API.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDatabaseDdl.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDatabaseDdl(
    _ request: Google_Spanner_Admin_Database_V1_GetDatabaseDdlRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_GetDatabaseDdlRequest, Google_Spanner_Admin_Database_V1_GetDatabaseDdlResponse> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/GetDatabaseDdl",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the access control policy on a database or backup resource.
  /// Replaces any existing policy.
  ///
  /// Authorization requires `spanner.databases.setIamPolicy`
  /// permission on [resource][google.iam.v1.SetIamPolicyRequest.resource].
  /// For backups, authorization requires `spanner.backups.setIamPolicy`
  /// permission on [resource][google.iam.v1.SetIamPolicyRequest.resource].
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
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the access control policy for a database or backup resource.
  /// Returns an empty policy if a database or backup exists but does not have a
  /// policy set.
  ///
  /// Authorization requires `spanner.databases.getIamPolicy` permission on
  /// [resource][google.iam.v1.GetIamPolicyRequest.resource].
  /// For backups, authorization requires `spanner.backups.getIamPolicy`
  /// permission on [resource][google.iam.v1.GetIamPolicyRequest.resource].
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
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns permissions that the caller has on the specified database or backup
  /// resource.
  ///
  /// Attempting this RPC on a non-existent Cloud Spanner database will
  /// result in a NOT_FOUND error if the user has
  /// `spanner.databases.list` permission on the containing Cloud
  /// Spanner instance. Otherwise returns an empty set of permissions.
  /// Calling this method on a backup that does not exist will
  /// result in a NOT_FOUND error if the user has
  /// `spanner.backups.list` permission on the containing instance.
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
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Starts creating a new Cloud Spanner Backup.
  /// The returned backup [long-running operation][google.longrunning.Operation]
  /// will have a name of the format
  /// `projects/<project>/instances/<instance>/backups/<backup>/operations/<operation_id>`
  /// and can be used to track creation of the backup. The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [CreateBackupMetadata][google.spanner.admin.database.v1.CreateBackupMetadata]. The
  /// [response][google.longrunning.Operation.response] field type is
  /// [Backup][google.spanner.admin.database.v1.Backup], if successful. Cancelling the returned operation will stop the
  /// creation and delete the backup.
  /// There can be only one pending backup creation per database. Backup creation
  /// of different databases can run concurrently.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createBackup(
    _ request: Google_Spanner_Admin_Database_V1_CreateBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_CreateBackupRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/CreateBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets metadata on a pending or completed [Backup][google.spanner.admin.database.v1.Backup].
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBackup(
    _ request: Google_Spanner_Admin_Database_V1_GetBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_GetBackupRequest, Google_Spanner_Admin_Database_V1_Backup> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/GetBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a pending or completed [Backup][google.spanner.admin.database.v1.Backup].
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateBackup(
    _ request: Google_Spanner_Admin_Database_V1_UpdateBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_UpdateBackupRequest, Google_Spanner_Admin_Database_V1_Backup> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/UpdateBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a pending or completed [Backup][google.spanner.admin.database.v1.Backup].
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteBackup(
    _ request: Google_Spanner_Admin_Database_V1_DeleteBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_DeleteBackupRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/DeleteBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists completed and pending backups.
  /// Backups returned are ordered by `create_time` in descending order,
  /// starting from the most recent `create_time`.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListBackups.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listBackups(
    _ request: Google_Spanner_Admin_Database_V1_ListBackupsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListBackupsRequest, Google_Spanner_Admin_Database_V1_ListBackupsResponse> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/ListBackups",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Create a new database by restoring from a completed backup. The new
  /// database must be in the same project and in an instance with the same
  /// instance configuration as the instance containing
  /// the backup. The returned database [long-running
  /// operation][google.longrunning.Operation] has a name of the format
  /// `projects/<project>/instances/<instance>/databases/<database>/operations/<operation_id>`,
  /// and can be used to track the progress of the operation, and to cancel it.
  /// The [metadata][google.longrunning.Operation.metadata] field type is
  /// [RestoreDatabaseMetadata][google.spanner.admin.database.v1.RestoreDatabaseMetadata].
  /// The [response][google.longrunning.Operation.response] type
  /// is [Database][google.spanner.admin.database.v1.Database], if
  /// successful. Cancelling the returned operation will stop the restore and
  /// delete the database.
  /// There can be only one database being restored into an instance at a time.
  /// Once the restore operation completes, a new restore operation can be
  /// initiated, without waiting for the optimize operation associated with the
  /// first restore to complete.
  ///
  /// - Parameters:
  ///   - request: Request to send to RestoreDatabase.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func restoreDatabase(
    _ request: Google_Spanner_Admin_Database_V1_RestoreDatabaseRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_RestoreDatabaseRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/RestoreDatabase",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists database [longrunning-operations][google.longrunning.Operation].
  /// A database operation has a name of the form
  /// `projects/<project>/instances/<instance>/databases/<database>/operations/<operation>`.
  /// The long-running operation
  /// [metadata][google.longrunning.Operation.metadata] field type
  /// `metadata.type_url` describes the type of the metadata. Operations returned
  /// include those that have completed/failed/canceled within the last 7 days,
  /// and pending operations.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDatabaseOperations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDatabaseOperations(
    _ request: Google_Spanner_Admin_Database_V1_ListDatabaseOperationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListDatabaseOperationsRequest, Google_Spanner_Admin_Database_V1_ListDatabaseOperationsResponse> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/ListDatabaseOperations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the backup [long-running operations][google.longrunning.Operation] in
  /// the given instance. A backup operation has a name of the form
  /// `projects/<project>/instances/<instance>/backups/<backup>/operations/<operation>`.
  /// The long-running operation
  /// [metadata][google.longrunning.Operation.metadata] field type
  /// `metadata.type_url` describes the type of the metadata. Operations returned
  /// include those that have completed/failed/canceled within the last 7 days,
  /// and pending operations. Operations returned are ordered by
  /// `operation.metadata.value.progress.start_time` in descending order starting
  /// from the most recently started operation.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListBackupOperations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listBackupOperations(
    _ request: Google_Spanner_Admin_Database_V1_ListBackupOperationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Spanner_Admin_Database_V1_ListBackupOperationsRequest, Google_Spanner_Admin_Database_V1_ListBackupOperationsResponse> {
    return self.makeUnaryCall(
      path: "/google.spanner.admin.database.v1.DatabaseAdmin/ListBackupOperations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Spanner_Admin_Database_V1_DatabaseAdminClient: Google_Spanner_Admin_Database_V1_DatabaseAdminClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.spanner.admin.database.v1.DatabaseAdmin service.
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
public protocol Google_Spanner_Admin_Database_V1_DatabaseAdminProvider: CallHandlerProvider {
  /// Lists Cloud Spanner databases.
  func listDatabases(request: Google_Spanner_Admin_Database_V1_ListDatabasesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_ListDatabasesResponse>
  /// Creates a new Cloud Spanner database and starts to prepare it for serving.
  /// The returned [long-running operation][google.longrunning.Operation] will
  /// have a name of the format `<database_name>/operations/<operation_id>` and
  /// can be used to track preparation of the database. The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [CreateDatabaseMetadata][google.spanner.admin.database.v1.CreateDatabaseMetadata]. The
  /// [response][google.longrunning.Operation.response] field type is
  /// [Database][google.spanner.admin.database.v1.Database], if successful.
  func createDatabase(request: Google_Spanner_Admin_Database_V1_CreateDatabaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets the state of a Cloud Spanner database.
  func getDatabase(request: Google_Spanner_Admin_Database_V1_GetDatabaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_Database>
  /// Updates the schema of a Cloud Spanner database by
  /// creating/altering/dropping tables, columns, indexes, etc. The returned
  /// [long-running operation][google.longrunning.Operation] will have a name of
  /// the format `<database_name>/operations/<operation_id>` and can be used to
  /// track execution of the schema change(s). The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [UpdateDatabaseDdlMetadata][google.spanner.admin.database.v1.UpdateDatabaseDdlMetadata].  The operation has no response.
  func updateDatabaseDdl(request: Google_Spanner_Admin_Database_V1_UpdateDatabaseDdlRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Drops (aka deletes) a Cloud Spanner database.
  /// Completed backups for the database will be retained according to their
  /// `expire_time`.
  func dropDatabase(request: Google_Spanner_Admin_Database_V1_DropDatabaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Returns the schema of a Cloud Spanner database as a list of formatted
  /// DDL statements. This method does not show pending schema updates, those may
  /// be queried using the [Operations][google.longrunning.Operations] API.
  func getDatabaseDdl(request: Google_Spanner_Admin_Database_V1_GetDatabaseDdlRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_GetDatabaseDdlResponse>
  /// Sets the access control policy on a database or backup resource.
  /// Replaces any existing policy.
  ///
  /// Authorization requires `spanner.databases.setIamPolicy`
  /// permission on [resource][google.iam.v1.SetIamPolicyRequest.resource].
  /// For backups, authorization requires `spanner.backups.setIamPolicy`
  /// permission on [resource][google.iam.v1.SetIamPolicyRequest.resource].
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Gets the access control policy for a database or backup resource.
  /// Returns an empty policy if a database or backup exists but does not have a
  /// policy set.
  ///
  /// Authorization requires `spanner.databases.getIamPolicy` permission on
  /// [resource][google.iam.v1.GetIamPolicyRequest.resource].
  /// For backups, authorization requires `spanner.backups.getIamPolicy`
  /// permission on [resource][google.iam.v1.GetIamPolicyRequest.resource].
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Returns permissions that the caller has on the specified database or backup
  /// resource.
  ///
  /// Attempting this RPC on a non-existent Cloud Spanner database will
  /// result in a NOT_FOUND error if the user has
  /// `spanner.databases.list` permission on the containing Cloud
  /// Spanner instance. Otherwise returns an empty set of permissions.
  /// Calling this method on a backup that does not exist will
  /// result in a NOT_FOUND error if the user has
  /// `spanner.backups.list` permission on the containing instance.
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
  /// Starts creating a new Cloud Spanner Backup.
  /// The returned backup [long-running operation][google.longrunning.Operation]
  /// will have a name of the format
  /// `projects/<project>/instances/<instance>/backups/<backup>/operations/<operation_id>`
  /// and can be used to track creation of the backup. The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [CreateBackupMetadata][google.spanner.admin.database.v1.CreateBackupMetadata]. The
  /// [response][google.longrunning.Operation.response] field type is
  /// [Backup][google.spanner.admin.database.v1.Backup], if successful. Cancelling the returned operation will stop the
  /// creation and delete the backup.
  /// There can be only one pending backup creation per database. Backup creation
  /// of different databases can run concurrently.
  func createBackup(request: Google_Spanner_Admin_Database_V1_CreateBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets metadata on a pending or completed [Backup][google.spanner.admin.database.v1.Backup].
  func getBackup(request: Google_Spanner_Admin_Database_V1_GetBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_Backup>
  /// Updates a pending or completed [Backup][google.spanner.admin.database.v1.Backup].
  func updateBackup(request: Google_Spanner_Admin_Database_V1_UpdateBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_Backup>
  /// Deletes a pending or completed [Backup][google.spanner.admin.database.v1.Backup].
  func deleteBackup(request: Google_Spanner_Admin_Database_V1_DeleteBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Lists completed and pending backups.
  /// Backups returned are ordered by `create_time` in descending order,
  /// starting from the most recent `create_time`.
  func listBackups(request: Google_Spanner_Admin_Database_V1_ListBackupsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_ListBackupsResponse>
  /// Create a new database by restoring from a completed backup. The new
  /// database must be in the same project and in an instance with the same
  /// instance configuration as the instance containing
  /// the backup. The returned database [long-running
  /// operation][google.longrunning.Operation] has a name of the format
  /// `projects/<project>/instances/<instance>/databases/<database>/operations/<operation_id>`,
  /// and can be used to track the progress of the operation, and to cancel it.
  /// The [metadata][google.longrunning.Operation.metadata] field type is
  /// [RestoreDatabaseMetadata][google.spanner.admin.database.v1.RestoreDatabaseMetadata].
  /// The [response][google.longrunning.Operation.response] type
  /// is [Database][google.spanner.admin.database.v1.Database], if
  /// successful. Cancelling the returned operation will stop the restore and
  /// delete the database.
  /// There can be only one database being restored into an instance at a time.
  /// Once the restore operation completes, a new restore operation can be
  /// initiated, without waiting for the optimize operation associated with the
  /// first restore to complete.
  func restoreDatabase(request: Google_Spanner_Admin_Database_V1_RestoreDatabaseRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Lists database [longrunning-operations][google.longrunning.Operation].
  /// A database operation has a name of the form
  /// `projects/<project>/instances/<instance>/databases/<database>/operations/<operation>`.
  /// The long-running operation
  /// [metadata][google.longrunning.Operation.metadata] field type
  /// `metadata.type_url` describes the type of the metadata. Operations returned
  /// include those that have completed/failed/canceled within the last 7 days,
  /// and pending operations.
  func listDatabaseOperations(request: Google_Spanner_Admin_Database_V1_ListDatabaseOperationsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_ListDatabaseOperationsResponse>
  /// Lists the backup [long-running operations][google.longrunning.Operation] in
  /// the given instance. A backup operation has a name of the form
  /// `projects/<project>/instances/<instance>/backups/<backup>/operations/<operation>`.
  /// The long-running operation
  /// [metadata][google.longrunning.Operation.metadata] field type
  /// `metadata.type_url` describes the type of the metadata. Operations returned
  /// include those that have completed/failed/canceled within the last 7 days,
  /// and pending operations. Operations returned are ordered by
  /// `operation.metadata.value.progress.start_time` in descending order starting
  /// from the most recently started operation.
  func listBackupOperations(request: Google_Spanner_Admin_Database_V1_ListBackupOperationsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Spanner_Admin_Database_V1_ListBackupOperationsResponse>
}

extension Google_Spanner_Admin_Database_V1_DatabaseAdminProvider {
  public var serviceName: Substring { return "google.spanner.admin.database.v1.DatabaseAdmin" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListDatabases":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDatabases(request: request, context: context)
        }
      }

    case "CreateDatabase":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createDatabase(request: request, context: context)
        }
      }

    case "GetDatabase":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDatabase(request: request, context: context)
        }
      }

    case "UpdateDatabaseDdl":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateDatabaseDdl(request: request, context: context)
        }
      }

    case "DropDatabase":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.dropDatabase(request: request, context: context)
        }
      }

    case "GetDatabaseDdl":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDatabaseDdl(request: request, context: context)
        }
      }

    case "SetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setIamPolicy(request: request, context: context)
        }
      }

    case "GetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getIamPolicy(request: request, context: context)
        }
      }

    case "TestIamPermissions":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.testIamPermissions(request: request, context: context)
        }
      }

    case "CreateBackup":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createBackup(request: request, context: context)
        }
      }

    case "GetBackup":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getBackup(request: request, context: context)
        }
      }

    case "UpdateBackup":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateBackup(request: request, context: context)
        }
      }

    case "DeleteBackup":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteBackup(request: request, context: context)
        }
      }

    case "ListBackups":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listBackups(request: request, context: context)
        }
      }

    case "RestoreDatabase":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.restoreDatabase(request: request, context: context)
        }
      }

    case "ListDatabaseOperations":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDatabaseOperations(request: request, context: context)
        }
      }

    case "ListBackupOperations":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listBackupOperations(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

