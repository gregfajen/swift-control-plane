//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/monitoring/v3/service_service.proto
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


/// Usage: instantiate Google_Monitoring_V3_ServiceMonitoringServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Monitoring_V3_ServiceMonitoringServiceClientProtocol: GRPCClient {
  func createService(
    _ request: Google_Monitoring_V3_CreateServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_CreateServiceRequest, Google_Monitoring_V3_Service>

  func getService(
    _ request: Google_Monitoring_V3_GetServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_GetServiceRequest, Google_Monitoring_V3_Service>

  func listServices(
    _ request: Google_Monitoring_V3_ListServicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_ListServicesRequest, Google_Monitoring_V3_ListServicesResponse>

  func updateService(
    _ request: Google_Monitoring_V3_UpdateServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_UpdateServiceRequest, Google_Monitoring_V3_Service>

  func deleteService(
    _ request: Google_Monitoring_V3_DeleteServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_DeleteServiceRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createServiceLevelObjective(
    _ request: Google_Monitoring_V3_CreateServiceLevelObjectiveRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_CreateServiceLevelObjectiveRequest, Google_Monitoring_V3_ServiceLevelObjective>

  func getServiceLevelObjective(
    _ request: Google_Monitoring_V3_GetServiceLevelObjectiveRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_GetServiceLevelObjectiveRequest, Google_Monitoring_V3_ServiceLevelObjective>

  func listServiceLevelObjectives(
    _ request: Google_Monitoring_V3_ListServiceLevelObjectivesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_ListServiceLevelObjectivesRequest, Google_Monitoring_V3_ListServiceLevelObjectivesResponse>

  func updateServiceLevelObjective(
    _ request: Google_Monitoring_V3_UpdateServiceLevelObjectiveRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_UpdateServiceLevelObjectiveRequest, Google_Monitoring_V3_ServiceLevelObjective>

  func deleteServiceLevelObjective(
    _ request: Google_Monitoring_V3_DeleteServiceLevelObjectiveRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Monitoring_V3_DeleteServiceLevelObjectiveRequest, SwiftProtobuf.Google_Protobuf_Empty>

}

extension Google_Monitoring_V3_ServiceMonitoringServiceClientProtocol {

  /// Create a `Service`.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createService(
    _ request: Google_Monitoring_V3_CreateServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_CreateServiceRequest, Google_Monitoring_V3_Service> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/CreateService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Get the named `Service`.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getService(
    _ request: Google_Monitoring_V3_GetServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_GetServiceRequest, Google_Monitoring_V3_Service> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/GetService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// List `Service`s for this workspace.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListServices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listServices(
    _ request: Google_Monitoring_V3_ListServicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_ListServicesRequest, Google_Monitoring_V3_ListServicesResponse> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/ListServices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Update this `Service`.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateService(
    _ request: Google_Monitoring_V3_UpdateServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_UpdateServiceRequest, Google_Monitoring_V3_Service> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/UpdateService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Soft delete this `Service`.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteService(
    _ request: Google_Monitoring_V3_DeleteServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_DeleteServiceRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/DeleteService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Create a `ServiceLevelObjective` for the given `Service`.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateServiceLevelObjective.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createServiceLevelObjective(
    _ request: Google_Monitoring_V3_CreateServiceLevelObjectiveRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_CreateServiceLevelObjectiveRequest, Google_Monitoring_V3_ServiceLevelObjective> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/CreateServiceLevelObjective",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Get a `ServiceLevelObjective` by name.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetServiceLevelObjective.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getServiceLevelObjective(
    _ request: Google_Monitoring_V3_GetServiceLevelObjectiveRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_GetServiceLevelObjectiveRequest, Google_Monitoring_V3_ServiceLevelObjective> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/GetServiceLevelObjective",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// List the `ServiceLevelObjective`s for the given `Service`.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListServiceLevelObjectives.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listServiceLevelObjectives(
    _ request: Google_Monitoring_V3_ListServiceLevelObjectivesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_ListServiceLevelObjectivesRequest, Google_Monitoring_V3_ListServiceLevelObjectivesResponse> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/ListServiceLevelObjectives",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Update the given `ServiceLevelObjective`.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateServiceLevelObjective.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateServiceLevelObjective(
    _ request: Google_Monitoring_V3_UpdateServiceLevelObjectiveRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_UpdateServiceLevelObjectiveRequest, Google_Monitoring_V3_ServiceLevelObjective> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/UpdateServiceLevelObjective",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Delete the given `ServiceLevelObjective`.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteServiceLevelObjective.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteServiceLevelObjective(
    _ request: Google_Monitoring_V3_DeleteServiceLevelObjectiveRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Monitoring_V3_DeleteServiceLevelObjectiveRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.monitoring.v3.ServiceMonitoringService/DeleteServiceLevelObjective",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Monitoring_V3_ServiceMonitoringServiceClient: Google_Monitoring_V3_ServiceMonitoringServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.monitoring.v3.ServiceMonitoringService service.
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
public protocol Google_Monitoring_V3_ServiceMonitoringServiceProvider: CallHandlerProvider {
  /// Create a `Service`.
  func createService(request: Google_Monitoring_V3_CreateServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_Service>
  /// Get the named `Service`.
  func getService(request: Google_Monitoring_V3_GetServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_Service>
  /// List `Service`s for this workspace.
  func listServices(request: Google_Monitoring_V3_ListServicesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_ListServicesResponse>
  /// Update this `Service`.
  func updateService(request: Google_Monitoring_V3_UpdateServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_Service>
  /// Soft delete this `Service`.
  func deleteService(request: Google_Monitoring_V3_DeleteServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Create a `ServiceLevelObjective` for the given `Service`.
  func createServiceLevelObjective(request: Google_Monitoring_V3_CreateServiceLevelObjectiveRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_ServiceLevelObjective>
  /// Get a `ServiceLevelObjective` by name.
  func getServiceLevelObjective(request: Google_Monitoring_V3_GetServiceLevelObjectiveRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_ServiceLevelObjective>
  /// List the `ServiceLevelObjective`s for the given `Service`.
  func listServiceLevelObjectives(request: Google_Monitoring_V3_ListServiceLevelObjectivesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_ListServiceLevelObjectivesResponse>
  /// Update the given `ServiceLevelObjective`.
  func updateServiceLevelObjective(request: Google_Monitoring_V3_UpdateServiceLevelObjectiveRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Monitoring_V3_ServiceLevelObjective>
  /// Delete the given `ServiceLevelObjective`.
  func deleteServiceLevelObjective(request: Google_Monitoring_V3_DeleteServiceLevelObjectiveRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Google_Monitoring_V3_ServiceMonitoringServiceProvider {
  public var serviceName: Substring { return "google.monitoring.v3.ServiceMonitoringService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateService":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createService(request: request, context: context)
        }
      }

    case "GetService":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getService(request: request, context: context)
        }
      }

    case "ListServices":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listServices(request: request, context: context)
        }
      }

    case "UpdateService":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateService(request: request, context: context)
        }
      }

    case "DeleteService":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteService(request: request, context: context)
        }
      }

    case "CreateServiceLevelObjective":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createServiceLevelObjective(request: request, context: context)
        }
      }

    case "GetServiceLevelObjective":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getServiceLevelObjective(request: request, context: context)
        }
      }

    case "ListServiceLevelObjectives":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listServiceLevelObjectives(request: request, context: context)
        }
      }

    case "UpdateServiceLevelObjective":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateServiceLevelObjective(request: request, context: context)
        }
      }

    case "DeleteServiceLevelObjective":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteServiceLevelObjective(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

