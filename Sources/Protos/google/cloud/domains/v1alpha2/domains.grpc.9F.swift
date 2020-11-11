//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/domains/v1alpha2/domains.proto
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


/// Usage: instantiate Google_Cloud_Domains_V1alpha2_DomainsClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Domains_V1alpha2_DomainsClientProtocol: GRPCClient {
  func searchDomains(
    _ request: Google_Cloud_Domains_V1alpha2_SearchDomainsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_SearchDomainsRequest, Google_Cloud_Domains_V1alpha2_SearchDomainsResponse>

  func retrieveRegisterParameters(
    _ request: Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersRequest, Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersResponse>

  func registerDomain(
    _ request: Google_Cloud_Domains_V1alpha2_RegisterDomainRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_RegisterDomainRequest, Google_Longrunning_Operation>

  func listRegistrations(
    _ request: Google_Cloud_Domains_V1alpha2_ListRegistrationsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ListRegistrationsRequest, Google_Cloud_Domains_V1alpha2_ListRegistrationsResponse>

  func getRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_GetRegistrationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_GetRegistrationRequest, Google_Cloud_Domains_V1alpha2_Registration>

  func updateRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_UpdateRegistrationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_UpdateRegistrationRequest, Google_Longrunning_Operation>

  func configureManagementSettings(
    _ request: Google_Cloud_Domains_V1alpha2_ConfigureManagementSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ConfigureManagementSettingsRequest, Google_Longrunning_Operation>

  func configureDnsSettings(
    _ request: Google_Cloud_Domains_V1alpha2_ConfigureDnsSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ConfigureDnsSettingsRequest, Google_Longrunning_Operation>

  func configureContactSettings(
    _ request: Google_Cloud_Domains_V1alpha2_ConfigureContactSettingsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ConfigureContactSettingsRequest, Google_Longrunning_Operation>

  func exportRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_ExportRegistrationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ExportRegistrationRequest, Google_Longrunning_Operation>

  func deleteRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_DeleteRegistrationRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_DeleteRegistrationRequest, Google_Longrunning_Operation>

  func retrieveAuthorizationCode(
    _ request: Google_Cloud_Domains_V1alpha2_RetrieveAuthorizationCodeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_RetrieveAuthorizationCodeRequest, Google_Cloud_Domains_V1alpha2_AuthorizationCode>

  func resetAuthorizationCode(
    _ request: Google_Cloud_Domains_V1alpha2_ResetAuthorizationCodeRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ResetAuthorizationCodeRequest, Google_Cloud_Domains_V1alpha2_AuthorizationCode>

}

extension Google_Cloud_Domains_V1alpha2_DomainsClientProtocol {

  /// Searches for available domain names similar to the provided query.
  ///
  /// Availability results from this method are approximate; call
  /// `RetrieveRegisterParameters` on a domain before registering to confirm
  /// availability.
  ///
  /// - Parameters:
  ///   - request: Request to send to SearchDomains.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func searchDomains(
    _ request: Google_Cloud_Domains_V1alpha2_SearchDomainsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_SearchDomainsRequest, Google_Cloud_Domains_V1alpha2_SearchDomainsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/SearchDomains",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets parameters needed to register a new domain name, including price and
  /// up-to-date availability. Use the returned values to call `RegisterDomain`.
  ///
  /// - Parameters:
  ///   - request: Request to send to RetrieveRegisterParameters.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func retrieveRegisterParameters(
    _ request: Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersRequest, Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/RetrieveRegisterParameters",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Registers a new domain name and creates a corresponding `Registration`
  /// resource.
  ///
  /// Call `RetrieveRegisterParameters` first to check availability of the domain
  /// name and determine parameters like price that are needed to build a call to
  /// this method.
  ///
  /// A successful call creates a `Registration` resource in state
  /// `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2
  /// minutes, indicating that the domain was successfully registered. If the
  /// resource ends up in state `REGISTRATION_FAILED`, it indicates that the
  /// domain was not registered successfully, and you can safely delete the
  /// resource and retry registration.
  ///
  /// - Parameters:
  ///   - request: Request to send to RegisterDomain.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func registerDomain(
    _ request: Google_Cloud_Domains_V1alpha2_RegisterDomainRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_RegisterDomainRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/RegisterDomain",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the `Registration` resources in a project.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListRegistrations.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listRegistrations(
    _ request: Google_Cloud_Domains_V1alpha2_ListRegistrationsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ListRegistrationsRequest, Google_Cloud_Domains_V1alpha2_ListRegistrationsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/ListRegistrations",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the details of a `Registration` resource.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetRegistration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_GetRegistrationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_GetRegistrationRequest, Google_Cloud_Domains_V1alpha2_Registration> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/GetRegistration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates select fields of a `Registration` resource, notably `labels`. To
  /// update other fields, use the appropriate custom update method:
  ///
  /// * To update management settings, see `ConfigureManagementSettings`
  /// * To update DNS configuration, see `ConfigureDnsSettings`
  /// * To update contact information, see `ConfigureContactSettings`
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateRegistration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_UpdateRegistrationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_UpdateRegistrationRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/UpdateRegistration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a `Registration`'s management settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to ConfigureManagementSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func configureManagementSettings(
    _ request: Google_Cloud_Domains_V1alpha2_ConfigureManagementSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ConfigureManagementSettingsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/ConfigureManagementSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a `Registration`'s DNS settings.
  ///
  /// - Parameters:
  ///   - request: Request to send to ConfigureDnsSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func configureDnsSettings(
    _ request: Google_Cloud_Domains_V1alpha2_ConfigureDnsSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ConfigureDnsSettingsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/ConfigureDnsSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a `Registration`'s contact settings. Some changes require
  /// confirmation by the domain's registrant contact .
  ///
  /// - Parameters:
  ///   - request: Request to send to ConfigureContactSettings.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func configureContactSettings(
    _ request: Google_Cloud_Domains_V1alpha2_ConfigureContactSettingsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ConfigureContactSettingsRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/ConfigureContactSettings",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Exports a `Registration` that you no longer want to use with
  /// Cloud Domains. You can continue to use the domain in
  /// [Google Domains](https://domains.google/) until it expires.
  ///
  /// If the export is successful:
  ///
  /// * The resource's `state` becomes `EXPORTED`, meaning that it is no longer
  /// managed by Cloud Domains
  /// * Because individual users can own domains in Google Domains, the calling
  /// user becomes the domain's sole owner. Permissions for the domain are
  /// subsequently managed in Google Domains.
  /// * Without further action, the domain does not renew automatically.
  /// The new owner can set up billing in Google Domains to renew the domain
  /// if needed.
  ///
  /// - Parameters:
  ///   - request: Request to send to ExportRegistration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func exportRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_ExportRegistrationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ExportRegistrationRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/ExportRegistration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a `Registration` resource.
  ///
  /// This method only works on resources in one of the following states:
  ///
  /// * `state` is `EXPORTED` with `expire_time` in the past
  /// * `state` is `REGISTRATION_FAILED`
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteRegistration.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteRegistration(
    _ request: Google_Cloud_Domains_V1alpha2_DeleteRegistrationRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_DeleteRegistrationRequest, Google_Longrunning_Operation> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/DeleteRegistration",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets the authorization code of the `Registration` for the purpose of
  /// transferring the domain to another registrar.
  ///
  /// You can call this method only after 60 days have elapsed since the initial
  /// domain registration.
  ///
  /// - Parameters:
  ///   - request: Request to send to RetrieveAuthorizationCode.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func retrieveAuthorizationCode(
    _ request: Google_Cloud_Domains_V1alpha2_RetrieveAuthorizationCodeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_RetrieveAuthorizationCodeRequest, Google_Cloud_Domains_V1alpha2_AuthorizationCode> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/RetrieveAuthorizationCode",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Resets the authorization code of the `Registration` to a new random string.
  ///
  /// You can call this method only after 60 days have elapsed since the initial
  /// domain registration.
  ///
  /// - Parameters:
  ///   - request: Request to send to ResetAuthorizationCode.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func resetAuthorizationCode(
    _ request: Google_Cloud_Domains_V1alpha2_ResetAuthorizationCodeRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Domains_V1alpha2_ResetAuthorizationCodeRequest, Google_Cloud_Domains_V1alpha2_AuthorizationCode> {
    return self.makeUnaryCall(
      path: "/google.cloud.domains.v1alpha2.Domains/ResetAuthorizationCode",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Domains_V1alpha2_DomainsClient: Google_Cloud_Domains_V1alpha2_DomainsClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.domains.v1alpha2.Domains service.
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
public protocol Google_Cloud_Domains_V1alpha2_DomainsProvider: CallHandlerProvider {
  /// Searches for available domain names similar to the provided query.
  ///
  /// Availability results from this method are approximate; call
  /// `RetrieveRegisterParameters` on a domain before registering to confirm
  /// availability.
  func searchDomains(request: Google_Cloud_Domains_V1alpha2_SearchDomainsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Domains_V1alpha2_SearchDomainsResponse>
  /// Gets parameters needed to register a new domain name, including price and
  /// up-to-date availability. Use the returned values to call `RegisterDomain`.
  func retrieveRegisterParameters(request: Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Domains_V1alpha2_RetrieveRegisterParametersResponse>
  /// Registers a new domain name and creates a corresponding `Registration`
  /// resource.
  ///
  /// Call `RetrieveRegisterParameters` first to check availability of the domain
  /// name and determine parameters like price that are needed to build a call to
  /// this method.
  ///
  /// A successful call creates a `Registration` resource in state
  /// `REGISTRATION_PENDING`, which resolves to `ACTIVE` within 1-2
  /// minutes, indicating that the domain was successfully registered. If the
  /// resource ends up in state `REGISTRATION_FAILED`, it indicates that the
  /// domain was not registered successfully, and you can safely delete the
  /// resource and retry registration.
  func registerDomain(request: Google_Cloud_Domains_V1alpha2_RegisterDomainRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Lists the `Registration` resources in a project.
  func listRegistrations(request: Google_Cloud_Domains_V1alpha2_ListRegistrationsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Domains_V1alpha2_ListRegistrationsResponse>
  /// Gets the details of a `Registration` resource.
  func getRegistration(request: Google_Cloud_Domains_V1alpha2_GetRegistrationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Domains_V1alpha2_Registration>
  /// Updates select fields of a `Registration` resource, notably `labels`. To
  /// update other fields, use the appropriate custom update method:
  ///
  /// * To update management settings, see `ConfigureManagementSettings`
  /// * To update DNS configuration, see `ConfigureDnsSettings`
  /// * To update contact information, see `ConfigureContactSettings`
  func updateRegistration(request: Google_Cloud_Domains_V1alpha2_UpdateRegistrationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Updates a `Registration`'s management settings.
  func configureManagementSettings(request: Google_Cloud_Domains_V1alpha2_ConfigureManagementSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Updates a `Registration`'s DNS settings.
  func configureDnsSettings(request: Google_Cloud_Domains_V1alpha2_ConfigureDnsSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Updates a `Registration`'s contact settings. Some changes require
  /// confirmation by the domain's registrant contact .
  func configureContactSettings(request: Google_Cloud_Domains_V1alpha2_ConfigureContactSettingsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Exports a `Registration` that you no longer want to use with
  /// Cloud Domains. You can continue to use the domain in
  /// [Google Domains](https://domains.google/) until it expires.
  ///
  /// If the export is successful:
  ///
  /// * The resource's `state` becomes `EXPORTED`, meaning that it is no longer
  /// managed by Cloud Domains
  /// * Because individual users can own domains in Google Domains, the calling
  /// user becomes the domain's sole owner. Permissions for the domain are
  /// subsequently managed in Google Domains.
  /// * Without further action, the domain does not renew automatically.
  /// The new owner can set up billing in Google Domains to renew the domain
  /// if needed.
  func exportRegistration(request: Google_Cloud_Domains_V1alpha2_ExportRegistrationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Deletes a `Registration` resource.
  ///
  /// This method only works on resources in one of the following states:
  ///
  /// * `state` is `EXPORTED` with `expire_time` in the past
  /// * `state` is `REGISTRATION_FAILED`
  func deleteRegistration(request: Google_Cloud_Domains_V1alpha2_DeleteRegistrationRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Longrunning_Operation>
  /// Gets the authorization code of the `Registration` for the purpose of
  /// transferring the domain to another registrar.
  ///
  /// You can call this method only after 60 days have elapsed since the initial
  /// domain registration.
  func retrieveAuthorizationCode(request: Google_Cloud_Domains_V1alpha2_RetrieveAuthorizationCodeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Domains_V1alpha2_AuthorizationCode>
  /// Resets the authorization code of the `Registration` to a new random string.
  ///
  /// You can call this method only after 60 days have elapsed since the initial
  /// domain registration.
  func resetAuthorizationCode(request: Google_Cloud_Domains_V1alpha2_ResetAuthorizationCodeRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Domains_V1alpha2_AuthorizationCode>
}

extension Google_Cloud_Domains_V1alpha2_DomainsProvider {
  public var serviceName: Substring { return "google.cloud.domains.v1alpha2.Domains" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "SearchDomains":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.searchDomains(request: request, context: context)
        }
      }

    case "RetrieveRegisterParameters":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.retrieveRegisterParameters(request: request, context: context)
        }
      }

    case "RegisterDomain":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.registerDomain(request: request, context: context)
        }
      }

    case "ListRegistrations":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listRegistrations(request: request, context: context)
        }
      }

    case "GetRegistration":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getRegistration(request: request, context: context)
        }
      }

    case "UpdateRegistration":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateRegistration(request: request, context: context)
        }
      }

    case "ConfigureManagementSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.configureManagementSettings(request: request, context: context)
        }
      }

    case "ConfigureDnsSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.configureDnsSettings(request: request, context: context)
        }
      }

    case "ConfigureContactSettings":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.configureContactSettings(request: request, context: context)
        }
      }

    case "ExportRegistration":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.exportRegistration(request: request, context: context)
        }
      }

    case "DeleteRegistration":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteRegistration(request: request, context: context)
        }
      }

    case "RetrieveAuthorizationCode":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.retrieveAuthorizationCode(request: request, context: context)
        }
      }

    case "ResetAuthorizationCode":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.resetAuthorizationCode(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}
