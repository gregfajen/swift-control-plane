//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/firestore/admin/v1beta1/firestore_admin.proto
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


/// Usage: instantiate Google_Firestore_Admin_V1beta1_FirestoreAdminClient, then call methods of this protocol to make API calls.
public protocol Google_Firestore_Admin_V1beta1_FirestoreAdminClientProtocol: GRPCClient {
  func createIndex(
    _ request: Google_Firestore_Admin_V1beta1_CreateIndexRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_CreateIndexRequest, Google_Longrunning_Operation>

  func listIndexes(
    _ request: Google_Firestore_Admin_V1beta1_ListIndexesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_ListIndexesRequest, Google_Firestore_Admin_V1beta1_ListIndexesResponse>

  func getIndex(
    _ request: Google_Firestore_Admin_V1beta1_GetIndexRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_GetIndexRequest, Google_Firestore_Admin_V1beta1_Index>

  func deleteIndex(
    _ request: Google_Firestore_Admin_V1beta1_DeleteIndexRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_DeleteIndexRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func exportDocuments(
    _ request: Google_Firestore_Admin_V1beta1_ExportDocumentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_ExportDocumentsRequest, Google_Longrunning_Operation>

  func importDocuments(
    _ request: Google_Firestore_Admin_V1beta1_ImportDocumentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_ImportDocumentsRequest, Google_Longrunning_Operation>

}

extension Google_Firestore_Admin_V1beta1_FirestoreAdminClientProtocol {

  /// Creates the specified index.
  /// A newly created index's initial state is `CREATING`. On completion of the
  /// returned [google.longrunning.Operation][google.longrunning.Operation], the state will be `READY`.
  /// If the index already exists, the call will return an `ALREADY_EXISTS`
  /// status.
  ///
  /// During creation, the process could result in an error, in which case the
  /// index will move to the `ERROR` state. The process can be recovered by
  /// fixing the data that caused the error, removing the index with
  /// [delete][google.firestore.admin.v1beta1.FirestoreAdmin.DeleteIndex], then re-creating the index with
  /// [create][google.firestore.admin.v1beta1.FirestoreAdmin.CreateIndex].
  ///
  /// Indexes with a single field cannot be created.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateIndex.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createIndex(
    _ request: Google_Firestore_Admin_V1beta1_CreateIndexRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_CreateIndexRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.firestore.admin.v1beta1.FirestoreAdmin/CreateIndex",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the indexes that match the specified filters.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListIndexes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listIndexes(
    _ request: Google_Firestore_Admin_V1beta1_ListIndexesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_ListIndexesRequest, Google_Firestore_Admin_V1beta1_ListIndexesResponse> {
    return self.makeUnaryCall(
      path: "/google.firestore.admin.v1beta1.FirestoreAdmin/ListIndexes",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets an index.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetIndex.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getIndex(
    _ request: Google_Firestore_Admin_V1beta1_GetIndexRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_GetIndexRequest, Google_Firestore_Admin_V1beta1_Index> {
    return self.makeUnaryCall(
      path: "/google.firestore.admin.v1beta1.FirestoreAdmin/GetIndex",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes an index.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteIndex.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteIndex(
    _ request: Google_Firestore_Admin_V1beta1_DeleteIndexRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_DeleteIndexRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.firestore.admin.v1beta1.FirestoreAdmin/DeleteIndex",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Exports a copy of all or a subset of documents from Google Cloud Firestore
  /// to another storage system, such as Google Cloud Storage. Recent updates to
  /// documents may not be reflected in the export. The export occurs in the
  /// background and its progress can be monitored and managed via the
  /// Operation resource that is created. The output of an export may only be
  /// used once the associated operation is done. If an export operation is
  /// cancelled before completion it may leave partial data behind in Google
  /// Cloud Storage.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExportDocuments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func exportDocuments(
    _ request: Google_Firestore_Admin_V1beta1_ExportDocumentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_ExportDocumentsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.firestore.admin.v1beta1.FirestoreAdmin/ExportDocuments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Imports documents into Google Cloud Firestore. Existing documents with the
  /// same name are overwritten. The import occurs in the background and its
  /// progress can be monitored and managed via the Operation resource that is
  /// created. If an ImportDocuments operation is cancelled, it is possible
  /// that a subset of the data has already been imported to Cloud Firestore.
  ///
  /// - Parameters:
  ///   - request: Request to send to ImportDocuments.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func importDocuments(
    _ request: Google_Firestore_Admin_V1beta1_ImportDocumentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Firestore_Admin_V1beta1_ImportDocumentsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.firestore.admin.v1beta1.FirestoreAdmin/ImportDocuments",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Firestore_Admin_V1beta1_FirestoreAdminClient: Google_Firestore_Admin_V1beta1_FirestoreAdminClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.firestore.admin.v1beta1.FirestoreAdmin service.
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
public protocol Google_Firestore_Admin_V1beta1_FirestoreAdminProvider: CallHandlerProvider {
  /// Creates the specified index.
  /// A newly created index's initial state is `CREATING`. On completion of the
  /// returned [google.longrunning.Operation][google.longrunning.Operation], the state will be `READY`.
  /// If the index already exists, the call will return an `ALREADY_EXISTS`
  /// status.
  ///
  /// During creation, the process could result in an error, in which case the
  /// index will move to the `ERROR` state. The process can be recovered by
  /// fixing the data that caused the error, removing the index with
  /// [delete][google.firestore.admin.v1beta1.FirestoreAdmin.DeleteIndex], then re-creating the index with
  /// [create][google.firestore.admin.v1beta1.FirestoreAdmin.CreateIndex].
  ///
  /// Indexes with a single field cannot be created.
  func createIndex(request: Google_Firestore_Admin_V1beta1_CreateIndexRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Lists the indexes that match the specified filters.
  func listIndexes(request: Google_Firestore_Admin_V1beta1_ListIndexesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Firestore_Admin_V1beta1_ListIndexesResponse>
  /// Gets an index.
  func getIndex(request: Google_Firestore_Admin_V1beta1_GetIndexRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Firestore_Admin_V1beta1_Index>
  /// Deletes an index.
  func deleteIndex(request: Google_Firestore_Admin_V1beta1_DeleteIndexRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Exports a copy of all or a subset of documents from Google Cloud Firestore
  /// to another storage system, such as Google Cloud Storage. Recent updates to
  /// documents may not be reflected in the export. The export occurs in the
  /// background and its progress can be monitored and managed via the
  /// Operation resource that is created. The output of an export may only be
  /// used once the associated operation is done. If an export operation is
  /// cancelled before completion it may leave partial data behind in Google
  /// Cloud Storage.
  func exportDocuments(request: Google_Firestore_Admin_V1beta1_ExportDocumentsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Imports documents into Google Cloud Firestore. Existing documents with the
  /// same name are overwritten. The import occurs in the background and its
  /// progress can be monitored and managed via the Operation resource that is
  /// created. If an ImportDocuments operation is cancelled, it is possible
  /// that a subset of the data has already been imported to Cloud Firestore.
  func importDocuments(request: Google_Firestore_Admin_V1beta1_ImportDocumentsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Firestore_Admin_V1beta1_FirestoreAdminProvider {
  public var serviceName: Substring { return "google.firestore.admin.v1beta1.FirestoreAdmin" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateIndex":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createIndex(request: request, context: context)
        }
      }

    case "ListIndexes":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listIndexes(request: request, context: context)
        }
      }

    case "GetIndex":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getIndex(request: request, context: context)
        }
      }

    case "DeleteIndex":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteIndex(request: request, context: context)
        }
      }

    case "ExportDocuments":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.exportDocuments(request: request, context: context)
        }
      }

    case "ImportDocuments":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.importDocuments(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

