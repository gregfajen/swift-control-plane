//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/devtools/build/v1/publish_build_event.proto
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


/// Usage: instantiate Google_Devtools_Build_V1_PublishBuildEventClient, then call methods of this protocol to make API calls.
public protocol Google_Devtools_Build_V1_PublishBuildEventClientProtocol: GRPCClient {
  func publishLifecycleEvent(
    _ request: Google_Devtools_Build_V1_PublishLifecycleEventRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Build_V1_PublishLifecycleEventRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func publishBuildToolEventStream(
    callOptions: CallOptions?,
    handler: @escaping (Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Devtools_Build_V1_PublishBuildToolEventStreamRequest, Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse>

}

extension Google_Devtools_Build_V1_PublishBuildEventClientProtocol {

  /// Publish a build event stating the new state of a build (typically from the
  /// build queue). The BuildEnqueued event must be publishd before all other
  /// events for the same build ID.
  ///
  /// The backend will persist the event and deliver it to registered frontend
  /// jobs immediately without batching.
  ///
  /// The commit status of the request is reported by the RPC's util_status()
  /// function. The error code is the canoncial error code defined in
  /// //util/task/codes.proto.
  ///
  /// - Parameters:
  ///   - request: Request to send to PublishLifecycleEvent.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func publishLifecycleEvent(
    _ request: Google_Devtools_Build_V1_PublishLifecycleEventRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Build_V1_PublishLifecycleEventRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.devtools.build.v1.PublishBuildEvent/PublishLifecycleEvent",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Publish build tool events belonging to the same stream to a backend job
  /// using bidirectional streaming.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func publishBuildToolEventStream(
    callOptions: CallOptions? = nil,
    handler: @escaping (Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Devtools_Build_V1_PublishBuildToolEventStreamRequest, Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/google.devtools.build.v1.PublishBuildEvent/PublishBuildToolEventStream",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }
}

public final class Google_Devtools_Build_V1_PublishBuildEventClient: Google_Devtools_Build_V1_PublishBuildEventClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.devtools.build.v1.PublishBuildEvent service.
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
public protocol Google_Devtools_Build_V1_PublishBuildEventProvider: CallHandlerProvider {
  /// Publish a build event stating the new state of a build (typically from the
  /// build queue). The BuildEnqueued event must be publishd before all other
  /// events for the same build ID.
  ///
  /// The backend will persist the event and deliver it to registered frontend
  /// jobs immediately without batching.
  ///
  /// The commit status of the request is reported by the RPC's util_status()
  /// function. The error code is the canoncial error code defined in
  /// //util/task/codes.proto.
  func publishLifecycleEvent(request: Google_Devtools_Build_V1_PublishLifecycleEventRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Publish build tool events belonging to the same stream to a backend job
  /// using bidirectional streaming.
  func publishBuildToolEventStream(context: StreamingResponseCallContext<Google_Devtools_Build_V1_PublishBuildToolEventStreamResponse>) -> EventLoopFuture<(StreamEvent<Google_Devtools_Build_V1_PublishBuildToolEventStreamRequest>) -> Void>
}

extension Google_Devtools_Build_V1_PublishBuildEventProvider {
  public var serviceName: Substring { return "google.devtools.build.v1.PublishBuildEvent" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "PublishLifecycleEvent":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.publishLifecycleEvent(request: request, context: context)
        }
      }

    case "PublishBuildToolEventStream":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.publishBuildToolEventStream(context: context)
      }

    default: return nil
    }
  }
}

