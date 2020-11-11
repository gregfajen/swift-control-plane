//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/bigtable/admin/v2/bigtable_table_admin.proto
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


/// Usage: instantiate Google_Bigtable_Admin_V2_BigtableTableAdminClient, then call methods of this protocol to make API calls.
public protocol Google_Bigtable_Admin_V2_BigtableTableAdminClientProtocol: GRPCClient {
  func createTable(
    _ request: Google_Bigtable_Admin_V2_CreateTableRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateTableRequest, Google_Bigtable_Admin_V2_Table>

  func createTableFromSnapshot(
    _ request: Google_Bigtable_Admin_V2_CreateTableFromSnapshotRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateTableFromSnapshotRequest, Google_Longrunning_Operation>

  func listTables(
    _ request: Google_Bigtable_Admin_V2_ListTablesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListTablesRequest, Google_Bigtable_Admin_V2_ListTablesResponse>

  func getTable(
    _ request: Google_Bigtable_Admin_V2_GetTableRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetTableRequest, Google_Bigtable_Admin_V2_Table>

  func deleteTable(
    _ request: Google_Bigtable_Admin_V2_DeleteTableRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteTableRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func modifyColumnFamilies(
    _ request: Google_Bigtable_Admin_V2_ModifyColumnFamiliesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ModifyColumnFamiliesRequest, Google_Bigtable_Admin_V2_Table>

  func dropRowRange(
    _ request: Google_Bigtable_Admin_V2_DropRowRangeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DropRowRangeRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func generateConsistencyToken(
    _ request: Google_Bigtable_Admin_V2_GenerateConsistencyTokenRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GenerateConsistencyTokenRequest, Google_Bigtable_Admin_V2_GenerateConsistencyTokenResponse>

  func checkConsistency(
    _ request: Google_Bigtable_Admin_V2_CheckConsistencyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CheckConsistencyRequest, Google_Bigtable_Admin_V2_CheckConsistencyResponse>

  func snapshotTable(
    _ request: Google_Bigtable_Admin_V2_SnapshotTableRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_SnapshotTableRequest, Google_Longrunning_Operation>

  func getSnapshot(
    _ request: Google_Bigtable_Admin_V2_GetSnapshotRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetSnapshotRequest, Google_Bigtable_Admin_V2_Snapshot>

  func listSnapshots(
    _ request: Google_Bigtable_Admin_V2_ListSnapshotsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListSnapshotsRequest, Google_Bigtable_Admin_V2_ListSnapshotsResponse>

  func deleteSnapshot(
    _ request: Google_Bigtable_Admin_V2_DeleteSnapshotRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteSnapshotRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createBackup(
    _ request: Google_Bigtable_Admin_V2_CreateBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateBackupRequest, Google_Longrunning_Operation>

  func getBackup(
    _ request: Google_Bigtable_Admin_V2_GetBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetBackupRequest, Google_Bigtable_Admin_V2_Backup>

  func updateBackup(
    _ request: Google_Bigtable_Admin_V2_UpdateBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_UpdateBackupRequest, Google_Bigtable_Admin_V2_Backup>

  func deleteBackup(
    _ request: Google_Bigtable_Admin_V2_DeleteBackupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteBackupRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listBackups(
    _ request: Google_Bigtable_Admin_V2_ListBackupsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListBackupsRequest, Google_Bigtable_Admin_V2_ListBackupsResponse>

  func restoreTable(
    _ request: Google_Bigtable_Admin_V2_RestoreTableRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Bigtable_Admin_V2_RestoreTableRequest, Google_Longrunning_Operation>

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

extension Google_Bigtable_Admin_V2_BigtableTableAdminClientProtocol {

  /// Creates a new table in the specified instance.
  /// The table can be created with a full set of initial column families,
  /// specified in the request.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateTable.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createTable(
    _ request: Google_Bigtable_Admin_V2_CreateTableRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateTableRequest, Google_Bigtable_Admin_V2_Table> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/CreateTable",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new table from the specified snapshot. The target table must
  /// not exist. The snapshot and the table must be in the same instance.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateTableFromSnapshot.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createTableFromSnapshot(
    _ request: Google_Bigtable_Admin_V2_CreateTableFromSnapshotRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateTableFromSnapshotRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/CreateTableFromSnapshot",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all tables served from a specified instance.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListTables.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listTables(
    _ request: Google_Bigtable_Admin_V2_ListTablesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListTablesRequest, Google_Bigtable_Admin_V2_ListTablesResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/ListTables",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets metadata information about the specified table.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTable.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTable(
    _ request: Google_Bigtable_Admin_V2_GetTableRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetTableRequest, Google_Bigtable_Admin_V2_Table> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/GetTable",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Permanently deletes a specified table and all of its data.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteTable.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteTable(
    _ request: Google_Bigtable_Admin_V2_DeleteTableRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteTableRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/DeleteTable",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Performs a series of column family modifications on the specified table.
  /// Either all or none of the modifications will occur before this method
  /// returns, but data requests received prior to that point may see a table
  /// where only some modifications have taken effect.
  ///
  /// - Parameters:
  ///   - request: Request to send to ModifyColumnFamilies.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func modifyColumnFamilies(
    _ request: Google_Bigtable_Admin_V2_ModifyColumnFamiliesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ModifyColumnFamiliesRequest, Google_Bigtable_Admin_V2_Table> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/ModifyColumnFamilies",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Permanently drop/delete a row range from a specified table. The request can
  /// specify whether to delete all rows in a table, or only those that match a
  /// particular prefix.
  ///
  /// - Parameters:
  ///   - request: Request to send to DropRowRange.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func dropRowRange(
    _ request: Google_Bigtable_Admin_V2_DropRowRangeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DropRowRangeRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/DropRowRange",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Generates a consistency token for a Table, which can be used in
  /// CheckConsistency to check whether mutations to the table that finished
  /// before this call started have been replicated. The tokens will be available
  /// for 90 days.
  ///
  /// - Parameters:
  ///   - request: Request to send to GenerateConsistencyToken.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func generateConsistencyToken(
    _ request: Google_Bigtable_Admin_V2_GenerateConsistencyTokenRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GenerateConsistencyTokenRequest, Google_Bigtable_Admin_V2_GenerateConsistencyTokenResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/GenerateConsistencyToken",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Checks replication consistency based on a consistency token, that is, if
  /// replication has caught up based on the conditions specified in the token
  /// and the check request.
  ///
  /// - Parameters:
  ///   - request: Request to send to CheckConsistency.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func checkConsistency(
    _ request: Google_Bigtable_Admin_V2_CheckConsistencyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CheckConsistencyRequest, Google_Bigtable_Admin_V2_CheckConsistencyResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/CheckConsistency",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new snapshot in the specified cluster from the specified
  /// source table. The cluster and the table must be in the same instance.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  ///
  /// - Parameters:
  ///   - request: Request to send to SnapshotTable.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func snapshotTable(
    _ request: Google_Bigtable_Admin_V2_SnapshotTableRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_SnapshotTableRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/SnapshotTable",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets metadata information about the specified snapshot.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetSnapshot.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getSnapshot(
    _ request: Google_Bigtable_Admin_V2_GetSnapshotRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetSnapshotRequest, Google_Bigtable_Admin_V2_Snapshot> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/GetSnapshot",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all snapshots associated with the specified cluster.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListSnapshots.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listSnapshots(
    _ request: Google_Bigtable_Admin_V2_ListSnapshotsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListSnapshotsRequest, Google_Bigtable_Admin_V2_ListSnapshotsResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/ListSnapshots",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Permanently deletes the specified snapshot.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteSnapshot.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteSnapshot(
    _ request: Google_Bigtable_Admin_V2_DeleteSnapshotRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteSnapshotRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/DeleteSnapshot",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Starts creating a new Cloud Bigtable Backup.  The returned backup
  /// [long-running operation][google.longrunning.Operation] can be used to
  /// track creation of the backup. The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [CreateBackupMetadata][google.bigtable.admin.v2.CreateBackupMetadata]. The
  /// [response][google.longrunning.Operation.response] field type is
  /// [Backup][google.bigtable.admin.v2.Backup], if successful. Cancelling the returned operation will stop the
  /// creation and delete the backup.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createBackup(
    _ request: Google_Bigtable_Admin_V2_CreateBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_CreateBackupRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/CreateBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets metadata on a pending or completed Cloud Bigtable Backup.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getBackup(
    _ request: Google_Bigtable_Admin_V2_GetBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_GetBackupRequest, Google_Bigtable_Admin_V2_Backup> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/GetBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a pending or completed Cloud Bigtable Backup.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateBackup(
    _ request: Google_Bigtable_Admin_V2_UpdateBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_UpdateBackupRequest, Google_Bigtable_Admin_V2_Backup> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/UpdateBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a pending or completed Cloud Bigtable backup.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteBackup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteBackup(
    _ request: Google_Bigtable_Admin_V2_DeleteBackupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_DeleteBackupRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/DeleteBackup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists Cloud Bigtable backups. Returns both completed and pending
  /// backups.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListBackups.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listBackups(
    _ request: Google_Bigtable_Admin_V2_ListBackupsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_ListBackupsRequest, Google_Bigtable_Admin_V2_ListBackupsResponse> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/ListBackups",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Create a new table by restoring from a completed backup. The new table
  /// must be in the same instance as the instance containing the backup.  The
  /// returned table [long-running operation][google.longrunning.Operation] can
  /// be used to track the progress of the operation, and to cancel it.  The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [RestoreTableMetadata][google.bigtable.admin.RestoreTableMetadata].  The
  /// [response][google.longrunning.Operation.response] type is
  /// [Table][google.bigtable.admin.v2.Table], if successful.
  ///
  /// - Parameters:
  ///   - request: Request to send to RestoreTable.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func restoreTable(
    _ request: Google_Bigtable_Admin_V2_RestoreTableRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Bigtable_Admin_V2_RestoreTableRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/RestoreTable",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the access control policy for a Table or Backup resource.
  /// Returns an empty policy if the resource exists but does not have a policy
  /// set.
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
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the access control policy on a Table or Backup resource.
  /// Replaces any existing policy.
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
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns permissions that the caller has on the specified Table or Backup resource.
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
      path: "/google.bigtable.admin.v2.BigtableTableAdmin/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Bigtable_Admin_V2_BigtableTableAdminClient: Google_Bigtable_Admin_V2_BigtableTableAdminClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.bigtable.admin.v2.BigtableTableAdmin service.
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
public protocol Google_Bigtable_Admin_V2_BigtableTableAdminProvider: CallHandlerProvider {
  /// Creates a new table in the specified instance.
  /// The table can be created with a full set of initial column families,
  /// specified in the request.
  func createTable(request: Google_Bigtable_Admin_V2_CreateTableRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Table>
  /// Creates a new table from the specified snapshot. The target table must
  /// not exist. The snapshot and the table must be in the same instance.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  func createTableFromSnapshot(request: Google_Bigtable_Admin_V2_CreateTableFromSnapshotRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Lists all tables served from a specified instance.
  func listTables(request: Google_Bigtable_Admin_V2_ListTablesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_ListTablesResponse>
  /// Gets metadata information about the specified table.
  func getTable(request: Google_Bigtable_Admin_V2_GetTableRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Table>
  /// Permanently deletes a specified table and all of its data.
  func deleteTable(request: Google_Bigtable_Admin_V2_DeleteTableRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Performs a series of column family modifications on the specified table.
  /// Either all or none of the modifications will occur before this method
  /// returns, but data requests received prior to that point may see a table
  /// where only some modifications have taken effect.
  func modifyColumnFamilies(request: Google_Bigtable_Admin_V2_ModifyColumnFamiliesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Table>
  /// Permanently drop/delete a row range from a specified table. The request can
  /// specify whether to delete all rows in a table, or only those that match a
  /// particular prefix.
  func dropRowRange(request: Google_Bigtable_Admin_V2_DropRowRangeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Generates a consistency token for a Table, which can be used in
  /// CheckConsistency to check whether mutations to the table that finished
  /// before this call started have been replicated. The tokens will be available
  /// for 90 days.
  func generateConsistencyToken(request: Google_Bigtable_Admin_V2_GenerateConsistencyTokenRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_GenerateConsistencyTokenResponse>
  /// Checks replication consistency based on a consistency token, that is, if
  /// replication has caught up based on the conditions specified in the token
  /// and the check request.
  func checkConsistency(request: Google_Bigtable_Admin_V2_CheckConsistencyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_CheckConsistencyResponse>
  /// Creates a new snapshot in the specified cluster from the specified
  /// source table. The cluster and the table must be in the same instance.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  func snapshotTable(request: Google_Bigtable_Admin_V2_SnapshotTableRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets metadata information about the specified snapshot.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  func getSnapshot(request: Google_Bigtable_Admin_V2_GetSnapshotRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Snapshot>
  /// Lists all snapshots associated with the specified cluster.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  func listSnapshots(request: Google_Bigtable_Admin_V2_ListSnapshotsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_ListSnapshotsResponse>
  /// Permanently deletes the specified snapshot.
  ///
  /// Note: This is a private alpha release of Cloud Bigtable snapshots. This
  /// feature is not currently available to most Cloud Bigtable customers. This
  /// feature might be changed in backward-incompatible ways and is not
  /// recommended for production use. It is not subject to any SLA or deprecation
  /// policy.
  func deleteSnapshot(request: Google_Bigtable_Admin_V2_DeleteSnapshotRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Starts creating a new Cloud Bigtable Backup.  The returned backup
  /// [long-running operation][google.longrunning.Operation] can be used to
  /// track creation of the backup. The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [CreateBackupMetadata][google.bigtable.admin.v2.CreateBackupMetadata]. The
  /// [response][google.longrunning.Operation.response] field type is
  /// [Backup][google.bigtable.admin.v2.Backup], if successful. Cancelling the returned operation will stop the
  /// creation and delete the backup.
  func createBackup(request: Google_Bigtable_Admin_V2_CreateBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets metadata on a pending or completed Cloud Bigtable Backup.
  func getBackup(request: Google_Bigtable_Admin_V2_GetBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Backup>
  /// Updates a pending or completed Cloud Bigtable Backup.
  func updateBackup(request: Google_Bigtable_Admin_V2_UpdateBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_Backup>
  /// Deletes a pending or completed Cloud Bigtable backup.
  func deleteBackup(request: Google_Bigtable_Admin_V2_DeleteBackupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Lists Cloud Bigtable backups. Returns both completed and pending
  /// backups.
  func listBackups(request: Google_Bigtable_Admin_V2_ListBackupsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Bigtable_Admin_V2_ListBackupsResponse>
  /// Create a new table by restoring from a completed backup. The new table
  /// must be in the same instance as the instance containing the backup.  The
  /// returned table [long-running operation][google.longrunning.Operation] can
  /// be used to track the progress of the operation, and to cancel it.  The
  /// [metadata][google.longrunning.Operation.metadata] field type is
  /// [RestoreTableMetadata][google.bigtable.admin.RestoreTableMetadata].  The
  /// [response][google.longrunning.Operation.response] type is
  /// [Table][google.bigtable.admin.v2.Table], if successful.
  func restoreTable(request: Google_Bigtable_Admin_V2_RestoreTableRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets the access control policy for a Table or Backup resource.
  /// Returns an empty policy if the resource exists but does not have a policy
  /// set.
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Sets the access control policy on a Table or Backup resource.
  /// Replaces any existing policy.
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Returns permissions that the caller has on the specified Table or Backup resource.
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
}

extension Google_Bigtable_Admin_V2_BigtableTableAdminProvider {
  public var serviceName: Substring { return "google.bigtable.admin.v2.BigtableTableAdmin" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateTable":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createTable(request: request, context: context)
        }
      }

    case "CreateTableFromSnapshot":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createTableFromSnapshot(request: request, context: context)
        }
      }

    case "ListTables":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listTables(request: request, context: context)
        }
      }

    case "GetTable":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getTable(request: request, context: context)
        }
      }

    case "DeleteTable":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteTable(request: request, context: context)
        }
      }

    case "ModifyColumnFamilies":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.modifyColumnFamilies(request: request, context: context)
        }
      }

    case "DropRowRange":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.dropRowRange(request: request, context: context)
        }
      }

    case "GenerateConsistencyToken":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.generateConsistencyToken(request: request, context: context)
        }
      }

    case "CheckConsistency":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.checkConsistency(request: request, context: context)
        }
      }

    case "SnapshotTable":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.snapshotTable(request: request, context: context)
        }
      }

    case "GetSnapshot":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getSnapshot(request: request, context: context)
        }
      }

    case "ListSnapshots":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listSnapshots(request: request, context: context)
        }
      }

    case "DeleteSnapshot":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteSnapshot(request: request, context: context)
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

    case "RestoreTable":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.restoreTable(request: request, context: context)
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
