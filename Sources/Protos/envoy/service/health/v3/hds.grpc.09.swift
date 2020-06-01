//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: envoy/service/health/v3/hds.proto
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
import Foundation
import GRPC
import NIO
import NIOHTTP1
import SwiftProtobuf


/// Usage: instantiate Envoy_Service_Health_V3_HealthDiscoveryServiceClient, then call methods of this protocol to make API calls.
public protocol Envoy_Service_Health_V3_HealthDiscoveryServiceClientProtocol {
  func streamHealthCheck(callOptions: CallOptions?, handler: @escaping (Envoy_Service_Health_V3_HealthCheckSpecifier) -> Void) -> BidirectionalStreamingCall<Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse, Envoy_Service_Health_V3_HealthCheckSpecifier>
  func fetchHealthCheck(_ request: Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse, callOptions: CallOptions?) -> UnaryCall<Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse, Envoy_Service_Health_V3_HealthCheckSpecifier>
}

public final class Envoy_Service_Health_V3_HealthDiscoveryServiceClient: GRPCClient, Envoy_Service_Health_V3_HealthDiscoveryServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the envoy.service.health.v3.HealthDiscoveryService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  public init(channel: GRPCChannel, defaultCallOptions: CallOptions = CallOptions()) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
  }

  /// 1. Envoy starts up and if its can_healthcheck option in the static
  ///    bootstrap config is enabled, sends HealthCheckRequest to the management
  ///    server. It supplies its capabilities (which protocol it can health check
  ///    with, what zone it resides in, etc.).
  /// 2. In response to (1), the management server designates this Envoy as a
  ///    healthchecker to health check a subset of all upstream hosts for a given
  ///    cluster (for example upstream Host 1 and Host 2). It streams
  ///    HealthCheckSpecifier messages with cluster related configuration for all
  ///    clusters this Envoy is designated to health check. Subsequent
  ///    HealthCheckSpecifier message will be sent on changes to:
  ///    a. Endpoints to health checks
  ///    b. Per cluster configuration change
  /// 3. Envoy creates a health probe based on the HealthCheck config and sends
  ///    it to endpoint(ip:port) of Host 1 and 2. Based on the HealthCheck
  ///    configuration Envoy waits upon the arrival of the probe response and
  ///    looks at the content of the response to decide whether the endpoint is
  ///    healthy or not. If a response hasn't been received within the timeout
  ///    interval, the endpoint health status is considered TIMEOUT.
  /// 4. Envoy reports results back in an EndpointHealthResponse message.
  ///    Envoy streams responses as often as the interval configured by the
  ///    management server in HealthCheckSpecifier.
  /// 5. The management Server collects health statuses for all endpoints in the
  ///    cluster (for all clusters) and uses this information to construct
  ///    EndpointDiscoveryResponse messages.
  /// 6. Once Envoy has a list of upstream endpoints to send traffic to, it load
  ///    balances traffic to them without additional health checking. It may
  ///    use inline healthcheck (i.e. consider endpoint UNHEALTHY if connection
  ///    failed to a particular endpoint to account for health status propagation
  ///    delay between HDS and EDS).
  /// By default, can_healthcheck is true. If can_healthcheck is false, Cluster
  /// configuration may not contain HealthCheck message.
  /// TODO(htuch): How is can_healthcheck communicated to CDS to ensure the above
  /// invariant?
  /// TODO(htuch): Add @amb67's diagram.
  ///
  /// Callers should use the `send` method on the returned object to send messages
  /// to the server. The caller should send an `.end` after the final message has been sent.
  ///
  /// - Parameters:
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ClientStreamingCall` with futures for the metadata and status.
  public func streamHealthCheck(callOptions: CallOptions? = nil, handler: @escaping (Envoy_Service_Health_V3_HealthCheckSpecifier) -> Void) -> BidirectionalStreamingCall<Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse, Envoy_Service_Health_V3_HealthCheckSpecifier> {
    return self.makeBidirectionalStreamingCall(path: "/envoy.service.health.v3.HealthDiscoveryService/StreamHealthCheck",
                                               callOptions: callOptions ?? self.defaultCallOptions,
                                               handler: handler)
  }

  /// TODO(htuch): Unlike the gRPC version, there is no stream-based binding of
  /// request/response. Should we add an identifier to the HealthCheckSpecifier
  /// to bind with the response?
  ///
  /// - Parameters:
  ///   - request: Request to send to FetchHealthCheck.
  ///   - callOptions: Call options; `self.defaultCallOptions` is used if `nil`.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func fetchHealthCheck(_ request: Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse, callOptions: CallOptions? = nil) -> UnaryCall<Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse, Envoy_Service_Health_V3_HealthCheckSpecifier> {
    return self.makeUnaryCall(path: "/envoy.service.health.v3.HealthDiscoveryService/FetchHealthCheck",
                              request: request,
                              callOptions: callOptions ?? self.defaultCallOptions)
  }

}

/// To build a server, implement a class that conforms to this protocol.
public protocol Envoy_Service_Health_V3_HealthDiscoveryServiceProvider: CallHandlerProvider {
  /// 1. Envoy starts up and if its can_healthcheck option in the static
  ///    bootstrap config is enabled, sends HealthCheckRequest to the management
  ///    server. It supplies its capabilities (which protocol it can health check
  ///    with, what zone it resides in, etc.).
  /// 2. In response to (1), the management server designates this Envoy as a
  ///    healthchecker to health check a subset of all upstream hosts for a given
  ///    cluster (for example upstream Host 1 and Host 2). It streams
  ///    HealthCheckSpecifier messages with cluster related configuration for all
  ///    clusters this Envoy is designated to health check. Subsequent
  ///    HealthCheckSpecifier message will be sent on changes to:
  ///    a. Endpoints to health checks
  ///    b. Per cluster configuration change
  /// 3. Envoy creates a health probe based on the HealthCheck config and sends
  ///    it to endpoint(ip:port) of Host 1 and 2. Based on the HealthCheck
  ///    configuration Envoy waits upon the arrival of the probe response and
  ///    looks at the content of the response to decide whether the endpoint is
  ///    healthy or not. If a response hasn't been received within the timeout
  ///    interval, the endpoint health status is considered TIMEOUT.
  /// 4. Envoy reports results back in an EndpointHealthResponse message.
  ///    Envoy streams responses as often as the interval configured by the
  ///    management server in HealthCheckSpecifier.
  /// 5. The management Server collects health statuses for all endpoints in the
  ///    cluster (for all clusters) and uses this information to construct
  ///    EndpointDiscoveryResponse messages.
  /// 6. Once Envoy has a list of upstream endpoints to send traffic to, it load
  ///    balances traffic to them without additional health checking. It may
  ///    use inline healthcheck (i.e. consider endpoint UNHEALTHY if connection
  ///    failed to a particular endpoint to account for health status propagation
  ///    delay between HDS and EDS).
  /// By default, can_healthcheck is true. If can_healthcheck is false, Cluster
  /// configuration may not contain HealthCheck message.
  /// TODO(htuch): How is can_healthcheck communicated to CDS to ensure the above
  /// invariant?
  /// TODO(htuch): Add @amb67's diagram.
  func streamHealthCheck(context: StreamingResponseCallContext<Envoy_Service_Health_V3_HealthCheckSpecifier>) -> EventLoopFuture<(StreamEvent<Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse>) -> Void>
  /// TODO(htuch): Unlike the gRPC version, there is no stream-based binding of
  /// request/response. Should we add an identifier to the HealthCheckSpecifier
  /// to bind with the response?
  func fetchHealthCheck(request: Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse, context: StatusOnlyCallContext) -> EventLoopFuture<Envoy_Service_Health_V3_HealthCheckSpecifier>
}

extension Envoy_Service_Health_V3_HealthDiscoveryServiceProvider {
  public var serviceName: String { return "envoy.service.health.v3.HealthDiscoveryService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: String, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "StreamHealthCheck":
      return BidirectionalStreamingCallHandler(callHandlerContext: callHandlerContext) { context in
        return self.streamHealthCheck(context: context)
      }

    case "FetchHealthCheck":
      return UnaryCallHandler(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.fetchHealthCheck(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}


// Provides conformance to `GRPCPayload` for request and response messages
extension Envoy_Service_Health_V3_HealthCheckRequestOrEndpointHealthResponse: GRPCProtobufPayload {}
extension Envoy_Service_Health_V3_HealthCheckSpecifier: GRPCProtobufPayload {}

