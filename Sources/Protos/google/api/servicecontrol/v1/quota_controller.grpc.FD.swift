//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/api/servicecontrol/v1/quota_controller.proto
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


/// Usage: instantiate Google_Api_Servicecontrol_V1_QuotaControllerClient, then call methods of this protocol to make API calls.
public protocol Google_Api_Servicecontrol_V1_QuotaControllerClientProtocol: GRPCClient {
  func allocateQuota(
    _ request: Google_Api_Servicecontrol_V1_AllocateQuotaRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Api_Servicecontrol_V1_AllocateQuotaRequest, Google_Api_Servicecontrol_V1_AllocateQuotaResponse>

}

extension Google_Api_Servicecontrol_V1_QuotaControllerClientProtocol {

  /// Attempts to allocate quota for the specified consumer. It should be called
  /// before the operation is executed.
  ///
  /// This method requires the `servicemanagement.services.quota`
  /// permission on the specified service. For more information, see
  /// [Cloud IAM](https://cloud.google.com/iam).
  ///
  /// **NOTE:** The client **must** fail-open on server errors `INTERNAL`,
  /// `UNKNOWN`, `DEADLINE_EXCEEDED`, and `UNAVAILABLE`. To ensure system
  /// reliability, the server may inject these errors to prohibit any hard
  /// dependency on the quota functionality.
  ///
  /// - Parameters:
  ///   - request: Request to send to AllocateQuota.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func allocateQuota(
    _ request: Google_Api_Servicecontrol_V1_AllocateQuotaRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Api_Servicecontrol_V1_AllocateQuotaRequest, Google_Api_Servicecontrol_V1_AllocateQuotaResponse> {
    return self.makeUnaryCall(
      path: "/google.api.servicecontrol.v1.QuotaController/AllocateQuota",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Api_Servicecontrol_V1_QuotaControllerClient: Google_Api_Servicecontrol_V1_QuotaControllerClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.api.servicecontrol.v1.QuotaController service.
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
public protocol Google_Api_Servicecontrol_V1_QuotaControllerProvider: CallHandlerProvider {
  /// Attempts to allocate quota for the specified consumer. It should be called
  /// before the operation is executed.
  ///
  /// This method requires the `servicemanagement.services.quota`
  /// permission on the specified service. For more information, see
  /// [Cloud IAM](https://cloud.google.com/iam).
  ///
  /// **NOTE:** The client **must** fail-open on server errors `INTERNAL`,
  /// `UNKNOWN`, `DEADLINE_EXCEEDED`, and `UNAVAILABLE`. To ensure system
  /// reliability, the server may inject these errors to prohibit any hard
  /// dependency on the quota functionality.
  func allocateQuota(request: Google_Api_Servicecontrol_V1_AllocateQuotaRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Api_Servicecontrol_V1_AllocateQuotaResponse>
}

extension Google_Api_Servicecontrol_V1_QuotaControllerProvider {
  public var serviceName: Substring { return "google.api.servicecontrol.v1.QuotaController" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "AllocateQuota":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.allocateQuota(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

