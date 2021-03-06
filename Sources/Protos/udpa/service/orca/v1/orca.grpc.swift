//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: udpa/service/orca/v1/orca.proto
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


/// Usage: instantiate Udpa_Service_Orca_V1_OpenRcaServiceClient, then call methods of this protocol to make API calls.
public protocol Udpa_Service_Orca_V1_OpenRcaServiceClientProtocol: GRPCClient {
  func streamCoreMetrics(
    _ request: Udpa_Service_Orca_V1_OrcaLoadReportRequest,
    callOptions: CallOptions?,
    handler: @escaping (Udpa_Data_Orca_V1_OrcaLoadReport) -> Void
  ) -> ServerStreamingCall<Udpa_Service_Orca_V1_OrcaLoadReportRequest, Udpa_Data_Orca_V1_OrcaLoadReport>

}

extension Udpa_Service_Orca_V1_OpenRcaServiceClientProtocol {

  /// Server streaming call to StreamCoreMetrics
  ///
  /// - Parameters:
  ///   - request: Request to send to StreamCoreMetrics.
  ///   - callOptions: Call options.
  ///   - handler: A closure called when each response is received from the server.
  /// - Returns: A `ServerStreamingCall` with futures for the metadata and status.
  public func streamCoreMetrics(
    _ request: Udpa_Service_Orca_V1_OrcaLoadReportRequest,
    callOptions: CallOptions? = nil,
    handler: @escaping (Udpa_Data_Orca_V1_OrcaLoadReport) -> Void
  ) -> ServerStreamingCall<Udpa_Service_Orca_V1_OrcaLoadReportRequest, Udpa_Data_Orca_V1_OrcaLoadReport> {
    return self.makeServerStreamingCall(
      path: "/udpa.service.orca.v1.OpenRcaService/StreamCoreMetrics",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      handler: handler
    )
  }
}

public final class Udpa_Service_Orca_V1_OpenRcaServiceClient: Udpa_Service_Orca_V1_OpenRcaServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the udpa.service.orca.v1.OpenRcaService service.
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
public protocol Udpa_Service_Orca_V1_OpenRcaServiceProvider: CallHandlerProvider {
  func streamCoreMetrics(request: Udpa_Service_Orca_V1_OrcaLoadReportRequest, context: StreamingResponseCallContext<Udpa_Data_Orca_V1_OrcaLoadReport>) -> EventLoopFuture<GRPCStatus>
}

extension Udpa_Service_Orca_V1_OpenRcaServiceProvider {
  public var serviceName: Substring { return "udpa.service.orca.v1.OpenRcaService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "StreamCoreMetrics":
      return CallHandlerFactory.makeServerStreaming(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.streamCoreMetrics(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

