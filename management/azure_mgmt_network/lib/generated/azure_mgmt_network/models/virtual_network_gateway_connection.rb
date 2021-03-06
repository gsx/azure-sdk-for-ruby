# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # A common class for general resource information
    #
    class VirtualNetworkGatewayConnection < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The authorizationKey.
      attr_accessor :authorization_key

      # @return [VirtualNetworkGateway]
      attr_accessor :virtual_network_gateway1

      # @return [VirtualNetworkGateway]
      attr_accessor :virtual_network_gateway2

      # @return [LocalNetworkGateway]
      attr_accessor :local_network_gateway2

      # @return [VirtualNetworkGatewayConnectionType] Gateway connection type.
      # Possible values are: 'Ipsec','Vnet2Vnet','ExpressRoute', and
      # 'VPNClient. Possible values include: 'IPsec', 'Vnet2Vnet',
      # 'ExpressRoute', 'VPNClient'
      attr_accessor :connection_type

      # @return [Integer] The routing weight.
      attr_accessor :routing_weight

      # @return [String] The IPSec shared key.
      attr_accessor :shared_key

      # @return [VirtualNetworkGatewayConnectionStatus] Virtual network Gateway
      # connection status. Possible values are 'Unknown', 'Connecting',
      # 'Connected' and 'NotConnected'. Possible values include: 'Unknown',
      # 'Connecting', 'Connected', 'NotConnected'
      attr_accessor :connection_status

      # @return [Array<TunnelConnectionHealth>] Collection of all tunnels'
      # connection health status.
      attr_accessor :tunnel_connection_status

      # @return [Integer] The egress bytes transferred in this connection.
      attr_accessor :egress_bytes_transferred

      # @return [Integer] The ingress bytes transferred in this connection.
      attr_accessor :ingress_bytes_transferred

      # @return [SubResource] The reference to peerings resource.
      attr_accessor :peer

      # @return [Boolean] EnableBgp flag
      attr_accessor :enable_bgp

      # @return [String] The resource GUID property of the
      # VirtualNetworkGatewayConnection resource.
      attr_accessor :resource_guid

      # @return [String] The provisioning state of the
      # VirtualNetworkGatewayConnection resource. Possible values are:
      # 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for VirtualNetworkGatewayConnection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualNetworkGatewayConnection',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkGatewayConnection',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              authorization_key: {
                required: false,
                serialized_name: 'properties.authorizationKey',
                type: {
                  name: 'String'
                }
              },
              virtual_network_gateway1: {
                required: true,
                serialized_name: 'properties.virtualNetworkGateway1',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkGateway'
                }
              },
              virtual_network_gateway2: {
                required: false,
                serialized_name: 'properties.virtualNetworkGateway2',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualNetworkGateway'
                }
              },
              local_network_gateway2: {
                required: false,
                serialized_name: 'properties.localNetworkGateway2',
                type: {
                  name: 'Composite',
                  class_name: 'LocalNetworkGateway'
                }
              },
              connection_type: {
                required: true,
                serialized_name: 'properties.connectionType',
                type: {
                  name: 'String'
                }
              },
              routing_weight: {
                required: false,
                serialized_name: 'properties.routingWeight',
                type: {
                  name: 'Number'
                }
              },
              shared_key: {
                required: false,
                serialized_name: 'properties.sharedKey',
                type: {
                  name: 'String'
                }
              },
              connection_status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.connectionStatus',
                type: {
                  name: 'String'
                }
              },
              tunnel_connection_status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.tunnelConnectionStatus',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TunnelConnectionHealthElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TunnelConnectionHealth'
                      }
                  }
                }
              },
              egress_bytes_transferred: {
                required: false,
                read_only: true,
                serialized_name: 'properties.egressBytesTransferred',
                type: {
                  name: 'Number'
                }
              },
              ingress_bytes_transferred: {
                required: false,
                read_only: true,
                serialized_name: 'properties.ingressBytesTransferred',
                type: {
                  name: 'Number'
                }
              },
              peer: {
                required: false,
                serialized_name: 'properties.peer',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              enable_bgp: {
                required: false,
                serialized_name: 'properties.enableBgp',
                type: {
                  name: 'Boolean'
                }
              },
              resource_guid: {
                required: false,
                serialized_name: 'properties.resourceGuid',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
