//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/binaryauthorization/v1beta1/service.proto
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


/// Usage: instantiate Google_Cloud_Binaryauthorization_V1beta1_BinauthzManagementServiceV1Beta1Client, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Binaryauthorization_V1beta1_BinauthzManagementServiceV1Beta1ClientProtocol: GRPCClient {
  func getPolicy(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest, Google_Cloud_Binaryauthorization_V1beta1_Policy>

  func updatePolicy(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest, Google_Cloud_Binaryauthorization_V1beta1_Policy>

  func createAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest, Google_Cloud_Binaryauthorization_V1beta1_Attestor>

  func getAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest, Google_Cloud_Binaryauthorization_V1beta1_Attestor>

  func updateAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest, Google_Cloud_Binaryauthorization_V1beta1_Attestor>

  func listAttestors(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest, Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsResponse>

  func deleteAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest, SwiftProtobuf.Google_Protobuf_Empty>

}

extension Google_Cloud_Binaryauthorization_V1beta1_BinauthzManagementServiceV1Beta1ClientProtocol {

  /// A [policy][google.cloud.binaryauthorization.v1beta1.Policy] specifies the [attestors][google.cloud.binaryauthorization.v1beta1.Attestor] that must attest to
  /// a container image, before the project is allowed to deploy that
  /// image. There is at most one policy per project. All image admission
  /// requests are permitted if a project has no policy.
  ///
  /// Gets the [policy][google.cloud.binaryauthorization.v1beta1.Policy] for this project. Returns a default
  /// [policy][google.cloud.binaryauthorization.v1beta1.Policy] if the project does not have one.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPolicy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPolicy(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest, Google_Cloud_Binaryauthorization_V1beta1_Policy> {
    return self.makeUnaryCall(
      path: "/google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1/GetPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates or updates a project's [policy][google.cloud.binaryauthorization.v1beta1.Policy], and returns a copy of the
  /// new [policy][google.cloud.binaryauthorization.v1beta1.Policy]. A policy is always updated as a whole, to avoid race
  /// conditions with concurrent policy enforcement (or management!)
  /// requests. Returns NOT_FOUND if the project does not exist, INVALID_ARGUMENT
  /// if the request is malformed.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdatePolicy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updatePolicy(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest, Google_Cloud_Binaryauthorization_V1beta1_Policy> {
    return self.makeUnaryCall(
      path: "/google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1/UpdatePolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor], and returns a copy of the new
  /// [attestor][google.cloud.binaryauthorization.v1beta1.Attestor]. Returns NOT_FOUND if the project does not exist,
  /// INVALID_ARGUMENT if the request is malformed, ALREADY_EXISTS if the
  /// [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] already exists.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateAttestor.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest, Google_Cloud_Binaryauthorization_V1beta1_Attestor> {
    return self.makeUnaryCall(
      path: "/google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1/CreateAttestor",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor].
  /// Returns NOT_FOUND if the [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetAttestor.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest, Google_Cloud_Binaryauthorization_V1beta1_Attestor> {
    return self.makeUnaryCall(
      path: "/google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1/GetAttestor",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor].
  /// Returns NOT_FOUND if the [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateAttestor.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest, Google_Cloud_Binaryauthorization_V1beta1_Attestor> {
    return self.makeUnaryCall(
      path: "/google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1/UpdateAttestor",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists [attestors][google.cloud.binaryauthorization.v1beta1.Attestor].
  /// Returns INVALID_ARGUMENT if the project does not exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListAttestors.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listAttestors(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest, Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1/ListAttestors",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor]. Returns NOT_FOUND if the
  /// [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteAttestor.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteAttestor(
    _ request: Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1/DeleteAttestor",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Binaryauthorization_V1beta1_BinauthzManagementServiceV1Beta1Client: Google_Cloud_Binaryauthorization_V1beta1_BinauthzManagementServiceV1Beta1ClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1 service.
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
public protocol Google_Cloud_Binaryauthorization_V1beta1_BinauthzManagementServiceV1Beta1Provider: CallHandlerProvider {
  /// A [policy][google.cloud.binaryauthorization.v1beta1.Policy] specifies the [attestors][google.cloud.binaryauthorization.v1beta1.Attestor] that must attest to
  /// a container image, before the project is allowed to deploy that
  /// image. There is at most one policy per project. All image admission
  /// requests are permitted if a project has no policy.
  ///
  /// Gets the [policy][google.cloud.binaryauthorization.v1beta1.Policy] for this project. Returns a default
  /// [policy][google.cloud.binaryauthorization.v1beta1.Policy] if the project does not have one.
  func getPolicy(request: Google_Cloud_Binaryauthorization_V1beta1_GetPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Binaryauthorization_V1beta1_Policy>
  /// Creates or updates a project's [policy][google.cloud.binaryauthorization.v1beta1.Policy], and returns a copy of the
  /// new [policy][google.cloud.binaryauthorization.v1beta1.Policy]. A policy is always updated as a whole, to avoid race
  /// conditions with concurrent policy enforcement (or management!)
  /// requests. Returns NOT_FOUND if the project does not exist, INVALID_ARGUMENT
  /// if the request is malformed.
  func updatePolicy(request: Google_Cloud_Binaryauthorization_V1beta1_UpdatePolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Binaryauthorization_V1beta1_Policy>
  /// Creates an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor], and returns a copy of the new
  /// [attestor][google.cloud.binaryauthorization.v1beta1.Attestor]. Returns NOT_FOUND if the project does not exist,
  /// INVALID_ARGUMENT if the request is malformed, ALREADY_EXISTS if the
  /// [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] already exists.
  func createAttestor(request: Google_Cloud_Binaryauthorization_V1beta1_CreateAttestorRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Binaryauthorization_V1beta1_Attestor>
  /// Gets an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor].
  /// Returns NOT_FOUND if the [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
  func getAttestor(request: Google_Cloud_Binaryauthorization_V1beta1_GetAttestorRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Binaryauthorization_V1beta1_Attestor>
  /// Updates an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor].
  /// Returns NOT_FOUND if the [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
  func updateAttestor(request: Google_Cloud_Binaryauthorization_V1beta1_UpdateAttestorRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Binaryauthorization_V1beta1_Attestor>
  /// Lists [attestors][google.cloud.binaryauthorization.v1beta1.Attestor].
  /// Returns INVALID_ARGUMENT if the project does not exist.
  func listAttestors(request: Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Binaryauthorization_V1beta1_ListAttestorsResponse>
  /// Deletes an [attestor][google.cloud.binaryauthorization.v1beta1.Attestor]. Returns NOT_FOUND if the
  /// [attestor][google.cloud.binaryauthorization.v1beta1.Attestor] does not exist.
  func deleteAttestor(request: Google_Cloud_Binaryauthorization_V1beta1_DeleteAttestorRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
}

extension Google_Cloud_Binaryauthorization_V1beta1_BinauthzManagementServiceV1Beta1Provider {
  public var serviceName: Substring { return "google.cloud.binaryauthorization.v1beta1.BinauthzManagementServiceV1Beta1" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "GetPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getPolicy(request: request, context: context)
        }
      }

    case "UpdatePolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updatePolicy(request: request, context: context)
        }
      }

    case "CreateAttestor":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createAttestor(request: request, context: context)
        }
      }

    case "GetAttestor":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getAttestor(request: request, context: context)
        }
      }

    case "UpdateAttestor":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateAttestor(request: request, context: context)
        }
      }

    case "ListAttestors":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listAttestors(request: request, context: context)
        }
      }

    case "DeleteAttestor":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteAttestor(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

