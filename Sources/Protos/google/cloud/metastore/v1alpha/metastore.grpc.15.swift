//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/metastore/v1alpha/metastore.proto
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


/// Usage: instantiate Google_Cloud_Metastore_V1alpha_DataprocMetastoreClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Metastore_V1alpha_DataprocMetastoreClientProtocol: GRPCClient {
  func listServices(
    _ request: Google_Cloud_Metastore_V1alpha_ListServicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_ListServicesRequest, Google_Cloud_Metastore_V1alpha_ListServicesResponse>

  func getService(
    _ request: Google_Cloud_Metastore_V1alpha_GetServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_GetServiceRequest, Google_Cloud_Metastore_V1alpha_Service>

  func createService(
    _ request: Google_Cloud_Metastore_V1alpha_CreateServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_CreateServiceRequest, Google_Longrunning_Operation>

  func updateService(
    _ request: Google_Cloud_Metastore_V1alpha_UpdateServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_UpdateServiceRequest, Google_Longrunning_Operation>

  func deleteService(
    _ request: Google_Cloud_Metastore_V1alpha_DeleteServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_DeleteServiceRequest, Google_Longrunning_Operation>

  func listMetadataImports(
    _ request: Google_Cloud_Metastore_V1alpha_ListMetadataImportsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_ListMetadataImportsRequest, Google_Cloud_Metastore_V1alpha_ListMetadataImportsResponse>

  func getMetadataImport(
    _ request: Google_Cloud_Metastore_V1alpha_GetMetadataImportRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_GetMetadataImportRequest, Google_Cloud_Metastore_V1alpha_MetadataImport>

  func createMetadataImport(
    _ request: Google_Cloud_Metastore_V1alpha_CreateMetadataImportRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_CreateMetadataImportRequest, Google_Longrunning_Operation>

  func updateMetadataImport(
    _ request: Google_Cloud_Metastore_V1alpha_UpdateMetadataImportRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_UpdateMetadataImportRequest, Google_Longrunning_Operation>

}

extension Google_Cloud_Metastore_V1alpha_DataprocMetastoreClientProtocol {

  /// Lists services in a project and location.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListServices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listServices(
    _ request: Google_Cloud_Metastore_V1alpha_ListServicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_ListServicesRequest, Google_Cloud_Metastore_V1alpha_ListServicesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/ListServices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the details of a single service.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getService(
    _ request: Google_Cloud_Metastore_V1alpha_GetServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_GetServiceRequest, Google_Cloud_Metastore_V1alpha_Service> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/GetService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a metastore service in a project and location.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createService(
    _ request: Google_Cloud_Metastore_V1alpha_CreateServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_CreateServiceRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/CreateService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates the parameters of a single service.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateService(
    _ request: Google_Cloud_Metastore_V1alpha_UpdateServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_UpdateServiceRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/UpdateService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a single service.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteService.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteService(
    _ request: Google_Cloud_Metastore_V1alpha_DeleteServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_DeleteServiceRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/DeleteService",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists imports in a service.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListMetadataImports.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listMetadataImports(
    _ request: Google_Cloud_Metastore_V1alpha_ListMetadataImportsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_ListMetadataImportsRequest, Google_Cloud_Metastore_V1alpha_ListMetadataImportsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/ListMetadataImports",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets details of a single import.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetMetadataImport.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getMetadataImport(
    _ request: Google_Cloud_Metastore_V1alpha_GetMetadataImportRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_GetMetadataImportRequest, Google_Cloud_Metastore_V1alpha_MetadataImport> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/GetMetadataImport",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new MetadataImport in a given project and location.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateMetadataImport.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createMetadataImport(
    _ request: Google_Cloud_Metastore_V1alpha_CreateMetadataImportRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_CreateMetadataImportRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/CreateMetadataImport",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a single import.
  /// Only the description field of MetadataImport is supported to be updated.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateMetadataImport.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateMetadataImport(
    _ request: Google_Cloud_Metastore_V1alpha_UpdateMetadataImportRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Metastore_V1alpha_UpdateMetadataImportRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.metastore.v1alpha.DataprocMetastore/UpdateMetadataImport",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Metastore_V1alpha_DataprocMetastoreClient: Google_Cloud_Metastore_V1alpha_DataprocMetastoreClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.metastore.v1alpha.DataprocMetastore service.
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
public protocol Google_Cloud_Metastore_V1alpha_DataprocMetastoreProvider: CallHandlerProvider {
  /// Lists services in a project and location.
  func listServices(request: Google_Cloud_Metastore_V1alpha_ListServicesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Metastore_V1alpha_ListServicesResponse>
  /// Gets the details of a single service.
  func getService(request: Google_Cloud_Metastore_V1alpha_GetServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Metastore_V1alpha_Service>
  /// Creates a metastore service in a project and location.
  func createService(request: Google_Cloud_Metastore_V1alpha_CreateServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Updates the parameters of a single service.
  func updateService(request: Google_Cloud_Metastore_V1alpha_UpdateServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes a single service.
  func deleteService(request: Google_Cloud_Metastore_V1alpha_DeleteServiceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Lists imports in a service.
  func listMetadataImports(request: Google_Cloud_Metastore_V1alpha_ListMetadataImportsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Metastore_V1alpha_ListMetadataImportsResponse>
  /// Gets details of a single import.
  func getMetadataImport(request: Google_Cloud_Metastore_V1alpha_GetMetadataImportRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Metastore_V1alpha_MetadataImport>
  /// Creates a new MetadataImport in a given project and location.
  func createMetadataImport(request: Google_Cloud_Metastore_V1alpha_CreateMetadataImportRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Updates a single import.
  /// Only the description field of MetadataImport is supported to be updated.
  func updateMetadataImport(request: Google_Cloud_Metastore_V1alpha_UpdateMetadataImportRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
}

extension Google_Cloud_Metastore_V1alpha_DataprocMetastoreProvider {
  public var serviceName: Substring { return "google.cloud.metastore.v1alpha.DataprocMetastore" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
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

    case "CreateService":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createService(request: request, context: context)
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

    case "ListMetadataImports":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listMetadataImports(request: request, context: context)
        }
      }

    case "GetMetadataImport":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getMetadataImport(request: request, context: context)
        }
      }

    case "CreateMetadataImport":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createMetadataImport(request: request, context: context)
        }
      }

    case "UpdateMetadataImport":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateMetadataImport(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

