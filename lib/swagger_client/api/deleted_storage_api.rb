=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'uri'

module SwaggerClient
  class DeletedStorageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets the specified deleted sas definition.
    # The Get Deleted SAS Definition operation returns the specified deleted SAS definition along with its attributes. This operation requires the storage/getsas permission.
    # @param storage_account_name The name of the storage account.
    # @param sas_definition_name The name of the SAS definition.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [DeletedSasDefinitionBundle]
    def get_deleted_sas_definition(storage_account_name, sas_definition_name, api_version, opts = {})
      data, _status_code, _headers = get_deleted_sas_definition_with_http_info(storage_account_name, sas_definition_name, api_version, opts)
      data
    end

    # Gets the specified deleted sas definition.
    # The Get Deleted SAS Definition operation returns the specified deleted SAS definition along with its attributes. This operation requires the storage/getsas permission.
    # @param storage_account_name The name of the storage account.
    # @param sas_definition_name The name of the SAS definition.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedSasDefinitionBundle, Fixnum, Hash)>] DeletedSasDefinitionBundle data, response status code and response headers
    def get_deleted_sas_definition_with_http_info(storage_account_name, sas_definition_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedStorageApi.get_deleted_sas_definition ...'
      end
      # verify the required parameter 'storage_account_name' is set
      if @api_client.config.client_side_validation && storage_account_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_account_name' when calling DeletedStorageApi.get_deleted_sas_definition"
      end
      if @api_client.config.client_side_validation && storage_account_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'storage_account_name' when calling DeletedStorageApi.get_deleted_sas_definition, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'sas_definition_name' is set
      if @api_client.config.client_side_validation && sas_definition_name.nil?
        fail ArgumentError, "Missing the required parameter 'sas_definition_name' when calling DeletedStorageApi.get_deleted_sas_definition"
      end
      if @api_client.config.client_side_validation && sas_definition_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'sas_definition_name' when calling DeletedStorageApi.get_deleted_sas_definition, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedStorageApi.get_deleted_sas_definition"
      end
      # resource path
      local_var_path = '/deletedstorage/{storage-account-name}/sas/{sas-definition-name}'.sub('{' + 'storage-account-name' + '}', storage_account_name.to_s).sub('{' + 'sas-definition-name' + '}', sas_definition_name.to_s)

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
        :return_type => 'DeletedSasDefinitionBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedStorageApi#get_deleted_sas_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists deleted SAS definitions for the specified vault and storage account.
    # The Get Deleted Sas Definitions operation returns the SAS definitions that have been deleted for a vault enabled for soft-delete. This operation requires the storage/listsas permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
    # @return [DeletedSasDefinitionListResult]
    def get_deleted_sas_definitions(storage_account_name, api_version, opts = {})
      data, _status_code, _headers = get_deleted_sas_definitions_with_http_info(storage_account_name, api_version, opts)
      data
    end

    # Lists deleted SAS definitions for the specified vault and storage account.
    # The Get Deleted Sas Definitions operation returns the SAS definitions that have been deleted for a vault enabled for soft-delete. This operation requires the storage/listsas permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
    # @return [Array<(DeletedSasDefinitionListResult, Fixnum, Hash)>] DeletedSasDefinitionListResult data, response status code and response headers
    def get_deleted_sas_definitions_with_http_info(storage_account_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedStorageApi.get_deleted_sas_definitions ...'
      end
      # verify the required parameter 'storage_account_name' is set
      if @api_client.config.client_side_validation && storage_account_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_account_name' when calling DeletedStorageApi.get_deleted_sas_definitions"
      end
      if @api_client.config.client_side_validation && storage_account_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'storage_account_name' when calling DeletedStorageApi.get_deleted_sas_definitions, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedStorageApi.get_deleted_sas_definitions"
      end
      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] > 25
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling DeletedStorageApi.get_deleted_sas_definitions, must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] < 1
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling DeletedStorageApi.get_deleted_sas_definitions, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/deletedstorage/{storage-account-name}/sas'.sub('{' + 'storage-account-name' + '}', storage_account_name.to_s)

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
        :return_type => 'DeletedSasDefinitionListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedStorageApi#get_deleted_sas_definitions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Gets the specified deleted storage account.
    # The Get Deleted Storage Account operation returns the specified deleted storage account along with its attributes. This operation requires the storage/get permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [DeletedStorageBundle]
    def get_deleted_storage_account(storage_account_name, api_version, opts = {})
      data, _status_code, _headers = get_deleted_storage_account_with_http_info(storage_account_name, api_version, opts)
      data
    end

    # Gets the specified deleted storage account.
    # The Get Deleted Storage Account operation returns the specified deleted storage account along with its attributes. This operation requires the storage/get permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeletedStorageBundle, Fixnum, Hash)>] DeletedStorageBundle data, response status code and response headers
    def get_deleted_storage_account_with_http_info(storage_account_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedStorageApi.get_deleted_storage_account ...'
      end
      # verify the required parameter 'storage_account_name' is set
      if @api_client.config.client_side_validation && storage_account_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_account_name' when calling DeletedStorageApi.get_deleted_storage_account"
      end
      if @api_client.config.client_side_validation && storage_account_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'storage_account_name' when calling DeletedStorageApi.get_deleted_storage_account, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedStorageApi.get_deleted_storage_account"
      end
      # resource path
      local_var_path = '/deletedstorage/{storage-account-name}'.sub('{' + 'storage-account-name' + '}', storage_account_name.to_s)

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
        :return_type => 'DeletedStorageBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedStorageApi#get_deleted_storage_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists deleted storage accounts for the specified vault.
    # The Get Deleted Storage Accounts operation returns the storage accounts that have been deleted for a vault enabled for soft-delete. This operation requires the storage/list permission.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
    # @return [DeletedStorageListResult]
    def get_deleted_storage_accounts(api_version, opts = {})
      data, _status_code, _headers = get_deleted_storage_accounts_with_http_info(api_version, opts)
      data
    end

    # Lists deleted storage accounts for the specified vault.
    # The Get Deleted Storage Accounts operation returns the storage accounts that have been deleted for a vault enabled for soft-delete. This operation requires the storage/list permission.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
    # @return [Array<(DeletedStorageListResult, Fixnum, Hash)>] DeletedStorageListResult data, response status code and response headers
    def get_deleted_storage_accounts_with_http_info(api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedStorageApi.get_deleted_storage_accounts ...'
      end
      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedStorageApi.get_deleted_storage_accounts"
      end
      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] > 25
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling DeletedStorageApi.get_deleted_storage_accounts, must be smaller than or equal to 25.'
      end

      if @api_client.config.client_side_validation && !opts[:'maxresults'].nil? && opts[:'maxresults'] < 1
        fail ArgumentError, 'invalid value for "opts[:"maxresults"]" when calling DeletedStorageApi.get_deleted_storage_accounts, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/deletedstorage'

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
        :return_type => 'DeletedStorageListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedStorageApi#get_deleted_storage_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Permanently deletes the specified storage account.
    # The purge deleted storage account operation removes the secret permanently, without the possibility of recovery. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/purge permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def purge_deleted_storage_account(storage_account_name, api_version, opts = {})
      purge_deleted_storage_account_with_http_info(storage_account_name, api_version, opts)
      nil
    end

    # Permanently deletes the specified storage account.
    # The purge deleted storage account operation removes the secret permanently, without the possibility of recovery. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/purge permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def purge_deleted_storage_account_with_http_info(storage_account_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedStorageApi.purge_deleted_storage_account ...'
      end
      # verify the required parameter 'storage_account_name' is set
      if @api_client.config.client_side_validation && storage_account_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_account_name' when calling DeletedStorageApi.purge_deleted_storage_account"
      end
      if @api_client.config.client_side_validation && storage_account_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'storage_account_name' when calling DeletedStorageApi.purge_deleted_storage_account, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedStorageApi.purge_deleted_storage_account"
      end
      # resource path
      local_var_path = '/deletedstorage/{storage-account-name}'.sub('{' + 'storage-account-name' + '}', storage_account_name.to_s)

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
        @api_client.config.logger.debug "API called: DeletedStorageApi#purge_deleted_storage_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Recovers the deleted SAS definition.
    # Recovers the deleted SAS definition for the specified storage account. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.
    # @param storage_account_name The name of the storage account.
    # @param sas_definition_name The name of the SAS definition.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [SasDefinitionBundle]
    def recover_deleted_sas_definition(storage_account_name, sas_definition_name, api_version, opts = {})
      data, _status_code, _headers = recover_deleted_sas_definition_with_http_info(storage_account_name, sas_definition_name, api_version, opts)
      data
    end

    # Recovers the deleted SAS definition.
    # Recovers the deleted SAS definition for the specified storage account. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.
    # @param storage_account_name The name of the storage account.
    # @param sas_definition_name The name of the SAS definition.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SasDefinitionBundle, Fixnum, Hash)>] SasDefinitionBundle data, response status code and response headers
    def recover_deleted_sas_definition_with_http_info(storage_account_name, sas_definition_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedStorageApi.recover_deleted_sas_definition ...'
      end
      # verify the required parameter 'storage_account_name' is set
      if @api_client.config.client_side_validation && storage_account_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_account_name' when calling DeletedStorageApi.recover_deleted_sas_definition"
      end
      if @api_client.config.client_side_validation && storage_account_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'storage_account_name' when calling DeletedStorageApi.recover_deleted_sas_definition, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'sas_definition_name' is set
      if @api_client.config.client_side_validation && sas_definition_name.nil?
        fail ArgumentError, "Missing the required parameter 'sas_definition_name' when calling DeletedStorageApi.recover_deleted_sas_definition"
      end
      if @api_client.config.client_side_validation && sas_definition_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'sas_definition_name' when calling DeletedStorageApi.recover_deleted_sas_definition, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedStorageApi.recover_deleted_sas_definition"
      end
      # resource path
      local_var_path = '/deletedstorage/{storage-account-name}/sas/{sas-definition-name}/recover'.sub('{' + 'storage-account-name' + '}', storage_account_name.to_s).sub('{' + 'sas-definition-name' + '}', sas_definition_name.to_s)

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
        :return_type => 'SasDefinitionBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedStorageApi#recover_deleted_sas_definition\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Recovers the deleted storage account.
    # Recovers the deleted storage account in the specified vault. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [StorageBundle]
    def recover_deleted_storage_account(storage_account_name, api_version, opts = {})
      data, _status_code, _headers = recover_deleted_storage_account_with_http_info(storage_account_name, api_version, opts)
      data
    end

    # Recovers the deleted storage account.
    # Recovers the deleted storage account in the specified vault. This operation can only be performed on a soft-delete enabled vault. This operation requires the storage/recover permission.
    # @param storage_account_name The name of the storage account.
    # @param api_version Client API version.
    # @param [Hash] opts the optional parameters
    # @return [Array<(StorageBundle, Fixnum, Hash)>] StorageBundle data, response status code and response headers
    def recover_deleted_storage_account_with_http_info(storage_account_name, api_version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeletedStorageApi.recover_deleted_storage_account ...'
      end
      # verify the required parameter 'storage_account_name' is set
      if @api_client.config.client_side_validation && storage_account_name.nil?
        fail ArgumentError, "Missing the required parameter 'storage_account_name' when calling DeletedStorageApi.recover_deleted_storage_account"
      end
      if @api_client.config.client_side_validation && storage_account_name !~ Regexp.new(/^[0-9a-zA-Z]+$/)
        fail ArgumentError, "invalid value for 'storage_account_name' when calling DeletedStorageApi.recover_deleted_storage_account, must conform to the pattern /^[0-9a-zA-Z]+$/."
      end

      # verify the required parameter 'api_version' is set
      if @api_client.config.client_side_validation && api_version.nil?
        fail ArgumentError, "Missing the required parameter 'api_version' when calling DeletedStorageApi.recover_deleted_storage_account"
      end
      # resource path
      local_var_path = '/deletedstorage/{storage-account-name}/recover'.sub('{' + 'storage-account-name' + '}', storage_account_name.to_s)

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
        :return_type => 'StorageBundle')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeletedStorageApi#recover_deleted_storage_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
