=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'uri'

module SwaggerClient
  class DeletedKeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets the public part of a deleted key.
    # The Get Deleted Key operation is applicable for soft-delete enabled vaults. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/get permission. 
    # @param key_name The name of the key.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [DeletedKeyBundle]
    def get_deleted_key(key_name, api_version, opts = {})
      data, _status_code, _headers = get_deleted_key_with_http_info(key_name, api_version, opts)
      data
    end

    # Gets the public part of a deleted key.
    # The Get Deleted Key operation is applicable for soft-delete enabled vaults. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/get permission. 
    # @param key_name The name of the key.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedKeyBundle, Fixnum, Hash)>] DeletedKeyBundle data, response status code and response headers
    def get_deleted_key_with_http_info(key_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedKeysApi.get_deleted_key ...'
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling DeletedKeysApi.get_deleted_key"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedKeysApi.get_deleted_key"
      end
      # resource path
      local_var_path = '/deletedkeys/{key-name}'.sub('{' + 'key-name' + '}', key_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeletedKeyBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedKeysApi#get_deleted_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists the deleted keys in the specified vault.
    # Retrieves a list of the keys in the Key Vault as JSON Web Key structures that contain the public part of a deleted key. This operation includes deletion-specific information. The Get Deleted Keys operation is applicable for vaults enabled for soft-delete. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/list permission.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
    # @return [DeletedKeyListResult]
    def get_deleted_keys(api_version, opts = {})
      data, _status_code, _headers = get_deleted_keys_with_http_info(api_version, opts)
      data
    end

    # Lists the deleted keys in the specified vault.
    # Retrieves a list of the keys in the Key Vault as JSON Web Key structures that contain the public part of a deleted key. This operation includes deletion-specific information. The Get Deleted Keys operation is applicable for vaults enabled for soft-delete. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/list permission.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
    # @return [Array<(DeletedKeyListResult, Fixnum, Hash)>] DeletedKeyListResult data, response status code and response headers
    def get_deleted_keys_with_http_info(api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedKeysApi.get_deleted_keys ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedKeysApi.get_deleted_keys"
      end
      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] > 25
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling DeletedKeysApi.get_deleted_keys, must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] < 1
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling DeletedKeysApi.get_deleted_keys, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/deletedkeys'

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version
      query_params[:'maxresults'] = opts[:'maxresults'] if !opts[:'maxresults'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DeletedKeyListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedKeysApi#get_deleted_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Permanently deletes the specified key.
    # The Purge Deleted Key operation is applicable for soft-delete enabled vaults. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/purge permission.
    # @param key_name The name of the key
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def purge_deleted_key(key_name, api_version, opts = {})
      purge_deleted_key_with_http_info(key_name, api_version, opts)
      nil
    end

    # Permanently deletes the specified key.
    # The Purge Deleted Key operation is applicable for soft-delete enabled vaults. While the operation can be invoked on any vault, it will return an error if invoked on a non soft-delete enabled vault. This operation requires the keys/purge permission.
    # @param key_name The name of the key
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def purge_deleted_key_with_http_info(key_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedKeysApi.purge_deleted_key ...'
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling DeletedKeysApi.purge_deleted_key"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedKeysApi.purge_deleted_key"
      end
      # resource path
      local_var_path = '/deletedkeys/{key-name}'.sub('{' + 'key-name' + '}', key_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedKeysApi#purge_deleted_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Recovers the deleted key to its latest version.
    # The Recover Deleted Key operation is applicable for deleted keys in soft-delete enabled vaults. It recovers the deleted key back to its latest version under /keys. An attempt to recover an non-deleted key will return an error. Consider this the inverse of the delete operation on soft-delete enabled vaults. This operation requires the keys/recover permission.
    # @param key_name The name of the deleted key.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [KeyBundle]
    def recover_deleted_key(key_name, api_version, opts = {})
      data, _status_code, _headers = recover_deleted_key_with_http_info(key_name, api_version, opts)
      data
    end

    # Recovers the deleted key to its latest version.
    # The Recover Deleted Key operation is applicable for deleted keys in soft-delete enabled vaults. It recovers the deleted key back to its latest version under /keys. An attempt to recover an non-deleted key will return an error. Consider this the inverse of the delete operation on soft-delete enabled vaults. This operation requires the keys/recover permission.
    # @param key_name The name of the deleted key.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(KeyBundle, Fixnum, Hash)>] KeyBundle data, response status code and response headers
    def recover_deleted_key_with_http_info(key_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedKeysApi.recover_deleted_key ...'
      end
      # verify the required parameter 'key_name' is set
      if @api_client.config.client_side_validation && key_name.nil?
        fail ArgumentError, "Missing the required parameter 'key_name' when calling DeletedKeysApi.recover_deleted_key"
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedKeysApi.recover_deleted_key"
      end
      # resource path
      local_var_path = '/deletedkeys/{key-name}/recover'.sub('{' + 'key-name' + '}', key_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'api-version'] = api_version

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'KeyBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedKeysApi#recover_deleted_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
