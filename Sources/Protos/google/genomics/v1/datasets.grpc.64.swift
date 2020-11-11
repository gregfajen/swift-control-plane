//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/genomics/v1/datasets.proto
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


/// Usage: instantiate Google_Genomics_V1_DatasetServiceV1Client, then call methods of this protocol to make API calls.
public protocol Google_Genomics_V1_DatasetServiceV1ClientProtocol: GRPCClient {
  func listDatasets(
    _ request: Google_Genomics_V1_ListDatasetsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_ListDatasetsRequest, Google_Genomics_V1_ListDatasetsResponse>

  func createDataset(
    _ request: Google_Genomics_V1_CreateDatasetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_CreateDatasetRequest, Google_Genomics_V1_Dataset>

  func getDataset(
    _ request: Google_Genomics_V1_GetDatasetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_GetDatasetRequest, Google_Genomics_V1_Dataset>

  func updateDataset(
    _ request: Google_Genomics_V1_UpdateDatasetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_UpdateDatasetRequest, Google_Genomics_V1_Dataset>

  func deleteDataset(
    _ request: Google_Genomics_V1_DeleteDatasetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_DeleteDatasetRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func undeleteDataset(
    _ request: Google_Genomics_V1_UndeleteDatasetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_UndeleteDatasetRequest, Google_Genomics_V1_Dataset>

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

extension Google_Genomics_V1_DatasetServiceV1ClientProtocol {

  /// Lists datasets within a project.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDatasets.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDatasets(
    _ request: Google_Genomics_V1_ListDatasetsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_ListDatasetsRequest, Google_Genomics_V1_ListDatasetsResponse> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.DatasetServiceV1/ListDatasets",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a new dataset.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateDataset.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createDataset(
    _ request: Google_Genomics_V1_CreateDatasetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_CreateDatasetRequest, Google_Genomics_V1_Dataset> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.DatasetServiceV1/CreateDataset",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a dataset by ID.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDataset.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDataset(
    _ request: Google_Genomics_V1_GetDatasetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_GetDatasetRequest, Google_Genomics_V1_Dataset> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.DatasetServiceV1/GetDataset",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a dataset.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// This method supports patch semantics.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateDataset.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateDataset(
    _ request: Google_Genomics_V1_UpdateDatasetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_UpdateDatasetRequest, Google_Genomics_V1_Dataset> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.DatasetServiceV1/UpdateDataset",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a dataset and all of its contents (all read group sets,
  /// reference sets, variant sets, call sets, annotation sets, etc.)
  /// This is reversible (up to one week after the deletion) via
  /// the
  /// [datasets.undelete][google.genomics.v1.DatasetServiceV1.UndeleteDataset]
  /// operation.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDataset.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDataset(
    _ request: Google_Genomics_V1_DeleteDatasetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_DeleteDatasetRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.DatasetServiceV1/DeleteDataset",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Undeletes a dataset by restoring a dataset which was deleted via this API.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// This operation is only possible for a week after the deletion occurred.
  ///
  /// - Parameters:
  ///   - request: Request to send to UndeleteDataset.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func undeleteDataset(
    _ request: Google_Genomics_V1_UndeleteDatasetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_UndeleteDatasetRequest, Google_Genomics_V1_Dataset> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.DatasetServiceV1/UndeleteDataset",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sets the access control policy on the specified dataset. Replaces any
  /// existing policy.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// See <a href="/iam/docs/managing-policies#setting_a_policy">Setting a
  /// Policy</a> for more information.
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
      path: "/google.genomics.v1.DatasetServiceV1/SetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the access control policy for the dataset. This is empty if the
  /// policy or resource does not exist.
  ///
  /// See <a href="/iam/docs/managing-policies#getting_a_policy">Getting a
  /// Policy</a> for more information.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
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
      path: "/google.genomics.v1.DatasetServiceV1/GetIamPolicy",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Returns permissions that a caller has on the specified resource.
  /// See <a href="/iam/docs/managing-policies#testing_permissions">Testing
  /// Permissions</a> for more information.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
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
      path: "/google.genomics.v1.DatasetServiceV1/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Genomics_V1_DatasetServiceV1Client: Google_Genomics_V1_DatasetServiceV1ClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.genomics.v1.DatasetServiceV1 service.
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
public protocol Google_Genomics_V1_DatasetServiceV1Provider: CallHandlerProvider {
  /// Lists datasets within a project.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  func listDatasets(request: Google_Genomics_V1_ListDatasetsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_ListDatasetsResponse>
  /// Creates a new dataset.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  func createDataset(request: Google_Genomics_V1_CreateDatasetRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_Dataset>
  /// Gets a dataset by ID.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  func getDataset(request: Google_Genomics_V1_GetDatasetRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_Dataset>
  /// Updates a dataset.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// This method supports patch semantics.
  func updateDataset(request: Google_Genomics_V1_UpdateDatasetRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_Dataset>
  /// Deletes a dataset and all of its contents (all read group sets,
  /// reference sets, variant sets, call sets, annotation sets, etc.)
  /// This is reversible (up to one week after the deletion) via
  /// the
  /// [datasets.undelete][google.genomics.v1.DatasetServiceV1.UndeleteDataset]
  /// operation.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  func deleteDataset(request: Google_Genomics_V1_DeleteDatasetRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Undeletes a dataset by restoring a dataset which was deleted via this API.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// This operation is only possible for a week after the deletion occurred.
  func undeleteDataset(request: Google_Genomics_V1_UndeleteDatasetRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_Dataset>
  /// Sets the access control policy on the specified dataset. Replaces any
  /// existing policy.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// See <a href="/iam/docs/managing-policies#setting_a_policy">Setting a
  /// Policy</a> for more information.
  func setIamPolicy(request: Google_Iam_V1_SetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Gets the access control policy for the dataset. This is empty if the
  /// policy or resource does not exist.
  ///
  /// See <a href="/iam/docs/managing-policies#getting_a_policy">Getting a
  /// Policy</a> for more information.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  func getIamPolicy(request: Google_Iam_V1_GetIamPolicyRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_Policy>
  /// Returns permissions that a caller has on the specified resource.
  /// See <a href="/iam/docs/managing-policies#testing_permissions">Testing
  /// Permissions</a> for more information.
  ///
  /// For the definitions of datasets and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  func testIamPermissions(request: Google_Iam_V1_TestIamPermissionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Iam_V1_TestIamPermissionsResponse>
}

extension Google_Genomics_V1_DatasetServiceV1Provider {
  public var serviceName: Substring { return "google.genomics.v1.DatasetServiceV1" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "ListDatasets":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDatasets(request: request, context: context)
        }
      }

    case "CreateDataset":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createDataset(request: request, context: context)
        }
      }

    case "GetDataset":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDataset(request: request, context: context)
        }
      }

    case "UpdateDataset":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateDataset(request: request, context: context)
        }
      }

    case "DeleteDataset":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteDataset(request: request, context: context)
        }
      }

    case "UndeleteDataset":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.undeleteDataset(request: request, context: context)
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

