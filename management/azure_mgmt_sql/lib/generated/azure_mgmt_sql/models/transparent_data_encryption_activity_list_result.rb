# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a List Azure SQL Database Transparent Data
    # Encryption Activity request.
    #
    class TransparentDataEncryptionActivityListResult

      include MsRestAzure

      # @return [Array<TransparentDataEncryptionActivity>] The list of Azure
      # SQL Database Transparent Data Encryption Activities.
      attr_accessor :value


      #
      # Mapper for TransparentDataEncryptionActivityListResult class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TransparentDataEncryptionActivityListResult',
          type: {
            name: 'Composite',
            class_name: 'TransparentDataEncryptionActivityListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'TransparentDataEncryptionActivityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TransparentDataEncryptionActivity'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
