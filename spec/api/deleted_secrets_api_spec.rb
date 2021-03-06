=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::DeletedSecretsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DeletedSecretsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::DeletedSecretsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DeletedSecretsApi' do
    it 'should create an instance of DeletedSecretsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::DeletedSecretsApi)
    end
  end

  # unit tests for get_deleted_secret
  # Gets the specified deleted secret.
  # The Get Deleted Secret operation returns the specified deleted secret along with its attributes. This operation requires the secrets/get permission.
  # @param secret_name The name of the secret.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [DeletedSecretBundle]
  describe 'get_deleted_secret test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_deleted_secrets
  # Lists deleted secrets for the specified vault.
  # The Get Deleted Secrets operation returns the secrets that have been deleted for a vault enabled for soft-delete. This operation requires the secrets/list permission.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :maxresults Maximum number of results to return in a page. If not specified the service will return up to 25 results.
  # @return [DeletedSecretListResult]
  describe 'get_deleted_secrets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for purge_deleted_secret
  # Permanently deletes the specified secret.
  # The purge deleted secret operation removes the secret permanently, without the possibility of recovery. This operation can only be enabled on a soft-delete enabled vault. This operation requires the secrets/purge permission.
  # @param secret_name The name of the secret.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'purge_deleted_secret test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for recover_deleted_secret
  # Recovers the deleted secret to the latest version.
  # Recovers the deleted secret in the specified vault. This operation can only be performed on a soft-delete enabled vault. This operation requires the secrets/recover permission.
  # @param secret_name The name of the deleted secret.
  # @param api_version Client API version.
  # @param [Hash] opts the optional parameters
  # @return [SecretBundle]
  describe 'recover_deleted_secret test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
