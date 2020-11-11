//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/talent/v4beta1/tenant_service.proto
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


/// Usage: instantiate Google_Cloud_Talent_V4beta1_TenantServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Talent_V4beta1_TenantServiceClientProtocol: GRPCClient {
  func createTenant(
    _ request: Google_Cloud_Talent_V4beta1_CreateTenantRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_CreateTenantRequest, Google_Cloud_Talent_V4beta1_Tenant>

  func getTenant(
    _ request: Google_Cloud_Talent_V4beta1_GetTenantRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_GetTenantRequest, Google_Cloud_Talent_V4beta1_Tenant>

  func updateTenant(
    _ request: Google_Cloud_Talent_V4beta1_UpdateTenantRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_UpdateTenantRequest, Google_Cloud_Talent_V4beta1_Tenant>

  func deleteTenant(
    _ request: Google_Cloud_Talent_V4beta1_DeleteTenantRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_DeleteTenantRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listTenants(
    _ request: Google_Cloud_Talent_V4beta1_ListTenantsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_ListTenantsRequest, Google_Cloud_Talent_V4beta1_ListTenantsResponse>

}

extension Google_Cloud_Talent_V4beta1_TenantServiceClientProtocol {

  /// Creates a new tenant entity.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateTenant.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createTenant(
    _ request: Google_Cloud_Talent_V4beta1_CreateTenantRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_CreateTenantRequest, Google_Cloud_Talent_V4beta1_Tenant> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.TenantService/CreateTenant",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves specified tenant.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTenant.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTenant(
    _ request: Google_Cloud_Talent_V4beta1_GetTenantRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_GetTenantRequest, Google_Cloud_Talent_V4beta1_Tenant> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.TenantService/GetTenant",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates specified tenant.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateTenant.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateTenant(
    _ request: Google_Cloud_Talent_V4beta1_UpdateTenantRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_UpdateTenantRequest, Google_Cloud_Talent_V4beta1_Tenant> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.TenantService/UpdateTenant",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes specified tenant.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteTenant.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteTenant(
    _ request: Google_Cloud_Talent_V4beta1_DeleteTenantRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_DeleteTenantRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.TenantService/DeleteTenant",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all tenants associated with the project.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListTenants.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listTenants(
    _ request: Google_Cloud_Talent_V4beta1_ListTenantsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Talent_V4beta1_ListTenantsRequest, Google_Cloud_Talent_V4beta1_ListTenantsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.talent.v4beta1.TenantService/ListTenants",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Talent_V4beta1_TenantServiceClient: Google_Cloud_Talent_V4beta1_TenantServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.talent.v4beta1.TenantService service.
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
public protocol Google_Cloud_Talent_V4beta1_TenantServiceProvider: CallHandlerProvider {
  /// Creates a new tenant entity.
  func createTenant(request: Google_Cloud_Talent_V4beta1_CreateTenantRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_Tenant>
  /// Retrieves specified tenant.
  func getTenant(request: Google_Cloud_Talent_V4beta1_GetTenantRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_Tenant>
  /// Updates specified tenant.
  func updateTenant(request: Google_Cloud_Talent_V4beta1_UpdateTenantRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_Tenant>
  /// Deletes specified tenant.
  func deleteTenant(request: Google_Cloud_Talent_V4beta1_DeleteTenantRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Lists all tenants associated with the project.
  func listTenants(request: Google_Cloud_Talent_V4beta1_ListTenantsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Talent_V4beta1_ListTenantsResponse>
}

extension Google_Cloud_Talent_V4beta1_TenantServiceProvider {
  public var serviceName: Substring { return "google.cloud.talent.v4beta1.TenantService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateTenant":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createTenant(request: request, context: context)
        }
      }

    case "GetTenant":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getTenant(request: request, context: context)
        }
      }

    case "UpdateTenant":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateTenant(request: request, context: context)
        }
      }

    case "DeleteTenant":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteTenant(request: request, context: context)
        }
      }

    case "ListTenants":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listTenants(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
