//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/api/v2/srds.proto
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


/// Usage: instantiate Envoy_Api_V2_ScopedRoutesDiscoveryServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Api_V2_ScopedRoutesDiscoveryServiceClientProtocol: GRPCClient {
  func streamScopedRoutes(
    callOptions: CallOptions?,
    handler: @escaping (Envoy_Api_V2_DiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Api_V2_DiscoveryRequest, Envoy_Api_V2_DiscoveryResponse>

  func deltaScopedRoutes(
    callOptions: CallOptions?,
    handler: @escaping (Envoy_Api_V2_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Api_V2_DeltaDiscoveryRequest, Envoy_Api_V2_DeltaDiscoveryResponse>

  func fetchScopedRoutes(
    _ request: Envoy_Api_V2_DiscoveryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Envoy_Api_V2_DiscoveryRequest, Envoy_Api_V2_DiscoveryResponse>

}

extension Envoy_Api_V2_ScopedRoutesDiscoveryServiceClientProtocol {

  /// Bidirectional streaming call to StreamScopedRoutes
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func streamScopedRoutes(
    callOptions: CallOptions? = nil,
    handler: @escaping (Envoy_Api_V2_DiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Api_V2_DiscoveryRequest, Envoy_Api_V2_DiscoveryResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/envoy.api.v2.ScopedRoutesDiscoveryService/StreamScopedRoutes",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Bidirectional streaming call to DeltaScopedRoutes
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func deltaScopedRoutes(
    callOptions: CallOptions? = nil,
    handler: @escaping (Envoy_Api_V2_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Api_V2_DeltaDiscoveryRequest, Envoy_Api_V2_DeltaDiscoveryResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/envoy.api.v2.ScopedRoutesDiscoveryService/DeltaScopedRoutes",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Unary call to FetchScopedRoutes
  ///
  /// - Parameters:
  ///   - request: Request to send to FetchScopedRoutes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fetchScopedRoutes(
    _ request: Envoy_Api_V2_DiscoveryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Envoy_Api_V2_DiscoveryRequest, Envoy_Api_V2_DiscoveryResponse> {
    return self.makeUnaryCall(
      path: "/envoy.api.v2.ScopedRoutesDiscoveryService/FetchScopedRoutes",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Envoy_Api_V2_ScopedRoutesDiscoveryServiceClient: Envoy_Api_V2_ScopedRoutesDiscoveryServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.api.v2.ScopedRoutesDiscoveryService service.
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
public protocol Envoy_Api_V2_ScopedRoutesDiscoveryServiceProvider: CallHandlerProvider {
  func streamScopedRoutes(context: StreamingResponseCallContext<Envoy_Api_V2_DiscoveryResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Api_V2_DiscoveryRequest>) -> Void>
  func deltaScopedRoutes(context: StreamingResponseCallContext<Envoy_Api_V2_DeltaDiscoveryResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Api_V2_DeltaDiscoveryRequest>) -> Void>
  func fetchScopedRoutes(request: Envoy_Api_V2_DiscoveryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Envoy_Api_V2_DiscoveryResponse>
}

extension Envoy_Api_V2_ScopedRoutesDiscoveryServiceProvider {
  public var serviceName: Substring { return "envoy.api.v2.ScopedRoutesDiscoveryService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "StreamScopedRoutes":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamScopedRoutes(context: context)
      }

    case "DeltaScopedRoutes":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.deltaScopedRoutes(context: context)
      }

    case "FetchScopedRoutes":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.fetchScopedRoutes(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

