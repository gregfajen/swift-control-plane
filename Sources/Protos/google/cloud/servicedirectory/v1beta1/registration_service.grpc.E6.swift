//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/servicedirectory/v1beta1/registration_service.proto
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


/// Usage: instantiate Google_Cloud_Servicedirectory_V1beta1_RegistrationServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Servicedirectory_V1beta1_RegistrationServiceClientProtocol: GRPCClient {
  func createNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_CreateNamespaceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_CreateNamespaceRequest, Google_Cloud_Servicedirectory_V1beta1_Namespace>

  func listNamespaces(
    _ request: Google_Cloud_Servicedirectory_V1beta1_ListNamespacesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_ListNamespacesRequest, Google_Cloud_Servicedirectory_V1beta1_ListNamespacesResponse>

  func getNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_GetNamespaceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_GetNamespaceRequest, Google_Cloud_Servicedirectory_V1beta1_Namespace>

  func updateNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_UpdateNamespaceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_UpdateNamespaceRequest, Google_Cloud_Servicedirectory_V1beta1_Namespace>

  func deleteNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_DeleteNamespaceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_DeleteNamespaceRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_CreateServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_CreateServiceRequest, Google_Cloud_Servicedirectory_V1beta1_Service>

  func listServices(
    _ request: Google_Cloud_Servicedirectory_V1beta1_ListServicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_ListServicesRequest, Google_Cloud_Servicedirectory_V1beta1_ListServicesResponse>

  func getService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_GetServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_GetServiceRequest, Google_Cloud_Servicedirectory_V1beta1_Service>

  func updateService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_UpdateServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_UpdateServiceRequest, Google_Cloud_Servicedirectory_V1beta1_Service>

  func deleteService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_DeleteServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_DeleteServiceRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func createEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_CreateEndpointRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_CreateEndpointRequest, Google_Cloud_Servicedirectory_V1beta1_Endpoint>

  func listEndpoints(
    _ request: Google_Cloud_Servicedirectory_V1beta1_ListEndpointsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_ListEndpointsRequest, Google_Cloud_Servicedirectory_V1beta1_ListEndpointsResponse>

  func getEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_GetEndpointRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_GetEndpointRequest, Google_Cloud_Servicedirectory_V1beta1_Endpoint>

  func updateEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_UpdateEndpointRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_UpdateEndpointRequest, Google_Cloud_Servicedirectory_V1beta1_Endpoint>

  func deleteEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_DeleteEndpointRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_DeleteEndpointRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func getIamPolicy(
    _ request: Google_Iam_V1_GetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_GetIamPolicyRequest, Google_Iam_V1_Policy>

  func setIamPolicy(
    _ request: Google_Iam_V1_SetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_SetIamPolicyRequest, Google_Iam_V1_Policy>

  func testIamPermissions(
    _ request: Google_Iam_V1_TestIamPermissionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_TestIamPermissionsRequest, Google_Iam_V1_TestIamPermissionsResponse>

}

extension Google_Cloud_Servicedirectory_V1beta1_RegistrationServiceClientProtocol {

  /// Creates a namespace, and returns the new Namespace.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateNamespace.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_CreateNamespaceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_CreateNamespaceRequest, Google_Cloud_Servicedirectory_V1beta1_Namespace> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/CreateNamespace",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all namespaces.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListNamespaces.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listNamespaces(
    _ request: Google_Cloud_Servicedirectory_V1beta1_ListNamespacesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_ListNamespacesRequest, Google_Cloud_Servicedirectory_V1beta1_ListNamespacesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/ListNamespaces",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a namespace.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetNamespace.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_GetNamespaceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_GetNamespaceRequest, Google_Cloud_Servicedirectory_V1beta1_Namespace> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/GetNamespace",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a namespace.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateNamespace.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_UpdateNamespaceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_UpdateNamespaceRequest, Google_Cloud_Servicedirectory_V1beta1_Namespace> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/UpdateNamespace",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a namespace. This also deletes all services and endpoints in
  /// the namespace.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteNamespace.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteNamespace(
    _ request: Google_Cloud_Servicedirectory_V1beta1_DeleteNamespaceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_DeleteNamespaceRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/DeleteNamespace",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a service, and returns the new Service.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_CreateServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_CreateServiceRequest, Google_Cloud_Servicedirectory_V1beta1_Service> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/CreateService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all services belonging to a namespace.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListServices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listServices(
    _ request: Google_Cloud_Servicedirectory_V1beta1_ListServicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_ListServicesRequest, Google_Cloud_Servicedirectory_V1beta1_ListServicesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/ListServices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a service.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_GetServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_GetServiceRequest, Google_Cloud_Servicedirectory_V1beta1_Service> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/GetService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a service.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_UpdateServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_UpdateServiceRequest, Google_Cloud_Servicedirectory_V1beta1_Service> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/UpdateService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a service. This also deletes all endpoints associated with
  /// the service.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteService(
    _ request: Google_Cloud_Servicedirectory_V1beta1_DeleteServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_DeleteServiceRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/DeleteService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a endpoint, and returns the new Endpoint.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateEndpoint.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_CreateEndpointRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_CreateEndpointRequest, Google_Cloud_Servicedirectory_V1beta1_Endpoint> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/CreateEndpoint",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all endpoints.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListEndpoints.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listEndpoints(
    _ request: Google_Cloud_Servicedirectory_V1beta1_ListEndpointsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_ListEndpointsRequest, Google_Cloud_Servicedirectory_V1beta1_ListEndpointsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/ListEndpoints",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a endpoint.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetEndpoint.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_GetEndpointRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_GetEndpointRequest, Google_Cloud_Servicedirectory_V1beta1_Endpoint> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/GetEndpoint",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a endpoint.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateEndpoint.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_UpdateEndpointRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_UpdateEndpointRequest, Google_Cloud_Servicedirectory_V1beta1_Endpoint> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/UpdateEndpoint",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a endpoint.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteEndpoint.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteEndpoint(
    _ request: Google_Cloud_Servicedirectory_V1beta1_DeleteEndpointRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Servicedirectory_V1beta1_DeleteEndpointRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/DeleteEndpoint",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the IAM Policy for a resource (namespace or service only).
  ///
  /// - Parameters:
  ///   - request: Request to send to GetIamPolicy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getIamPolicy(
    _ request: Google_Iam_V1_GetIamPolicyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_V1_GetIamPolicyRequest, Google_Iam_V1_Policy> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the IAM Policy for a resource (namespace or service only).
  ///
  /// - Parameters:
  ///   - request: Request to send to SetIamPolicy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func setIamPolicy(
    _ request: Google_Iam_V1_SetIamPolicyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_V1_SetIamPolicyRequest, Google_Iam_V1_Policy> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Tests IAM permissions for a resource (namespace or service only).
  ///
  /// - Parameters:
  ///   - request: Request to send to TestIamPermissions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func testIamPermissions(
    _ request: Google_Iam_V1_TestIamPermissionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_V1_TestIamPermissionsRequest, Google_Iam_V1_TestIamPermissionsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.servicedirectory.v1beta1.RegistrationService/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Servicedirectory_V1beta1_RegistrationServiceClient: Google_Cloud_Servicedirectory_V1beta1_RegistrationServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.servicedirectory.v1beta1.RegistrationService service.
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
public protocol Google_Cloud_Servicedirectory_V1beta1_RegistrationServiceProvider: CallHandlerProvider {
  /// Creates a namespace, and returns the new Namespace.
  func createNamespace(request: Google_Cloud_Servicedirectory_V1beta1_CreateNamespaceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Namespace>
  /// Lists all namespaces.
  func listNamespaces(request: Google_Cloud_Servicedirectory_V1beta1_ListNamespacesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_ListNamespacesResponse>
  /// Gets a namespace.
  func getNamespace(request: Google_Cloud_Servicedirectory_V1beta1_GetNamespaceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Namespace>
  /// Updates a namespace.
  func updateNamespace(request: Google_Cloud_Servicedirectory_V1beta1_UpdateNamespaceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Namespace>
  /// Deletes a namespace. This also deletes all services and endpoints in
  /// the namespace.
  func deleteNamespace(request: Google_Cloud_Servicedirectory_V1beta1_DeleteNamespaceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Creates a service, and returns the new Service.
  func createService(request: Google_Cloud_Servicedirectory_V1beta1_CreateServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Service>
  /// Lists all services belonging to a namespace.
  func listServices(request: Google_Cloud_Servicedirectory_V1beta1_ListServicesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_ListServicesResponse>
  /// Gets a service.
  func getService(request: Google_Cloud_Servicedirectory_V1beta1_GetServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Service>
  /// Updates a service.
  func updateService(request: Google_Cloud_Servicedirectory_V1beta1_UpdateServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Service>
  /// Deletes a service. This also deletes all endpoints associated with
  /// the service.
  func deleteService(request: Google_Cloud_Servicedirectory_V1beta1_DeleteServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Creates a endpoint, and returns the new Endpoint.
  func createEndpoint(request: Google_Cloud_Servicedirectory_V1beta1_CreateEndpointRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Endpoint>
  /// Lists all endpoints.
  func listEndpoints(request: Google_Cloud_Servicedirectory_V1beta1_ListEndpointsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_ListEndpointsResponse>
  /// Gets a endpoint.
  func getEndpoint(request: Google_Cloud_Servicedirectory_V1beta1_GetEndpointRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Endpoint>
  /// Updates a endpoint.
  func updateEndpoint(request: Google_Cloud_Servicedirectory_V1beta1_UpdateEndpointRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Servicedirectory_V1beta1_Endpoint>
  /// Deletes a endpoint.
  func deleteEndpoint(request: Google_Cloud_Servicedirectory_V1beta1_DeleteEndpointRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Gets the IAM Policy for a resource (namespace or service only).
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Sets the IAM Policy for a resource (namespace or service only).
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Tests IAM permissions for a resource (namespace or service only).
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
}

extension Google_Cloud_Servicedirectory_V1beta1_RegistrationServiceProvider {
  public var serviceName: Substring { return "google.cloud.servicedirectory.v1beta1.RegistrationService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateNamespace":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createNamespace(request: request, context: context)
        }
      }

    case "ListNamespaces":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listNamespaces(request: request, context: context)
        }
      }

    case "GetNamespace":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getNamespace(request: request, context: context)
        }
      }

    case "UpdateNamespace":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateNamespace(request: request, context: context)
        }
      }

    case "DeleteNamespace":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteNamespace(request: request, context: context)
        }
      }

    case "CreateService":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createService(request: request, context: context)
        }
      }

    case "ListServices":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listServices(request: request, context: context)
        }
      }

    case "GetService":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getService(request: request, context: context)
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

    case "CreateEndpoint":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createEndpoint(request: request, context: context)
        }
      }

    case "ListEndpoints":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listEndpoints(request: request, context: context)
        }
      }

    case "GetEndpoint":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getEndpoint(request: request, context: context)
        }
      }

    case "UpdateEndpoint":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateEndpoint(request: request, context: context)
        }
      }

    case "DeleteEndpoint":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteEndpoint(request: request, context: context)
        }
      }

    case "GetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getIamPolicy(request: request, context: context)
        }
      }

    case "SetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setIamPolicy(request: request, context: context)
        }
      }

    case "TestIamPermissions":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.testIamPermissions(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

