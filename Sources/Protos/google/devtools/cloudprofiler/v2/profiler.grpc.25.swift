//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/devtools/cloudprofiler/v2/profiler.proto
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


/// Usage: instantiate Google_Devtools_Cloudprofiler_V2_ProfilerServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Devtools_Cloudprofiler_V2_ProfilerServiceClientProtocol: GRPCClient {
  func createProfile(
    _ request: Google_Devtools_Cloudprofiler_V2_CreateProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Cloudprofiler_V2_CreateProfileRequest, Google_Devtools_Cloudprofiler_V2_Profile>

  func createOfflineProfile(
    _ request: Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest, Google_Devtools_Cloudprofiler_V2_Profile>

  func updateProfile(
    _ request: Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest, Google_Devtools_Cloudprofiler_V2_Profile>

}

extension Google_Devtools_Cloudprofiler_V2_ProfilerServiceClientProtocol {

  /// CreateProfile creates a new profile resource in the online mode.
  ///
  /// The server ensures that the new profiles are created at a constant rate per
  /// deployment, so the creation request may hang for some time until the next
  /// profile session is available.
  ///
  /// The request may fail with ABORTED error if the creation is not available
  /// within ~1m, the response will indicate the duration of the backoff the
  /// client should take before attempting creating a profile again. The backoff
  /// duration is returned in google.rpc.RetryInfo extension on the response
  /// status. To a gRPC client, the extension will be return as a
  /// binary-serialized proto in the trailing metadata item named
  /// "google.rpc.retryinfo-bin".
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createProfile(
    _ request: Google_Devtools_Cloudprofiler_V2_CreateProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Cloudprofiler_V2_CreateProfileRequest, Google_Devtools_Cloudprofiler_V2_Profile> {
    return self.makeUnaryCall(
      path: "/google.devtools.cloudprofiler.v2.ProfilerService/CreateProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// CreateOfflineProfile creates a new profile resource in the offline mode.
  /// The client provides the profile to create along with the profile bytes, the
  /// server records it.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateOfflineProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createOfflineProfile(
    _ request: Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest, Google_Devtools_Cloudprofiler_V2_Profile> {
    return self.makeUnaryCall(
      path: "/google.devtools.cloudprofiler.v2.ProfilerService/CreateOfflineProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// UpdateProfile updates the profile bytes and labels on the profile resource
  /// created in the online mode. Updating the bytes for profiles created in the
  /// offline mode is currently not supported: the profile content must be
  /// provided at the time of the profile creation.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateProfile.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateProfile(
    _ request: Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest, Google_Devtools_Cloudprofiler_V2_Profile> {
    return self.makeUnaryCall(
      path: "/google.devtools.cloudprofiler.v2.ProfilerService/UpdateProfile",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Devtools_Cloudprofiler_V2_ProfilerServiceClient: Google_Devtools_Cloudprofiler_V2_ProfilerServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.devtools.cloudprofiler.v2.ProfilerService service.
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
public protocol Google_Devtools_Cloudprofiler_V2_ProfilerServiceProvider: CallHandlerProvider {
  /// CreateProfile creates a new profile resource in the online mode.
  ///
  /// The server ensures that the new profiles are created at a constant rate per
  /// deployment, so the creation request may hang for some time until the next
  /// profile session is available.
  ///
  /// The request may fail with ABORTED error if the creation is not available
  /// within ~1m, the response will indicate the duration of the backoff the
  /// client should take before attempting creating a profile again. The backoff
  /// duration is returned in google.rpc.RetryInfo extension on the response
  /// status. To a gRPC client, the extension will be return as a
  /// binary-serialized proto in the trailing metadata item named
  /// "google.rpc.retryinfo-bin".
  func createProfile(request: Google_Devtools_Cloudprofiler_V2_CreateProfileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Cloudprofiler_V2_Profile>
  /// CreateOfflineProfile creates a new profile resource in the offline mode.
  /// The client provides the profile to create along with the profile bytes, the
  /// server records it.
  func createOfflineProfile(request: Google_Devtools_Cloudprofiler_V2_CreateOfflineProfileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Cloudprofiler_V2_Profile>
  /// UpdateProfile updates the profile bytes and labels on the profile resource
  /// created in the online mode. Updating the bytes for profiles created in the
  /// offline mode is currently not supported: the profile content must be
  /// provided at the time of the profile creation.
  func updateProfile(request: Google_Devtools_Cloudprofiler_V2_UpdateProfileRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Cloudprofiler_V2_Profile>
}

extension Google_Devtools_Cloudprofiler_V2_ProfilerServiceProvider {
  public var serviceName: Substring { return "google.devtools.cloudprofiler.v2.ProfilerService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateProfile":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createProfile(request: request, context: context)
        }
      }

    case "CreateOfflineProfile":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createOfflineProfile(request: request, context: context)
        }
      }

    case "UpdateProfile":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateProfile(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

