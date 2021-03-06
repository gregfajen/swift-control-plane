//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/service/route/v3/rds.proto
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


/// Usage: instantiate Envoy_Service_Route_V3_RouteDiscoveryServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Route_V3_RouteDiscoveryServiceClientProtocol: GRPCClient {
  func streamRoutes(
    callOptions: CallOptions?,
    handler: @escaping (Envoy_Service_Discovery_V3_DiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse>

  func deltaRoutes(
    callOptions: CallOptions?,
    handler: @escaping (Envoy_Service_Discovery_V3_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest, Envoy_Service_Discovery_V3_DeltaDiscoveryResponse>

  func fetchRoutes(
    _ request: Envoy_Service_Discovery_V3_DiscoveryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse>

}

extension Envoy_Service_Route_V3_RouteDiscoveryServiceClientProtocol {

  /// Bidirectional streaming call to StreamRoutes
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func streamRoutes(
    callOptions: CallOptions? = nil,
    handler: @escaping (Envoy_Service_Discovery_V3_DiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/envoy.service.route.v3.RouteDiscoveryService/StreamRoutes",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Bidirectional streaming call to DeltaRoutes
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func deltaRoutes(
    callOptions: CallOptions? = nil,
    handler: @escaping (Envoy_Service_Discovery_V3_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest, Envoy_Service_Discovery_V3_DeltaDiscoveryResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/envoy.service.route.v3.RouteDiscoveryService/DeltaRoutes",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }

  /// Unary call to FetchRoutes
  ///
  /// - Parameters:
  ///   - request: Request to send to FetchRoutes.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fetchRoutes(
    _ request: Envoy_Service_Discovery_V3_DiscoveryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Envoy_Service_Discovery_V3_DiscoveryRequest, Envoy_Service_Discovery_V3_DiscoveryResponse> {
    return self.makeUnaryCall(
      path: "/envoy.service.route.v3.RouteDiscoveryService/FetchRoutes",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Envoy_Service_Route_V3_RouteDiscoveryServiceClient: Envoy_Service_Route_V3_RouteDiscoveryServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.route.v3.RouteDiscoveryService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }
}

/// Usage: instantiate Envoy_Service_Route_V3_VirtualHostDiscoveryServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Route_V3_VirtualHostDiscoveryServiceClientProtocol: GRPCClient {
  func deltaVirtualHosts(
    callOptions: CallOptions?,
    handler: @escaping (Envoy_Service_Discovery_V3_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest, Envoy_Service_Discovery_V3_DeltaDiscoveryResponse>

}

extension Envoy_Service_Route_V3_VirtualHostDiscoveryServiceClientProtocol {

  /// Bidirectional streaming call to DeltaVirtualHosts
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func deltaVirtualHosts(
    callOptions: CallOptions? = nil,
    handler: @escaping (Envoy_Service_Discovery_V3_DeltaDiscoveryResponse) -> Void
  ) -> BidirectionalStreamingCall<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest, Envoy_Service_Discovery_V3_DeltaDiscoveryResponse> {
    return self.makeBidirectionalStreamingCall(
      path: "/envoy.service.route.v3.VirtualHostDiscoveryService/DeltaVirtualHosts",
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }
}

public final class Envoy_Service_Route_V3_VirtualHostDiscoveryServiceClient: Envoy_Service_Route_V3_VirtualHostDiscoveryServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.route.v3.VirtualHostDiscoveryService service.
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
public protocol Envoy_Service_Route_V3_RouteDiscoveryServiceProvider: CallHandlerProvider {
  func streamRoutes(context: StreamingResponseCallContext<Envoy_Service_Discovery_V3_DiscoveryResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Discovery_V3_DiscoveryRequest>) -> Void>
  func deltaRoutes(context: StreamingResponseCallContext<Envoy_Service_Discovery_V3_DeltaDiscoveryResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest>) -> Void>
  func fetchRoutes(request: Envoy_Service_Discovery_V3_DiscoveryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Envoy_Service_Discovery_V3_DiscoveryResponse>
}

extension Envoy_Service_Route_V3_RouteDiscoveryServiceProvider {
  public var serviceName: Substring { return "envoy.service.route.v3.RouteDiscoveryService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "StreamRoutes":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.streamRoutes(context: context)
      }

    case "DeltaRoutes":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.deltaRoutes(context: context)
      }

    case "FetchRoutes":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.fetchRoutes(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

/// To build a server, implement a class that conforms to this protocol.
public protocol Envoy_Service_Route_V3_VirtualHostDiscoveryServiceProvider: CallHandlerProvider {
  func deltaVirtualHosts(context: StreamingResponseCallContext<Envoy_Service_Discovery_V3_DeltaDiscoveryResponse>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Discovery_V3_DeltaDiscoveryRequest>) -> Void>
}

extension Envoy_Service_Route_V3_VirtualHostDiscoveryServiceProvider {
  public var serviceName: Substring { return "envoy.service.route.v3.VirtualHostDiscoveryService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "DeltaVirtualHosts":
      return CallHandlerFactory.makeBidirectionalStreaming(callHandlerContext: callHandlerContext) { context in
        return self.deltaVirtualHosts(context: context)
      }

    default: return nil
    }
  }
}

