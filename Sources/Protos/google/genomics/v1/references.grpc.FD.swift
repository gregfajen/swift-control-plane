//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/genomics/v1/references.proto
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


/// Usage: instantiate Google_Genomics_V1_ReferenceServiceV1Client, then call methods of this protocol to make API calls.
public protocol Google_Genomics_V1_ReferenceServiceV1ClientProtocol: GRPCClient {
  func searchReferenceSets(
    _ request: Google_Genomics_V1_SearchReferenceSetsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_SearchReferenceSetsRequest, Google_Genomics_V1_SearchReferenceSetsResponse>

  func getReferenceSet(
    _ request: Google_Genomics_V1_GetReferenceSetRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_GetReferenceSetRequest, Google_Genomics_V1_ReferenceSet>

  func searchReferences(
    _ request: Google_Genomics_V1_SearchReferencesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_SearchReferencesRequest, Google_Genomics_V1_SearchReferencesResponse>

  func getReference(
    _ request: Google_Genomics_V1_GetReferenceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_GetReferenceRequest, Google_Genomics_V1_Reference>

  func listBases(
    _ request: Google_Genomics_V1_ListBasesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Genomics_V1_ListBasesRequest, Google_Genomics_V1_ListBasesResponse>

}

extension Google_Genomics_V1_ReferenceServiceV1ClientProtocol {

  /// Searches for reference sets which match the given criteria.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.searchReferenceSets](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L71)
  ///
  /// - Parameters:
  ///   - request: Request to send to SearchReferenceSets.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func searchReferenceSets(
    _ request: Google_Genomics_V1_SearchReferenceSetsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_SearchReferenceSetsRequest, Google_Genomics_V1_SearchReferenceSetsResponse> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.ReferenceServiceV1/SearchReferenceSets",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a reference set.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.getReferenceSet](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L83).
  ///
  /// - Parameters:
  ///   - request: Request to send to GetReferenceSet.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getReferenceSet(
    _ request: Google_Genomics_V1_GetReferenceSetRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_GetReferenceSetRequest, Google_Genomics_V1_ReferenceSet> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.ReferenceServiceV1/GetReferenceSet",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Searches for references which match the given criteria.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.searchReferences](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L146).
  ///
  /// - Parameters:
  ///   - request: Request to send to SearchReferences.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func searchReferences(
    _ request: Google_Genomics_V1_SearchReferencesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_SearchReferencesRequest, Google_Genomics_V1_SearchReferencesResponse> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.ReferenceServiceV1/SearchReferences",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a reference.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.getReference](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L158).
  ///
  /// - Parameters:
  ///   - request: Request to send to GetReference.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getReference(
    _ request: Google_Genomics_V1_GetReferenceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_GetReferenceRequest, Google_Genomics_V1_Reference> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.ReferenceServiceV1/GetReference",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the bases in a reference, optionally restricted to a range.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.getReferenceBases](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L221).
  ///
  /// - Parameters:
  ///   - request: Request to send to ListBases.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listBases(
    _ request: Google_Genomics_V1_ListBasesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Genomics_V1_ListBasesRequest, Google_Genomics_V1_ListBasesResponse> {
    return self.makeUnaryCall(
      path: "/google.genomics.v1.ReferenceServiceV1/ListBases",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Genomics_V1_ReferenceServiceV1Client: Google_Genomics_V1_ReferenceServiceV1ClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.genomics.v1.ReferenceServiceV1 service.
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
public protocol Google_Genomics_V1_ReferenceServiceV1Provider: CallHandlerProvider {
  /// Searches for reference sets which match the given criteria.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.searchReferenceSets](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L71)
  func searchReferenceSets(request: Google_Genomics_V1_SearchReferenceSetsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_SearchReferenceSetsResponse>
  /// Gets a reference set.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.getReferenceSet](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L83).
  func getReferenceSet(request: Google_Genomics_V1_GetReferenceSetRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_ReferenceSet>
  /// Searches for references which match the given criteria.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.searchReferences](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L146).
  func searchReferences(request: Google_Genomics_V1_SearchReferencesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_SearchReferencesResponse>
  /// Gets a reference.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.getReference](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L158).
  func getReference(request: Google_Genomics_V1_GetReferenceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_Reference>
  /// Lists the bases in a reference, optionally restricted to a range.
  ///
  /// For the definitions of references and other genomics resources, see
  /// [Fundamentals of Google
  /// Genomics](https://cloud.google.com/genomics/fundamentals-of-google-genomics)
  ///
  /// Implements
  /// [GlobalAllianceApi.getReferenceBases](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#L221).
  func listBases(request: Google_Genomics_V1_ListBasesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Genomics_V1_ListBasesResponse>
}

extension Google_Genomics_V1_ReferenceServiceV1Provider {
  public var serviceName: Substring { return "google.genomics.v1.ReferenceServiceV1" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "SearchReferenceSets":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.searchReferenceSets(request: request, context: context)
        }
      }

    case "GetReferenceSet":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getReferenceSet(request: request, context: context)
        }
      }

    case "SearchReferences":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.searchReferences(request: request, context: context)
        }
      }

    case "GetReference":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getReference(request: request, context: context)
        }
      }

    case "ListBases":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listBases(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

