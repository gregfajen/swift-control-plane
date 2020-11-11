//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/securitycenter/settings/v1beta1/securitycenter_settings_service.proto
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


/// Usage: instantiate Google_Cloud_Securitycenter_Settings_V1beta1_SecurityCenterSettingsServiceClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Securitycenter_Settings_V1beta1_SecurityCenterSettingsServiceClientProtocol: GRPCClient {
  func getServiceAccount(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_GetServiceAccountRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_GetServiceAccountRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ServiceAccount>

  func getSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_GetSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_GetSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_Settings>

  func updateSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_UpdateSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_UpdateSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_Settings>

  func resetSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ResetSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ResetSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func batchGetSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsResponse>

  func calculateEffectiveSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_Settings>

  func batchCalculateEffectiveSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsResponse>

  func getComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_GetComponentSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_GetComponentSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>

  func updateComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_UpdateComponentSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_UpdateComponentSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>

  func resetComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ResetComponentSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ResetComponentSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func calculateEffectiveComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveComponentSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveComponentSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>

  func listDetectors(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsResponse>

  func listComponents(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsResponse>

}

extension Google_Cloud_Securitycenter_Settings_V1beta1_SecurityCenterSettingsServiceClientProtocol {

  /// Retrieves the organizations service account, if it exists, otherwise it
  /// creates the organization service account. This API is idempotent and
  /// will only create a service account once. On subsequent calls it will
  /// return the previously created service account.  SHA, SCC and CTD Infra
  /// Automation will use this SA.  This SA will not have any permissions when
  /// created.  The UI will provision this via IAM or the user will using
  /// their own internal process. This API only creates SAs on the organization.
  /// Folders are not supported and projects will use per-project SAs associated
  /// with APIs enabled on a project. This API will be called by the UX
  /// onboarding workflow.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetServiceAccount.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getServiceAccount(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_GetServiceAccountRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_GetServiceAccountRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ServiceAccount> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/GetServiceAccount",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the Settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_GetSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_GetSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_Settings> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/GetSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates the Settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_UpdateSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_UpdateSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_Settings> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/UpdateSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Reset the organization, folder or project's settings and return
  /// the settings of just that resource to the default.
  ///
  /// Settings are present at the organization, folder, project, and cluster
  /// levels. Using Reset on a sub-organization level will remove that resource's
  /// override and result in the parent's settings being used (eg: if Reset on a
  /// cluster, project settings will be used).
  ///
  /// Using Reset on organization will remove the override that was set and
  /// result in default settings being used.
  ///
  /// - Parameters:
  ///   - request: Request to send to ResetSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func resetSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ResetSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ResetSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/ResetSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a list of settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchGetSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchGetSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/BatchGetSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// CalculateEffectiveSettings looks up all of the Security Center
  /// Settings resources in the GCP resource hierarchy, and calculates the
  /// effective settings on that resource by applying the following rules:
  ///  * Settings provided closer to the target resource take precedence over
  ///    those further away (e.g. folder will override organization level
  ///    settings).
  ///  * Product defaults can be overridden at org, folder, project, and cluster
  ///  levels.
  ///  * Detectors will be filtered out if they belong to a billing tier the
  ///  customer
  ///    has not configured.
  ///
  /// - Parameters:
  ///   - request: Request to send to CalculateEffectiveSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func calculateEffectiveSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_Settings> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/CalculateEffectiveSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a list of effective settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to BatchCalculateEffectiveSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func batchCalculateEffectiveSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/BatchCalculateEffectiveSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the Component Settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetComponentSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_GetComponentSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_GetComponentSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/GetComponentSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates the Component Settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateComponentSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_UpdateComponentSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_UpdateComponentSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/UpdateComponentSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Reset the organization, folder or project's component settings and return
  /// the settings to the default. Settings are present at the
  /// organization, folder and project levels. Using Reset for a folder or
  /// project will remove the override that was set and result in the
  /// organization-level settings being used.
  ///
  /// - Parameters:
  ///   - request: Request to send to ResetComponentSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func resetComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ResetComponentSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ResetComponentSettingsRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/ResetComponentSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the Effective Component Settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to CalculateEffectiveComponentSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func calculateEffectiveComponentSettings(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveComponentSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveComponentSettingsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/CalculateEffectiveComponentSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves an unordered list of available detectors.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDetectors.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDetectors(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/ListDetectors",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Retrieves an unordered list of available SCC components.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListComponents.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listComponents(
    _ request: Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsRequest, Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService/ListComponents",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Securitycenter_Settings_V1beta1_SecurityCenterSettingsServiceClient: Google_Cloud_Securitycenter_Settings_V1beta1_SecurityCenterSettingsServiceClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService service.
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
public protocol Google_Cloud_Securitycenter_Settings_V1beta1_SecurityCenterSettingsServiceProvider: CallHandlerProvider {
  /// Retrieves the organizations service account, if it exists, otherwise it
  /// creates the organization service account. This API is idempotent and
  /// will only create a service account once. On subsequent calls it will
  /// return the previously created service account.  SHA, SCC and CTD Infra
  /// Automation will use this SA.  This SA will not have any permissions when
  /// created.  The UI will provision this via IAM or the user will using
  /// their own internal process. This API only creates SAs on the organization.
  /// Folders are not supported and projects will use per-project SAs associated
  /// with APIs enabled on a project. This API will be called by the UX
  /// onboarding workflow.
  func getServiceAccount(request: Google_Cloud_Securitycenter_Settings_V1beta1_GetServiceAccountRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_ServiceAccount>
  /// Gets the Settings.
  func getSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_GetSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_Settings>
  /// Updates the Settings.
  func updateSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_UpdateSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_Settings>
  /// Reset the organization, folder or project's settings and return
  /// the settings of just that resource to the default.
  ///
  /// Settings are present at the organization, folder, project, and cluster
  /// levels. Using Reset on a sub-organization level will remove that resource's
  /// override and result in the parent's settings being used (eg: if Reset on a
  /// cluster, project settings will be used).
  ///
  /// Using Reset on organization will remove the override that was set and
  /// result in default settings being used.
  func resetSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_ResetSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Gets a list of settings.
  func batchGetSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_BatchGetSettingsResponse>
  /// CalculateEffectiveSettings looks up all of the Security Center
  /// Settings resources in the GCP resource hierarchy, and calculates the
  /// effective settings on that resource by applying the following rules:
  ///  * Settings provided closer to the target resource take precedence over
  ///    those further away (e.g. folder will override organization level
  ///    settings).
  ///  * Product defaults can be overridden at org, folder, project, and cluster
  ///  levels.
  ///  * Detectors will be filtered out if they belong to a billing tier the
  ///  customer
  ///    has not configured.
  func calculateEffectiveSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_Settings>
  /// Gets a list of effective settings.
  func batchCalculateEffectiveSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_BatchCalculateEffectiveSettingsResponse>
  /// Gets the Component Settings.
  func getComponentSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_GetComponentSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>
  /// Updates the Component Settings.
  func updateComponentSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_UpdateComponentSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>
  /// Reset the organization, folder or project's component settings and return
  /// the settings to the default. Settings are present at the
  /// organization, folder and project levels. Using Reset for a folder or
  /// project will remove the override that was set and result in the
  /// organization-level settings being used.
  func resetComponentSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_ResetComponentSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Gets the Effective Component Settings.
  func calculateEffectiveComponentSettings(request: Google_Cloud_Securitycenter_Settings_V1beta1_CalculateEffectiveComponentSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_ComponentSettings>
  /// Retrieves an unordered list of available detectors.
  func listDetectors(request: Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_ListDetectorsResponse>
  /// Retrieves an unordered list of available SCC components.
  func listComponents(request: Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Securitycenter_Settings_V1beta1_ListComponentsResponse>
}

extension Google_Cloud_Securitycenter_Settings_V1beta1_SecurityCenterSettingsServiceProvider {
  public var serviceName: Substring { return "google.cloud.securitycenter.settings.v1beta1.SecurityCenterSettingsService" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "GetServiceAccount":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getServiceAccount(request: request, context: context)
        }
      }

    case "GetSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getSettings(request: request, context: context)
        }
      }

    case "UpdateSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateSettings(request: request, context: context)
        }
      }

    case "ResetSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.resetSettings(request: request, context: context)
        }
      }

    case "BatchGetSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchGetSettings(request: request, context: context)
        }
      }

    case "CalculateEffectiveSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.calculateEffectiveSettings(request: request, context: context)
        }
      }

    case "BatchCalculateEffectiveSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.batchCalculateEffectiveSettings(request: request, context: context)
        }
      }

    case "GetComponentSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getComponentSettings(request: request, context: context)
        }
      }

    case "UpdateComponentSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateComponentSettings(request: request, context: context)
        }
      }

    case "ResetComponentSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.resetComponentSettings(request: request, context: context)
        }
      }

    case "CalculateEffectiveComponentSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.calculateEffectiveComponentSettings(request: request, context: context)
        }
      }

    case "ListDetectors":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDetectors(request: request, context: context)
        }
      }

    case "ListComponents":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listComponents(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
