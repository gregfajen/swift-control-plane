//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/iam/credentials/v1/iamcredentials.proto
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


/// Usage: instantiate Google_Iam_Credentials_V1_IAMCredentialsClient, then call methods of this protocol to make API calls.
public protocol Google_Iam_Credentials_V1_IAMCredentialsClientProtocol: GRPCClient {
  func generateAccessToken(
    _ request: Google_Iam_Credentials_V1_GenerateAccessTokenRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Credentials_V1_GenerateAccessTokenRequest, Google_Iam_Credentials_V1_GenerateAccessTokenResponse>

  func generateIdToken(
    _ request: Google_Iam_Credentials_V1_GenerateIdTokenRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Credentials_V1_GenerateIdTokenRequest, Google_Iam_Credentials_V1_GenerateIdTokenResponse>

  func signBlob(
    _ request: Google_Iam_Credentials_V1_SignBlobRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Credentials_V1_SignBlobRequest, Google_Iam_Credentials_V1_SignBlobResponse>

  func signJwt(
    _ request: Google_Iam_Credentials_V1_SignJwtRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_Credentials_V1_SignJwtRequest, Google_Iam_Credentials_V1_SignJwtResponse>

}

extension Google_Iam_Credentials_V1_IAMCredentialsClientProtocol {

  /// Generates an OAuth 2.0 access token for a service account.
  ///
  /// - Parameters:
  ///   - request: Request to send to GenerateAccessToken.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func generateAccessToken(
    _ request: Google_Iam_Credentials_V1_GenerateAccessTokenRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Credentials_V1_GenerateAccessTokenRequest, Google_Iam_Credentials_V1_GenerateAccessTokenResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.credentials.v1.IAMCredentials/GenerateAccessToken",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Generates an OpenID Connect ID token for a service account.
  ///
  /// - Parameters:
  ///   - request: Request to send to GenerateIdToken.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func generateIdToken(
    _ request: Google_Iam_Credentials_V1_GenerateIdTokenRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Credentials_V1_GenerateIdTokenRequest, Google_Iam_Credentials_V1_GenerateIdTokenResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.credentials.v1.IAMCredentials/GenerateIdToken",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Signs a blob using a service account's system-managed private key.
  ///
  /// - Parameters:
  ///   - request: Request to send to SignBlob.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func signBlob(
    _ request: Google_Iam_Credentials_V1_SignBlobRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Credentials_V1_SignBlobRequest, Google_Iam_Credentials_V1_SignBlobResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.credentials.v1.IAMCredentials/SignBlob",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Signs a JWT using a service account's system-managed private key.
  ///
  /// - Parameters:
  ///   - request: Request to send to SignJwt.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func signJwt(
    _ request: Google_Iam_Credentials_V1_SignJwtRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Iam_Credentials_V1_SignJwtRequest, Google_Iam_Credentials_V1_SignJwtResponse> {
    return self.makeUnaryCall(
      path: "/google.iam.credentials.v1.IAMCredentials/SignJwt",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Iam_Credentials_V1_IAMCredentialsClient: Google_Iam_Credentials_V1_IAMCredentialsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.iam.credentials.v1.IAMCredentials service.
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
public protocol Google_Iam_Credentials_V1_IAMCredentialsProvider: CallHandlerProvider {
  /// Generates an OAuth 2.0 access token for a service account.
  func generateAccessToken(request: Google_Iam_Credentials_V1_GenerateAccessTokenRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Credentials_V1_GenerateAccessTokenResponse>
  /// Generates an OpenID Connect ID token for a service account.
  func generateIdToken(request: Google_Iam_Credentials_V1_GenerateIdTokenRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Credentials_V1_GenerateIdTokenResponse>
  /// Signs a blob using a service account's system-managed private key.
  func signBlob(request: Google_Iam_Credentials_V1_SignBlobRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Credentials_V1_SignBlobResponse>
  /// Signs a JWT using a service account's system-managed private key.
  func signJwt(request: Google_Iam_Credentials_V1_SignJwtRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_Credentials_V1_SignJwtResponse>
}

extension Google_Iam_Credentials_V1_IAMCredentialsProvider {
  public var serviceName: Substring { return "google.iam.credentials.v1.IAMCredentials" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "GenerateAccessToken":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.generateAccessToken(request: request, context: context)
        }
      }

    case "GenerateIdToken":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.generateIdToken(request: request, context: context)
        }
      }

    case "SignBlob":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.signBlob(request: request, context: context)
        }
      }

    case "SignJwt":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.signJwt(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

