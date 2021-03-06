# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Object that represents a SSL-enabled host name.
    #
    class HostNameSslState

      include MsRestAzure

      # @return [String] Host name
      attr_accessor :name

      # @return [SslState] SSL type. Possible values include: 'Disabled',
      # 'SniEnabled', 'IpBasedEnabled'
      attr_accessor :ssl_state

      # @return [String] Virtual IP address assigned to the host name if IP
      # based SSL is enabled
      attr_accessor :virtual_ip

      # @return [String] SSL cert thumbprint
      attr_accessor :thumbprint

      # @return [Boolean] Set this flag to update existing host name
      attr_accessor :to_update


      #
      # Mapper for HostNameSslState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HostNameSslState',
          type: {
            name: 'Composite',
            class_name: 'HostNameSslState',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              ssl_state: {
                required: true,
                serialized_name: 'sslState',
                type: {
                  name: 'Enum',
                  module: 'SslState'
                }
              },
              virtual_ip: {
                required: false,
                serialized_name: 'virtualIP',
                type: {
                  name: 'String'
                }
              },
              thumbprint: {
                required: false,
                serialized_name: 'thumbprint',
                type: {
                  name: 'String'
                }
              },
              to_update: {
                required: false,
                serialized_name: 'toUpdate',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
