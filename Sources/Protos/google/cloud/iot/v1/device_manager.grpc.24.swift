//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: google/cloud/iot/v1/device_manager.proto
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


/// Usage: instantiate Google_Cloud_Iot_V1_DeviceManagerClient, then call methods of this protocol to make API calls.
public protocol Google_Cloud_Iot_V1_DeviceManagerClientProtocol: GRPCClient {
  func createDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_CreateDeviceRegistryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_CreateDeviceRegistryRequest, Google_Cloud_Iot_V1_DeviceRegistry>

  func getDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_GetDeviceRegistryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_GetDeviceRegistryRequest, Google_Cloud_Iot_V1_DeviceRegistry>

  func updateDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_UpdateDeviceRegistryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_UpdateDeviceRegistryRequest, Google_Cloud_Iot_V1_DeviceRegistry>

  func deleteDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_DeleteDeviceRegistryRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_DeleteDeviceRegistryRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listDeviceRegistries(
    _ request: Google_Cloud_Iot_V1_ListDeviceRegistriesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDeviceRegistriesRequest, Google_Cloud_Iot_V1_ListDeviceRegistriesResponse>

  func createDevice(
    _ request: Google_Cloud_Iot_V1_CreateDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_CreateDeviceRequest, Google_Cloud_Iot_V1_Device>

  func getDevice(
    _ request: Google_Cloud_Iot_V1_GetDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_GetDeviceRequest, Google_Cloud_Iot_V1_Device>

  func updateDevice(
    _ request: Google_Cloud_Iot_V1_UpdateDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_UpdateDeviceRequest, Google_Cloud_Iot_V1_Device>

  func deleteDevice(
    _ request: Google_Cloud_Iot_V1_DeleteDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_DeleteDeviceRequest, SwiftProtobuf.Google_Protobuf_Empty>

  func listDevices(
    _ request: Google_Cloud_Iot_V1_ListDevicesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDevicesRequest, Google_Cloud_Iot_V1_ListDevicesResponse>

  func modifyCloudToDeviceConfig(
    _ request: Google_Cloud_Iot_V1_ModifyCloudToDeviceConfigRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_ModifyCloudToDeviceConfigRequest, Google_Cloud_Iot_V1_DeviceConfig>

  func listDeviceConfigVersions(
    _ request: Google_Cloud_Iot_V1_ListDeviceConfigVersionsRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDeviceConfigVersionsRequest, Google_Cloud_Iot_V1_ListDeviceConfigVersionsResponse>

  func listDeviceStates(
    _ request: Google_Cloud_Iot_V1_ListDeviceStatesRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDeviceStatesRequest, Google_Cloud_Iot_V1_ListDeviceStatesResponse>

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

  func sendCommandToDevice(
    _ request: Google_Cloud_Iot_V1_SendCommandToDeviceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_SendCommandToDeviceRequest, Google_Cloud_Iot_V1_SendCommandToDeviceResponse>

  func bindDeviceToGateway(
    _ request: Google_Cloud_Iot_V1_BindDeviceToGatewayRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_BindDeviceToGatewayRequest, Google_Cloud_Iot_V1_BindDeviceToGatewayResponse>

  func unbindDeviceFromGateway(
    _ request: Google_Cloud_Iot_V1_UnbindDeviceFromGatewayRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Google_Cloud_Iot_V1_UnbindDeviceFromGatewayRequest, Google_Cloud_Iot_V1_UnbindDeviceFromGatewayResponse>

}

extension Google_Cloud_Iot_V1_DeviceManagerClientProtocol {

  /// Creates a device registry that contains devices.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateDeviceRegistry.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_CreateDeviceRegistryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_CreateDeviceRegistryRequest, Google_Cloud_Iot_V1_DeviceRegistry> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/CreateDeviceRegistry",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets a device registry configuration.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDeviceRegistry.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_GetDeviceRegistryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_GetDeviceRegistryRequest, Google_Cloud_Iot_V1_DeviceRegistry> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/GetDeviceRegistry",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a device registry configuration.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateDeviceRegistry.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_UpdateDeviceRegistryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_UpdateDeviceRegistryRequest, Google_Cloud_Iot_V1_DeviceRegistry> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/UpdateDeviceRegistry",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a device registry configuration.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDeviceRegistry.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDeviceRegistry(
    _ request: Google_Cloud_Iot_V1_DeleteDeviceRegistryRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_DeleteDeviceRegistryRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/DeleteDeviceRegistry",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists device registries.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDeviceRegistries.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDeviceRegistries(
    _ request: Google_Cloud_Iot_V1_ListDeviceRegistriesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDeviceRegistriesRequest, Google_Cloud_Iot_V1_ListDeviceRegistriesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/ListDeviceRegistries",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Creates a device in a device registry.
  ///
  /// - Parameters:
  ///   - request: Request to send to CreateDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func createDevice(
    _ request: Google_Cloud_Iot_V1_CreateDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_CreateDeviceRequest, Google_Cloud_Iot_V1_Device> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/CreateDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Gets details about a device.
  ///
  /// - Parameters:
  ///   - request: Request to send to GetDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func getDevice(
    _ request: Google_Cloud_Iot_V1_GetDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_GetDeviceRequest, Google_Cloud_Iot_V1_Device> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/GetDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Updates a device.
  ///
  /// - Parameters:
  ///   - request: Request to send to UpdateDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func updateDevice(
    _ request: Google_Cloud_Iot_V1_UpdateDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_UpdateDeviceRequest, Google_Cloud_Iot_V1_Device> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/UpdateDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes a device.
  ///
  /// - Parameters:
  ///   - request: Request to send to DeleteDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func deleteDevice(
    _ request: Google_Cloud_Iot_V1_DeleteDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_DeleteDeviceRequest, SwiftProtobuf.Google_Protobuf_Empty> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/DeleteDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// List devices in a device registry.
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDevices.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDevices(
    _ request: Google_Cloud_Iot_V1_ListDevicesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDevicesRequest, Google_Cloud_Iot_V1_ListDevicesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/ListDevices",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Modifies the configuration for the device, which is eventually sent from
  /// the Cloud IoT Core servers. Returns the modified configuration version and
  /// its metadata.
  ///
  /// - Parameters:
  ///   - request: Request to send to ModifyCloudToDeviceConfig.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func modifyCloudToDeviceConfig(
    _ request: Google_Cloud_Iot_V1_ModifyCloudToDeviceConfigRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_ModifyCloudToDeviceConfigRequest, Google_Cloud_Iot_V1_DeviceConfig> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/ModifyCloudToDeviceConfig",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the last few versions of the device configuration in descending
  /// order (i.e.: newest first).
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDeviceConfigVersions.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDeviceConfigVersions(
    _ request: Google_Cloud_Iot_V1_ListDeviceConfigVersionsRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDeviceConfigVersionsRequest, Google_Cloud_Iot_V1_ListDeviceConfigVersionsResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/ListDeviceConfigVersions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Lists the last few versions of the device state in descending order (i.e.:
  /// newest first).
  ///
  /// - Parameters:
  ///   - request: Request to send to ListDeviceStates.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func listDeviceStates(
    _ request: Google_Cloud_Iot_V1_ListDeviceStatesRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_ListDeviceStatesRequest, Google_Cloud_Iot_V1_ListDeviceStatesResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/ListDeviceStates",
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
      path: "/google.cloud.iot.v1.DeviceManager/SetIamPolicy",
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
      path: "/google.cloud.iot.v1.DeviceManager/GetIamPolicy",
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
      path: "/google.cloud.iot.v1.DeviceManager/TestIamPermissions",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Sends a command to the specified device. In order for a device to be able
  /// to receive commands, it must:
  /// 1) be connected to Cloud IoT Core using the MQTT protocol, and
  /// 2) be subscribed to the group of MQTT topics specified by
  ///    /devices/{device-id}/commands/#. This subscription will receive commands
  ///    at the top-level topic /devices/{device-id}/commands as well as commands
  ///    for subfolders, like /devices/{device-id}/commands/subfolder.
  ///    Note that subscribing to specific subfolders is not supported.
  /// If the command could not be delivered to the device, this method will
  /// return an error; in particular, if the device is not subscribed, this
  /// method will return FAILED_PRECONDITION. Otherwise, this method will
  /// return OK. If the subscription is QoS 1, at least once delivery will be
  /// guaranteed; for QoS 0, no acknowledgment will be expected from the device.
  ///
  /// - Parameters:
  ///   - request: Request to send to SendCommandToDevice.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func sendCommandToDevice(
    _ request: Google_Cloud_Iot_V1_SendCommandToDeviceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_SendCommandToDeviceRequest, Google_Cloud_Iot_V1_SendCommandToDeviceResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/SendCommandToDevice",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Associates the device with the gateway.
  ///
  /// - Parameters:
  ///   - request: Request to send to BindDeviceToGateway.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func bindDeviceToGateway(
    _ request: Google_Cloud_Iot_V1_BindDeviceToGatewayRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_BindDeviceToGatewayRequest, Google_Cloud_Iot_V1_BindDeviceToGatewayResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/BindDeviceToGateway",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }

  /// Deletes the association between the device and the gateway.
  ///
  /// - Parameters:
  ///   - request: Request to send to UnbindDeviceFromGateway.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  public func unbindDeviceFromGateway(
    _ request: Google_Cloud_Iot_V1_UnbindDeviceFromGatewayRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Google_Cloud_Iot_V1_UnbindDeviceFromGatewayRequest, Google_Cloud_Iot_V1_UnbindDeviceFromGatewayResponse> {
    return self.makeUnaryCall(
      path: "/google.cloud.iot.v1.DeviceManager/UnbindDeviceFromGateway",
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions
    )
  }
}

public final class Google_Cloud_Iot_V1_DeviceManagerClient: Google_Cloud_Iot_V1_DeviceManagerClientProtocol {
  public let channel: GRPCChannel
  public var defaultCallOptions: CallOptions

  /// Creates a client for the google.cloud.iot.v1.DeviceManager service.
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
public protocol Google_Cloud_Iot_V1_DeviceManagerProvider: CallHandlerProvider {
  /// Creates a device registry that contains devices.
  func createDeviceRegistry(request: Google_Cloud_Iot_V1_CreateDeviceRegistryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_DeviceRegistry>
  /// Gets a device registry configuration.
  func getDeviceRegistry(request: Google_Cloud_Iot_V1_GetDeviceRegistryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_DeviceRegistry>
  /// Updates a device registry configuration.
  func updateDeviceRegistry(request: Google_Cloud_Iot_V1_UpdateDeviceRegistryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_DeviceRegistry>
  /// Deletes a device registry configuration.
  func deleteDeviceRegistry(request: Google_Cloud_Iot_V1_DeleteDeviceRegistryRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// Lists device registries.
  func listDeviceRegistries(request: Google_Cloud_Iot_V1_ListDeviceRegistriesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_ListDeviceRegistriesResponse>
  /// Creates a device in a device registry.
  func createDevice(request: Google_Cloud_Iot_V1_CreateDeviceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_Device>
  /// Gets details about a device.
  func getDevice(request: Google_Cloud_Iot_V1_GetDeviceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_Device>
  /// Updates a device.
  func updateDevice(request: Google_Cloud_Iot_V1_UpdateDeviceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_Device>
  /// Deletes a device.
  func deleteDevice(request: Google_Cloud_Iot_V1_DeleteDeviceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<SwiftProtobuf.Google_Protobuf_Empty>
  /// List devices in a device registry.
  func listDevices(request: Google_Cloud_Iot_V1_ListDevicesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_ListDevicesResponse>
  /// Modifies the configuration for the device, which is eventually sent from
  /// the Cloud IoT Core servers. Returns the modified configuration version and
  /// its metadata.
  func modifyCloudToDeviceConfig(request: Google_Cloud_Iot_V1_ModifyCloudToDeviceConfigRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_DeviceConfig>
  /// Lists the last few versions of the device configuration in descending
  /// order (i.e.: newest first).
  func listDeviceConfigVersions(request: Google_Cloud_Iot_V1_ListDeviceConfigVersionsRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_ListDeviceConfigVersionsResponse>
  /// Lists the last few versions of the device state in descending order (i.e.:
  /// newest first).
  func listDeviceStates(request: Google_Cloud_Iot_V1_ListDeviceStatesRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_ListDeviceStatesResponse>
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
  /// Sends a command to the specified device. In order for a device to be able
  /// to receive commands, it must:
  /// 1) be connected to Cloud IoT Core using the MQTT protocol, and
  /// 2) be subscribed to the group of MQTT topics specified by
  ///    /devices/{device-id}/commands/#. This subscription will receive commands
  ///    at the top-level topic /devices/{device-id}/commands as well as commands
  ///    for subfolders, like /devices/{device-id}/commands/subfolder.
  ///    Note that subscribing to specific subfolders is not supported.
  /// If the command could not be delivered to the device, this method will
  /// return an error; in particular, if the device is not subscribed, this
  /// method will return FAILED_PRECONDITION. Otherwise, this method will
  /// return OK. If the subscription is QoS 1, at least once delivery will be
  /// guaranteed; for QoS 0, no acknowledgment will be expected from the device.
  func sendCommandToDevice(request: Google_Cloud_Iot_V1_SendCommandToDeviceRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_SendCommandToDeviceResponse>
  /// Associates the device with the gateway.
  func bindDeviceToGateway(request: Google_Cloud_Iot_V1_BindDeviceToGatewayRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_BindDeviceToGatewayResponse>
  /// Deletes the association between the device and the gateway.
  func unbindDeviceFromGateway(request: Google_Cloud_Iot_V1_UnbindDeviceFromGatewayRequest, context: StatusOnlyCallContext) -> EventLoopFuture<Google_Cloud_Iot_V1_UnbindDeviceFromGatewayResponse>
}

extension Google_Cloud_Iot_V1_DeviceManagerProvider {
  public var serviceName: Substring { return "google.cloud.iot.v1.DeviceManager" }

  /// Determines, calls and returns the appropriate request handler, depending on the request's method.
  /// Returns nil for methods not handled by this service.
  public func handleMethod(_ methodName: Substring, callHandlerContext: CallHandlerContext) -> GRPCCallHandler? {
    switch methodName {
    case "CreateDeviceRegistry":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createDeviceRegistry(request: request, context: context)
        }
      }

    case "GetDeviceRegistry":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDeviceRegistry(request: request, context: context)
        }
      }

    case "UpdateDeviceRegistry":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateDeviceRegistry(request: request, context: context)
        }
      }

    case "DeleteDeviceRegistry":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteDeviceRegistry(request: request, context: context)
        }
      }

    case "ListDeviceRegistries":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDeviceRegistries(request: request, context: context)
        }
      }

    case "CreateDevice":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.createDevice(request: request, context: context)
        }
      }

    case "GetDevice":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.getDevice(request: request, context: context)
        }
      }

    case "UpdateDevice":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.updateDevice(request: request, context: context)
        }
      }

    case "DeleteDevice":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.deleteDevice(request: request, context: context)
        }
      }

    case "ListDevices":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDevices(request: request, context: context)
        }
      }

    case "ModifyCloudToDeviceConfig":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.modifyCloudToDeviceConfig(request: request, context: context)
        }
      }

    case "ListDeviceConfigVersions":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDeviceConfigVersions(request: request, context: context)
        }
      }

    case "ListDeviceStates":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.listDeviceStates(request: request, context: context)
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

    case "SendCommandToDevice":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.sendCommandToDevice(request: request, context: context)
        }
      }

    case "BindDeviceToGateway":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.bindDeviceToGateway(request: request, context: context)
        }
      }

    case "UnbindDeviceFromGateway":
      return CallHandlerFactory.makeUnary(callHandlerContext: callHandlerContext) { context in
        return { request in
          self.unbindDeviceFromGateway(request: request, context: context)
        }
      }

    default: return nil
    }
  }
}

