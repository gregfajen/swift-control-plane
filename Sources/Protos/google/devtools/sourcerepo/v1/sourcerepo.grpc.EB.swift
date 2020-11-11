//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/devtools/sourcerepo/v1/sourcerepo.proto
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


/// Usage: instantiate Google_Devtools_Sourcerepo_V1_SourceRepoClient, then call methods of this protocol to make API calls.
public protocol Google_Devtools_Sourcerepo_V1_SourceRepoClientProtocol: GRPCClient {
  func listRepos(
    _ request: Google_Devtools_Sourcerepo_V1_ListReposRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_ListReposRequest, Google_Devtools_Sourcerepo_V1_ListReposResponse>

  func getRepo(
    _ request: Google_Devtools_Sourcerepo_V1_GetRepoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_GetRepoRequest, Google_Devtools_Sourcerepo_V1_Repo>

  func createRepo(
    _ request: Google_Devtools_Sourcerepo_V1_CreateRepoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_CreateRepoRequest, Google_Devtools_Sourcerepo_V1_Repo>

  func deleteRepo(
    _ request: Google_Devtools_Sourcerepo_V1_DeleteRepoRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_DeleteRepoRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func setIamPolicy(
    _ request: Google_Iam_V1_SetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_SetIamPolicyRequest, Google_Iam_V1_Policy>

  func getIamPolicy(
    _ request: Google_Iam_V1_GetIamPolicyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_GetIamPolicyRequest, Google_Iam_V1_Policy>

  func testIamPermissions(
    _ request: Google_Iam_V1_TestIamPermissionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Iam_V1_TestIamPermissionsRequest, Google_Iam_V1_TestIamPermissionsResponse>

}

extension Google_Devtools_Sourcerepo_V1_SourceRepoClientProtocol {

  /// Returns all repos belonging to a project. The sizes of the repos are
  /// not set by ListRepos.  To get the size of a repo, use GetRepo.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListRepos.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listRepos(
    _ request: Google_Devtools_Sourcerepo_V1_ListReposRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_ListReposRequest, Google_Devtools_Sourcerepo_V1_ListReposResponse> {
    return self.makeUnaryCall(
      path: "/google.devtools.sourcerepo.v1.SourceRepo/ListRepos",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns information about a repo.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRepo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRepo(
    _ request: Google_Devtools_Sourcerepo_V1_GetRepoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_GetRepoRequest, Google_Devtools_Sourcerepo_V1_Repo> {
    return self.makeUnaryCall(
      path: "/google.devtools.sourcerepo.v1.SourceRepo/GetRepo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a repo in the given project with the given name.
  ///
  /// If the named repository already exists, `CreateRepo` returns
  /// `ALREADY_EXISTS`.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateRepo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createRepo(
    _ request: Google_Devtools_Sourcerepo_V1_CreateRepoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_CreateRepoRequest, Google_Devtools_Sourcerepo_V1_Repo> {
    return self.makeUnaryCall(
      path: "/google.devtools.sourcerepo.v1.SourceRepo/CreateRepo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a repo.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteRepo.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteRepo(
    _ request: Google_Devtools_Sourcerepo_V1_DeleteRepoRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Devtools_Sourcerepo_V1_DeleteRepoRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.devtools.sourcerepo.v1.SourceRepo/DeleteRepo",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
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
      path: "/google.devtools.sourcerepo.v1.SourceRepo/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
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
      path: "/google.devtools.sourcerepo.v1.SourceRepo/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
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
      path: "/google.devtools.sourcerepo.v1.SourceRepo/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Devtools_Sourcerepo_V1_SourceRepoClient: Google_Devtools_Sourcerepo_V1_SourceRepoClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.devtools.sourcerepo.v1.SourceRepo service.
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
public protocol Google_Devtools_Sourcerepo_V1_SourceRepoProvider: CallHandlerProvider {
  /// Returns all repos belonging to a project. The sizes of the repos are
  /// not set by ListRepos.  To get the size of a repo, use GetRepo.
  func listRepos(request: Google_Devtools_Sourcerepo_V1_ListReposRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Sourcerepo_V1_ListReposResponse>
  /// Returns information about a repo.
  func getRepo(request: Google_Devtools_Sourcerepo_V1_GetRepoRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Sourcerepo_V1_Repo>
  /// Creates a repo in the given project with the given name.
  ///
  /// If the named repository already exists, `CreateRepo` returns
  /// `ALREADY_EXISTS`.
  func createRepo(request: Google_Devtools_Sourcerepo_V1_CreateRepoRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Devtools_Sourcerepo_V1_Repo>
  /// Deletes a repo.
  func deleteRepo(request: Google_Devtools_Sourcerepo_V1_DeleteRepoRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Sets the access control policy on the specified resource. Replaces any
  /// existing policy.
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Gets the access control policy for a resource.
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Returns permissions that a caller has on the specified resource.
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a NOT_FOUND error.
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
}

extension Google_Devtools_Sourcerepo_V1_SourceRepoProvider {
  public var serviceName: Substring { return "google.devtools.sourcerepo.v1.SourceRepo" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListRepos":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listRepos(request: request, context: context)
        }
      }

    case "GetRepo":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getRepo(request: request, context: context)
        }
      }

    case "CreateRepo":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createRepo(request: request, context: context)
        }
      }

    case "DeleteRepo":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteRepo(request: request, context: context)
        }
      }

    case "SetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.setIamPolicy(request: request, context: context)
        }
      }

    case "GetIamPolicy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getIamPolicy(request: request, context: context)
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
