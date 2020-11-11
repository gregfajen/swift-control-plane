//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/datacatalog/v1beta1/policytagmanager.proto
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


/// Usage: instantiate Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerClientProtocol: GRPCClient {
  func createTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_CreateTaxonomyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_CreateTaxonomyRequest, Google_Cloud_Datacatalog_V1beta1_Taxonomy>

  func deleteTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_DeleteTaxonomyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_DeleteTaxonomyRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func updateTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_UpdateTaxonomyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_UpdateTaxonomyRequest, Google_Cloud_Datacatalog_V1beta1_Taxonomy>

  func listTaxonomies(
    _ request: Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesRequest, Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesResponse>

  func getTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_GetTaxonomyRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_GetTaxonomyRequest, Google_Cloud_Datacatalog_V1beta1_Taxonomy>

  func createPolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_CreatePolicyTagRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_CreatePolicyTagRequest, Google_Cloud_Datacatalog_V1beta1_PolicyTag>

  func deletePolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_DeletePolicyTagRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_DeletePolicyTagRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func updatePolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_UpdatePolicyTagRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_UpdatePolicyTagRequest, Google_Cloud_Datacatalog_V1beta1_PolicyTag>

  func listPolicyTags(
    _ request: Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsRequest, Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsResponse>

  func getPolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_GetPolicyTagRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_GetPolicyTagRequest, Google_Cloud_Datacatalog_V1beta1_PolicyTag>

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

extension Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerClientProtocol {

  /// Creates a taxonomy in the specified project.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateTaxonomy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_CreateTaxonomyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_CreateTaxonomyRequest, Google_Cloud_Datacatalog_V1beta1_Taxonomy> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/CreateTaxonomy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a taxonomy. This operation will also delete all
  /// policy tags in this taxonomy along with their associated policies.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteTaxonomy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_DeleteTaxonomyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_DeleteTaxonomyRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/DeleteTaxonomy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a taxonomy.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateTaxonomy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_UpdateTaxonomyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_UpdateTaxonomyRequest, Google_Cloud_Datacatalog_V1beta1_Taxonomy> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/UpdateTaxonomy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all taxonomies in a project in a particular location that the caller
  /// has permission to view.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListTaxonomies.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listTaxonomies(
    _ request: Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesRequest, Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/ListTaxonomies",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a taxonomy.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetTaxonomy.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getTaxonomy(
    _ request: Google_Cloud_Datacatalog_V1beta1_GetTaxonomyRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_GetTaxonomyRequest, Google_Cloud_Datacatalog_V1beta1_Taxonomy> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/GetTaxonomy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a policy tag in the specified taxonomy.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreatePolicyTag.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createPolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_CreatePolicyTagRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_CreatePolicyTagRequest, Google_Cloud_Datacatalog_V1beta1_PolicyTag> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/CreatePolicyTag",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a policy tag. Also deletes all of its descendant policy tags.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeletePolicyTag.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deletePolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_DeletePolicyTagRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_DeletePolicyTagRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/DeletePolicyTag",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a policy tag.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdatePolicyTag.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updatePolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_UpdatePolicyTagRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_UpdatePolicyTagRequest, Google_Cloud_Datacatalog_V1beta1_PolicyTag> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/UpdatePolicyTag",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists all policy tags in a taxonomy.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListPolicyTags.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listPolicyTags(
    _ request: Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsRequest, Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/ListPolicyTags",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a policy tag.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetPolicyTag.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getPolicyTag(
    _ request: Google_Cloud_Datacatalog_V1beta1_GetPolicyTagRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Datacatalog_V1beta1_GetPolicyTagRequest, Google_Cloud_Datacatalog_V1beta1_PolicyTag> {
    return self.makeUnaryCall(
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/GetPolicyTag",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the IAM policy for a taxonomy or a policy tag.
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
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the IAM policy for a taxonomy or a policy tag.
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
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns the permissions that a caller has on the specified taxonomy or
  /// policy tag.
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
      path: "/google.cloud.datacatalog.v1beta1.PolicyTagManager/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerClient: Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.datacatalog.v1beta1.PolicyTagManager service.
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
public protocol Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerProvider: CallHandlerProvider {
  /// Creates a taxonomy in the specified project.
  func createTaxonomy(request: Google_Cloud_Datacatalog_V1beta1_CreateTaxonomyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_Taxonomy>
  /// Deletes a taxonomy. This operation will also delete all
  /// policy tags in this taxonomy along with their associated policies.
  func deleteTaxonomy(request: Google_Cloud_Datacatalog_V1beta1_DeleteTaxonomyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Updates a taxonomy.
  func updateTaxonomy(request: Google_Cloud_Datacatalog_V1beta1_UpdateTaxonomyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_Taxonomy>
  /// Lists all taxonomies in a project in a particular location that the caller
  /// has permission to view.
  func listTaxonomies(request: Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_ListTaxonomiesResponse>
  /// Gets a taxonomy.
  func getTaxonomy(request: Google_Cloud_Datacatalog_V1beta1_GetTaxonomyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_Taxonomy>
  /// Creates a policy tag in the specified taxonomy.
  func createPolicyTag(request: Google_Cloud_Datacatalog_V1beta1_CreatePolicyTagRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_PolicyTag>
  /// Deletes a policy tag. Also deletes all of its descendant policy tags.
  func deletePolicyTag(request: Google_Cloud_Datacatalog_V1beta1_DeletePolicyTagRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Updates a policy tag.
  func updatePolicyTag(request: Google_Cloud_Datacatalog_V1beta1_UpdatePolicyTagRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_PolicyTag>
  /// Lists all policy tags in a taxonomy.
  func listPolicyTags(request: Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_ListPolicyTagsResponse>
  /// Gets a policy tag.
  func getPolicyTag(request: Google_Cloud_Datacatalog_V1beta1_GetPolicyTagRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Datacatalog_V1beta1_PolicyTag>
  /// Gets the IAM policy for a taxonomy or a policy tag.
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Sets the IAM policy for a taxonomy or a policy tag.
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Returns the permissions that a caller has on the specified taxonomy or
  /// policy tag.
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
}

extension Google_Cloud_Datacatalog_V1beta1_PolicyTagManagerProvider {
  public var serviceName: Substring { return "google.cloud.datacatalog.v1beta1.PolicyTagManager" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateTaxonomy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createTaxonomy(request: request, context: context)
        }
      }

    case "DeleteTaxonomy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteTaxonomy(request: request, context: context)
        }
      }

    case "UpdateTaxonomy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateTaxonomy(request: request, context: context)
        }
      }

    case "ListTaxonomies":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listTaxonomies(request: request, context: context)
        }
      }

    case "GetTaxonomy":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getTaxonomy(request: request, context: context)
        }
      }

    case "CreatePolicyTag":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createPolicyTag(request: request, context: context)
        }
      }

    case "DeletePolicyTag":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deletePolicyTag(request: request, context: context)
        }
      }

    case "UpdatePolicyTag":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updatePolicyTag(request: request, context: context)
        }
      }

    case "ListPolicyTags":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listPolicyTags(request: request, context: context)
        }
      }

    case "GetPolicyTag":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getPolicyTag(request: request, context: context)
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

