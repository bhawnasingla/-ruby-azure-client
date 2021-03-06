=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::SecretProperties
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SecretProperties' do
  before do
    # run before each test
    @instance = SwaggerClient::SecretProperties.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SecretProperties' do
    it 'should create an instance of SecretProperties' do
      expect(@instance).to be_instance_of(SwaggerClient::SecretProperties)
    end
  end
  describe 'test attribute "content_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
