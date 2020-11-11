//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/bigquery/storage/v1alpha2/storage.proto
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


/// Usage: instantiate Google_Cloud_Bigquery_Storage_V1alpha2_BigQueryWriteClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Bigquery_Storage_V1alpha2_BigQueryWriteClientProtocol: GRPCClient {
  func createWriteStream(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_CreateWriteStreamRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_CreateWriteStreamRequest, Google_Cloud_Bigquery_Storage_V1alpha2_WriteStream>

  func appendRows(
    callOptions: CallOptions?,
    handler: @escaping (Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsRequest, Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsResponse>

  func getWriteStream(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_GetWriteStreamRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_GetWriteStreamRequest, Google_Cloud_Bigquery_Storage_V1alpha2_WriteStream>

  func finalizeWriteStream(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamRequest, Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamResponse>

  func batchCommitWriteStreams(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsRequest, Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsResponse>

  func flushRows(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsRequest, Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsResponse>

}

extension Google_Cloud_Bigquery_Storage_V1alpha2_BigQueryWriteClientProtocol {

  /// Creates a write stream to the given table.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateWriteStream.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createWriteStream(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_CreateWriteStreamRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_CreateWriteStreamRequest, Google_Cloud_Bigquery_Storage_V1alpha2_WriteStream> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1alpha2.BigQueryWrite/CreateWriteStream",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Appends data to the given stream.
  ///
  /// If `offset` is specified, the `offset` is checked against the end of
  /// stream. The server returns `OUT_OF_RANGE` in `AppendRowsResponse` if an
  /// attempt is made to append to an offset beyond the current end of the stream
  /// or `ALREADY_EXISTS` if user provids an `offset` that has already been
  /// written to. User can retry with adjusted offset within the same RPC
  /// stream. If `offset` is not specified, append happens at the end of the
  /// stream.
  ///
  /// The response contains the offset at which the append happened. Responses
  /// are received in the same order in which requests are sent. There will be
  /// one response for each successful request. If the `offset` is not set in
  /// response, it means append didn't happen due to some errors. If one request
  /// fails, all the subsequent requests will also fail until a success request
  /// is made again.
  ///
  /// If the stream is of `PENDING` type, data will only be available for read
  /// operations after the stream is committed.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func appendRows(
    callOptions: CallOptions? = nil,
    handler: @escaping (Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsRequest, Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/google.cloud.bigquery.storage.v1alpha2.BigQueryWrite/AppendRows",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Gets a write stream.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetWriteStream.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getWriteStream(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_GetWriteStreamRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_GetWriteStreamRequest, Google_Cloud_Bigquery_Storage_V1alpha2_WriteStream> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1alpha2.BigQueryWrite/GetWriteStream",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Finalize a write stream so that no new data can be appended to the
  /// stream.
  ///
  /// - Parameters:
  ///   - request: Request to send to FinalizeWriteStream.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func finalizeWriteStream(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamRequest, Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1alpha2.BigQueryWrite/FinalizeWriteStream",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Atomically commits a group of `PENDING` streams that belong to the same
  /// `parent` table.
  /// Streams must be finalized before commit and cannot be committed multiple
  /// times. Once a stream is committed, data in the stream becomes available
  /// for read operations.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchCommitWriteStreams.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchCommitWriteStreams(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsRequest, Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1alpha2.BigQueryWrite/BatchCommitWriteStreams",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Flushes rows to a BUFFERED stream.
  /// If users are appending rows to BUFFERED stream, flush operation is
  /// required in order for the rows to become available for reading. A
  /// Flush operation flushes up to any previously flushed offset in a BUFFERED
  /// stream, to the offset specified in the request.
  ///
  /// - Parameters:
  ///   - request: Request to send to FlushRows.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func flushRows(
    _ request: Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsRequest, Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1alpha2.BigQueryWrite/FlushRows",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Bigquery_Storage_V1alpha2_BigQueryWriteClient: Google_Cloud_Bigquery_Storage_V1alpha2_BigQueryWriteClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.bigquery.storage.v1alpha2.BigQueryWrite service.
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
public protocol Google_Cloud_Bigquery_Storage_V1alpha2_BigQueryWriteProvider: CallHandlerProvider {
  /// Creates a write stream to the given table.
  func createWriteStream(request: Google_Cloud_Bigquery_Storage_V1alpha2_CreateWriteStreamRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1alpha2_WriteStream>
  /// Appends data to the given stream.
  ///
  /// If `offset` is specified, the `offset` is checked against the end of
  /// stream. The server returns `OUT_OF_RANGE` in `AppendRowsResponse` if an
  /// attempt is made to append to an offset beyond the current end of the stream
  /// or `ALREADY_EXISTS` if user provids an `offset` that has already been
  /// written to. User can retry with adjusted offset within the same RPC
  /// stream. If `offset` is not specified, append happens at the end of the
  /// stream.
  ///
  /// The response contains the offset at which the append happened. Responses
  /// are received in the same order in which requests are sent. There will be
  /// one response for each successful request. If the `offset` is not set in
  /// response, it means append didn't happen due to some errors. If one request
  /// fails, all the subsequent requests will also fail until a success request
  /// is made again.
  ///
  /// If the stream is of `PENDING` type, data will only be available for read
  /// operations after the stream is committed.
  func appendRows(context: StreamingResponseCallContext<Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsResponse>) -> EventLoopFuture<(StreamEvent<Google_Cloud_Bigquery_Storage_V1alpha2_AppendRowsRequest>) -> Void>
  /// Gets a write stream.
  func getWriteStream(request: Google_Cloud_Bigquery_Storage_V1alpha2_GetWriteStreamRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1alpha2_WriteStream>
  /// Finalize a write stream so that no new data can be appended to the
  /// stream.
  func finalizeWriteStream(request: Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1alpha2_FinalizeWriteStreamResponse>
  /// Atomically commits a group of `PENDING` streams that belong to the same
  /// `parent` table.
  /// Streams must be finalized before commit and cannot be committed multiple
  /// times. Once a stream is committed, data in the stream becomes available
  /// for read operations.
  func batchCommitWriteStreams(request: Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1alpha2_BatchCommitWriteStreamsResponse>
  /// Flushes rows to a BUFFERED stream.
  /// If users are appending rows to BUFFERED stream, flush operation is
  /// required in order for the rows to become available for reading. A
  /// Flush operation flushes up to any previously flushed offset in a BUFFERED
  /// stream, to the offset specified in the request.
  func flushRows(request: Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1alpha2_FlushRowsResponse>
}

extension Google_Cloud_Bigquery_Storage_V1alpha2_BigQueryWriteProvider {
  public var serviceName: Substring { return "google.cloud.bigquery.storage.v1alpha2.BigQueryWrite" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateWriteStream":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createWriteStream(request: request, context: context)
        }
      }

    case "AppendRows":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.appendRows(context: context)
      }

    case "GetWriteStream":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getWriteStream(request: request, context: context)
        }
      }

    case "FinalizeWriteStream":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.finalizeWriteStream(request: request, context: context)
        }
      }

    case "BatchCommitWriteStreams":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchCommitWriteStreams(request: request, context: context)
        }
      }

    case "FlushRows":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.flushRows(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
