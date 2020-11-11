//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/datastore/v1/datastore.proto
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


/// Usage: instantiate Google_Datastore_V1_DatastoreClient, then call methods of this protocol to make API calls.
public protocol Google_Datastore_V1_DatastoreClientProtocol: GRPCClient {
  func lookup(
    _ request: Google_Datastore_V1_LookupRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Datastore_V1_LookupRequest, Google_Datastore_V1_LookupResponse>

  func runQuery(
    _ request: Google_Datastore_V1_RunQueryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Datastore_V1_RunQueryRequest, Google_Datastore_V1_RunQueryResponse>

  func beginTransaction(
    _ request: Google_Datastore_V1_BeginTransactionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Datastore_V1_BeginTransactionRequest, Google_Datastore_V1_BeginTransactionResponse>

  func commit(
    _ request: Google_Datastore_V1_CommitRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Datastore_V1_CommitRequest, Google_Datastore_V1_CommitResponse>

  func rollback(
    _ request: Google_Datastore_V1_RollbackRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Datastore_V1_RollbackRequest, Google_Datastore_V1_RollbackResponse>

  func allocateIds(
    _ request: Google_Datastore_V1_AllocateIdsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Datastore_V1_AllocateIdsRequest, Google_Datastore_V1_AllocateIdsResponse>

  func reserveIds(
    _ request: Google_Datastore_V1_ReserveIdsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Datastore_V1_ReserveIdsRequest, Google_Datastore_V1_ReserveIdsResponse>

}

extension Google_Datastore_V1_DatastoreClientProtocol {

  /// Looks up entities by key.
  ///
  /// - Parameters:
  ///   - request: Request to send to Lookup.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func lookup(
    _ request: Google_Datastore_V1_LookupRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Datastore_V1_LookupRequest, Google_Datastore_V1_LookupResponse> {
    return self.makeUnaryCall(
      path: "/google.datastore.v1.Datastore/Lookup",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Queries for entities.
  ///
  /// - Parameters:
  ///   - request: Request to send to RunQuery.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func runQuery(
    _ request: Google_Datastore_V1_RunQueryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Datastore_V1_RunQueryRequest, Google_Datastore_V1_RunQueryResponse> {
    return self.makeUnaryCall(
      path: "/google.datastore.v1.Datastore/RunQuery",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Begins a new transaction.
  ///
  /// - Parameters:
  ///   - request: Request to send to BeginTransaction.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func beginTransaction(
    _ request: Google_Datastore_V1_BeginTransactionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Datastore_V1_BeginTransactionRequest, Google_Datastore_V1_BeginTransactionResponse> {
    return self.makeUnaryCall(
      path: "/google.datastore.v1.Datastore/BeginTransaction",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Commits a transaction, optionally creating, deleting or modifying some
  /// entities.
  ///
  /// - Parameters:
  ///   - request: Request to send to Commit.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func commit(
    _ request: Google_Datastore_V1_CommitRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Datastore_V1_CommitRequest, Google_Datastore_V1_CommitResponse> {
    return self.makeUnaryCall(
      path: "/google.datastore.v1.Datastore/Commit",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Rolls back a transaction.
  ///
  /// - Parameters:
  ///   - request: Request to send to Rollback.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func rollback(
    _ request: Google_Datastore_V1_RollbackRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Datastore_V1_RollbackRequest, Google_Datastore_V1_RollbackResponse> {
    return self.makeUnaryCall(
      path: "/google.datastore.v1.Datastore/Rollback",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Allocates IDs for the given keys, which is useful for referencing an entity
  /// before it is inserted.
  ///
  /// - Parameters:
  ///   - request: Request to send to AllocateIds.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func allocateIds(
    _ request: Google_Datastore_V1_AllocateIdsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Datastore_V1_AllocateIdsRequest, Google_Datastore_V1_AllocateIdsResponse> {
    return self.makeUnaryCall(
      path: "/google.datastore.v1.Datastore/AllocateIds",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Prevents the supplied keys' IDs from being auto-allocated by Cloud
  /// Datastore.
  ///
  /// - Parameters:
  ///   - request: Request to send to ReserveIds.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func reserveIds(
    _ request: Google_Datastore_V1_ReserveIdsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Datastore_V1_ReserveIdsRequest, Google_Datastore_V1_ReserveIdsResponse> {
    return self.makeUnaryCall(
      path: "/google.datastore.v1.Datastore/ReserveIds",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Datastore_V1_DatastoreClient: Google_Datastore_V1_DatastoreClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.datastore.v1.Datastore service.
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
public protocol Google_Datastore_V1_DatastoreProvider: CallHandlerProvider {
  /// Looks up entities by key.
  func lookup(request: Google_Datastore_V1_LookupRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Datastore_V1_LookupResponse>
  /// Queries for entities.
  func runQuery(request: Google_Datastore_V1_RunQueryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Datastore_V1_RunQueryResponse>
  /// Begins a new transaction.
  func beginTransaction(request: Google_Datastore_V1_BeginTransactionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Datastore_V1_BeginTransactionResponse>
  /// Commits a transaction, optionally creating, deleting or modifying some
  /// entities.
  func commit(request: Google_Datastore_V1_CommitRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Datastore_V1_CommitResponse>
  /// Rolls back a transaction.
  func rollback(request: Google_Datastore_V1_RollbackRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Datastore_V1_RollbackResponse>
  /// Allocates IDs for the given keys, which is useful for referencing an entity
  /// before it is inserted.
  func allocateIds(request: Google_Datastore_V1_AllocateIdsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Datastore_V1_AllocateIdsResponse>
  /// Prevents the supplied keys' IDs from being auto-allocated by Cloud
  /// Datastore.
  func reserveIds(request: Google_Datastore_V1_ReserveIdsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Datastore_V1_ReserveIdsResponse>
}

extension Google_Datastore_V1_DatastoreProvider {
  public var serviceName: Substring { return "google.datastore.v1.Datastore" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Lookup":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.lookup(request: request, context: context)
        }
      }

    case "RunQuery":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.runQuery(request: request, context: context)
        }
      }

    case "BeginTransaction":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.beginTransaction(request: request, context: context)
        }
      }

    case "Commit":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.commit(request: request, context: context)
        }
      }

    case "Rollback":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.rollback(request: request, context: context)
        }
      }

    case "AllocateIds":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.allocateIds(request: request, context: context)
        }
      }

    case "ReserveIds":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.reserveIds(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
