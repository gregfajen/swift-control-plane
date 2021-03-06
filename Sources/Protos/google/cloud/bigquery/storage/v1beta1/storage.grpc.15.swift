//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/bigquery/storage/v1beta1/storage.proto
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


/// Usage: instantiate Google_Cloud_Bigquery_Storage_V1beta1_BigQueryStorageClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Bigquery_Storage_V1beta1_BigQueryStorageClientProtocol: GRPCClient {
  func createReadSession(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_CreateReadSessionRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_CreateReadSessionRequest, Google_Cloud_Bigquery_Storage_V1beta1_ReadSession>

  func readRows(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsRequest,
    callOptions: CallOptions?,
    handler: @escaping (Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsResponse) -> Void
  ) -> ServerStreamingCall<Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsRequest, Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsResponse>

  func batchCreateReadSessionStreams(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsRequest, Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsResponse>

  func finalizeStream(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_FinalizeStreamRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_FinalizeStreamRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func splitReadStream(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamRequest, Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamResponse>

}

extension Google_Cloud_Bigquery_Storage_V1beta1_BigQueryStorageClientProtocol {

  /// Creates a new read session. A read session divides the contents of a
  /// BigQuery table into one or more streams, which can then be used to read
  /// data from the table. The read session also specifies properties of the
  /// data to be read, such as a list of columns or a push-down filter describing
  /// the rows to be returned.
  ///
  /// A particular row can be read by at most one stream. When the caller has
  /// reached the end of each stream in the session, then all the data in the
  /// table has been read.
  ///
  /// Read sessions automatically expire 24 hours after they are created and do
  /// not require manual clean-up by the caller.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateReadSession.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createReadSession(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_CreateReadSessionRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_CreateReadSessionRequest, Google_Cloud_Bigquery_Storage_V1beta1_ReadSession> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1beta1.BigQueryStorage/CreateReadSession",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Reads rows from the table in the format prescribed by the read session.
  /// Each response contains one or more table rows, up to a maximum of 10 MiB
  /// per response; read requests which attempt to read individual rows larger
  /// than this will fail.
  ///
  /// Each request also returns a set of stream statistics reflecting the
  /// estimated total number of rows in the read stream. This number is computed
  /// based on the total table size and the number of active streams in the read
  /// session, and may change as other streams continue to read data.
  ///
  /// - Parameters:
  ///   - request: Request to send to ReadRows.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func readRows(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsResponse) -> Void
  ) -> ServerStreamingCall<Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsRequest, Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsResponse> {
    return self.makeServerStreamingCall(
      path: "/google.cloud.bigquery.storage.v1beta1.BigQueryStorage/ReadRows",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Creates additional streams for a ReadSession. This API can be used to
  /// dynamically adjust the parallelism of a batch processing task upwards by
  /// adding additional workers.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchCreateReadSessionStreams.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchCreateReadSessionStreams(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsRequest, Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1beta1.BigQueryStorage/BatchCreateReadSessionStreams",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Triggers the graceful termination of a single stream in a ReadSession. This
  /// API can be used to dynamically adjust the parallelism of a batch processing
  /// task downwards without losing data.
  ///
  /// This API does not delete the stream -- it remains visible in the
  /// ReadSession, and any data processed by the stream is not released to other
  /// streams. However, no additional data will be assigned to the stream once
  /// this call completes. Callers must continue reading data on the stream until
  /// the end of the stream is reached so that data which has already been
  /// assigned to the stream will be processed.
  ///
  /// This method will return an error if there are no other live streams
  /// in the Session, or if SplitReadStream() has been called on the given
  /// Stream.
  ///
  /// - Parameters:
  ///   - request: Request to send to FinalizeStream.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func finalizeStream(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_FinalizeStreamRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_FinalizeStreamRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1beta1.BigQueryStorage/FinalizeStream",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Splits a given read stream into two Streams. These streams are referred to
  /// as the primary and the residual of the split. The original stream can still
  /// be read from in the same manner as before. Both of the returned streams can
  /// also be read from, and the total rows return by both child streams will be
  /// the same as the rows read from the original stream.
  ///
  /// Moreover, the two child streams will be allocated back to back in the
  /// original Stream. Concretely, it is guaranteed that for streams Original,
  /// Primary, and Residual, that Original[0-j] = Primary[0-j] and
  /// Original[j-n] = Residual[0-m] once the streams have been read to
  /// completion.
  ///
  /// This method is guaranteed to be idempotent.
  ///
  /// - Parameters:
  ///   - request: Request to send to SplitReadStream.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func splitReadStream(
    _ request: Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamRequest, Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.bigquery.storage.v1beta1.BigQueryStorage/SplitReadStream",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Bigquery_Storage_V1beta1_BigQueryStorageClient: Google_Cloud_Bigquery_Storage_V1beta1_BigQueryStorageClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.bigquery.storage.v1beta1.BigQueryStorage service.
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
public protocol Google_Cloud_Bigquery_Storage_V1beta1_BigQueryStorageProvider: CallHandlerProvider {
  /// Creates a new read session. A read session divides the contents of a
  /// BigQuery table into one or more streams, which can then be used to read
  /// data from the table. The read session also specifies properties of the
  /// data to be read, such as a list of columns or a push-down filter describing
  /// the rows to be returned.
  ///
  /// A particular row can be read by at most one stream. When the caller has
  /// reached the end of each stream in the session, then all the data in the
  /// table has been read.
  ///
  /// Read sessions automatically expire 24 hours after they are created and do
  /// not require manual clean-up by the caller.
  func createReadSession(request: Google_Cloud_Bigquery_Storage_V1beta1_CreateReadSessionRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1beta1_ReadSession>
  /// Reads rows from the table in the format prescribed by the read session.
  /// Each response contains one or more table rows, up to a maximum of 10 MiB
  /// per response; read requests which attempt to read individual rows larger
  /// than this will fail.
  ///
  /// Each request also returns a set of stream statistics reflecting the
  /// estimated total number of rows in the read stream. This number is computed
  /// based on the total table size and the number of active streams in the read
  /// session, and may change as other streams continue to read data.
  func readRows(request: Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsRequest, context: StreamingResponseCallContext<Google_Cloud_Bigquery_Storage_V1beta1_ReadRowsResponse>) -> EventLoopFuture<GRPCStatus>
  /// Creates additional streams for a ReadSession. This API can be used to
  /// dynamically adjust the parallelism of a batch processing task upwards by
  /// adding additional workers.
  func batchCreateReadSessionStreams(request: Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1beta1_BatchCreateReadSessionStreamsResponse>
  /// Triggers the graceful termination of a single stream in a ReadSession. This
  /// API can be used to dynamically adjust the parallelism of a batch processing
  /// task downwards without losing data.
  ///
  /// This API does not delete the stream -- it remains visible in the
  /// ReadSession, and any data processed by the stream is not released to other
  /// streams. However, no additional data will be assigned to the stream once
  /// this call completes. Callers must continue reading data on the stream until
  /// the end of the stream is reached so that data which has already been
  /// assigned to the stream will be processed.
  ///
  /// This method will return an error if there are no other live streams
  /// in the Session, or if SplitReadStream() has been called on the given
  /// Stream.
  func finalizeStream(request: Google_Cloud_Bigquery_Storage_V1beta1_FinalizeStreamRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Splits a given read stream into two Streams. These streams are referred to
  /// as the primary and the residual of the split. The original stream can still
  /// be read from in the same manner as before. Both of the returned streams can
  /// also be read from, and the total rows return by both child streams will be
  /// the same as the rows read from the original stream.
  ///
  /// Moreover, the two child streams will be allocated back to back in the
  /// original Stream. Concretely, it is guaranteed that for streams Original,
  /// Primary, and Residual, that Original[0-j] = Primary[0-j] and
  /// Original[j-n] = Residual[0-m] once the streams have been read to
  /// completion.
  ///
  /// This method is guaranteed to be idempotent.
  func splitReadStream(request: Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Bigquery_Storage_V1beta1_SplitReadStreamResponse>
}

extension Google_Cloud_Bigquery_Storage_V1beta1_BigQueryStorageProvider {
  public var serviceName: Substring { return "google.cloud.bigquery.storage.v1beta1.BigQueryStorage" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateReadSession":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createReadSession(request: request, context: context)
        }
      }

    case "ReadRows":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.readRows(request: request, context: context)
        }
      }

    case "BatchCreateReadSessionStreams":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchCreateReadSessionStreams(request: request, context: context)
        }
      }

    case "FinalizeStream":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.finalizeStream(request: request, context: context)
        }
      }

    case "SplitReadStream":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.splitReadStream(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

