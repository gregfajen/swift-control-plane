//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/pubsublite/v1/publisher.proto
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


/// Usage: instantiate Google_Cloud_Pubsublite_V1_PublisherServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Pubsublite_V1_PublisherServiceClientProtocol: GRPCClient {
  func publish(
    callOptions: CallOptions?,
    handler: @escaping (Google_Cloud_Pubsublite_V1_PublishResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Pubsublite_V1_PublishRequest, Google_Cloud_Pubsublite_V1_PublishResponse>

}

extension Google_Cloud_Pubsublite_V1_PublisherServiceClientProtocol {

  /// Establishes a stream with the server for publishing messages. Once the
  /// stream is initialized, the client publishes messages by sending publish
  /// requests on the stream. The server responds with a PublishResponse for each
  /// PublishRequest sent by the client, in the same order that the requests
  /// were sent. Note that multiple PublishRequests can be in flight
  /// simultaneously, but they will be processed by the server in the order that
  /// they are sent by the client on a given stream.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func publish(
    callOptions: CallOptions? = nil,
    handler: @escaping (Google_Cloud_Pubsublite_V1_PublishResponse) -> Void
  ) -> BidirectionalStreamingCall<Google_Cloud_Pubsublite_V1_PublishRequest, Google_Cloud_Pubsublite_V1_PublishResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/google.cloud.pubsublite.v1.PublisherService/Publish",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }
}

public final class Google_Cloud_Pubsublite_V1_PublisherServiceClient: Google_Cloud_Pubsublite_V1_PublisherServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.pubsublite.v1.PublisherService service.
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
public protocol Google_Cloud_Pubsublite_V1_PublisherServiceProvider: CallHandlerProvider {
  /// Establishes a stream with the server for publishing messages. Once the
  /// stream is initialized, the client publishes messages by sending publish
  /// requests on the stream. The server responds with a PublishResponse for each
  /// PublishRequest sent by the client, in the same order that the requests
  /// were sent. Note that multiple PublishRequests can be in flight
  /// simultaneously, but they will be processed by the server in the order that
  /// they are sent by the client on a given stream.
  func publish(context: StreamingResponseCallContext<Google_Cloud_Pubsublite_V1_PublishResponse>) -> EventLoopFuture<(StreamEvent<Google_Cloud_Pubsublite_V1_PublishRequest>) -> Void>
}

extension Google_Cloud_Pubsublite_V1_PublisherServiceProvider {
  public var serviceName: Substring { return "google.cloud.pubsublite.v1.PublisherService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "Publish":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.publish(context: context)
      }

    default: return nil
    }
  }
}

