//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/service/listener/v3/lds.proto
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


/// Usage: instantiate Envoy_Service_Listener_V3_ListenerDiscoveryServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Listener_V3_ListenerDiscoveryServiceClientProtocol: GRPCClient {
  func deltaListeners(
    callOptions: CallOptions?,
    handler: @escaping (Envoy_Service_Discovery_V3_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest, Envoy_Service_Discovery_V3_DeltaDiscoveryResponse>

  func streamListeners(
    callOptions: CallOptions?,
    handler: @escaping (Envoy_Service_Discovery_V3_DiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse>

  func fetchListeners(
    _ request: Envoy_Service_Discovery_V3_DiscoveryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse>

}

extension Envoy_Service_Listener_V3_ListenerDiscoveryServiceClientProtocol {

  /// Bidirectional streaming call to DeltaListeners
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func deltaListeners(
    callOptions: CallOptions? = nil,
    handler: @escaping (Envoy_Service_Discovery_V3_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest, Envoy_Service_Discovery_V3_DeltaDiscoveryResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/envoy.service.listener.v3.ListenerDiscoveryService/DeltaListeners",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Bidirectional streaming call to StreamListeners
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func streamListeners(
    callOptions: CallOptions? = nil,
    handler: @escaping (Envoy_Service_Discovery_V3_DiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/envoy.service.listener.v3.ListenerDiscoveryService/StreamListeners",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Unary call to FetchListeners
  ///
  /// - Parameters:
  ///   - request: Request to send to FetchListeners.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fetchListeners(
    _ request: Envoy_Service_Discovery_V3_DiscoveryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse> {
    return self.makeUnaryCall(
      path: "/envoy.service.listener.v3.ListenerDiscoveryService/FetchListeners",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Envoy_Service_Listener_V3_ListenerDiscoveryServiceClient: Envoy_Service_Listener_V3_ListenerDiscoveryServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.listener.v3.ListenerDiscoveryService service.
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
public protocol Envoy_Service_Listener_V3_ListenerDiscoveryServiceProvider: CallHandlerProvider {
  func deltaListeners(context: StreamingResponseCallContext<Envoy_Service_Discovery_V3_DeltaDiscoveryResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest>) -> Void>
  func streamListeners(context: StreamingResponseCallContext<Envoy_Service_Discovery_V3_DiscoveryResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Discovery_V3_DiscoveryRequest>) -> Void>
  func fetchListeners(request: Envoy_Service_Discovery_V3_DiscoveryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Envoy_Service_Discovery_V3_DiscoveryResponse>
}

extension Envoy_Service_Listener_V3_ListenerDiscoveryServiceProvider {
  public var serviceName: Substring { return "envoy.service.listener.v3.ListenerDiscoveryService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "DeltaListeners":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.deltaListeners(context: context)
      }

    case "StreamListeners":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamListeners(context: context)
      }

    case "FetchListeners":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.fetchListeners(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

