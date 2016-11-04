# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::PowerBiEmbedded
  #
  # Client to manage your Power BI embedded workspace collections and retrieve
  # workspaces.
  #
  class Workspaces
    include Azure::ARM::PowerBiEmbedded::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Workspaces class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [PowerBIEmbeddedManagementClient] reference to the PowerBIEmbeddedManagementClient
    attr_reader :client

    #
    # Retrieves all existing Power BI Workspaces in the specified Workspace
    # Collection.
    #
    # @param resource_group_name [String] Azure resource group
    # @param workspace_collection_name [String] Power BI Embedded workspace
    # collection name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [WorkspaceList] operation results.
    #
    def list(resource_group_name, workspace_collection_name, custom_headers = nil)
      response = list_async(resource_group_name, workspace_collection_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieves all existing Power BI Workspaces in the specified Workspace
    # Collection.
    #
    # @param resource_group_name [String] Azure resource group
    # @param workspace_collection_name [String] Power BI Embedded workspace
    # collection name
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_group_name, workspace_collection_name, custom_headers = nil)
      list_async(resource_group_name, workspace_collection_name, custom_headers).value!
    end

    #
    # Retrieves all existing Power BI Workspaces in the specified Workspace
    # Collection.
    #
    # @param resource_group_name [String] Azure resource group
    # @param workspace_collection_name [String] Power BI Embedded workspace
    # collection name
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_group_name, workspace_collection_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'workspace_collection_name is nil' if workspace_collection_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PowerBI/workspaceCollections/{workspaceCollectionName}/workspaces'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceCollectionName' => workspace_collection_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = WorkspaceList.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
