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

# Unit tests for SwaggerClient::KeyCreateParameters
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'KeyCreateParameters' do
  before do
    # run before each test
    @instance = SwaggerClient::KeyCreateParameters.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KeyCreateParameters' do
    it 'should create an instance of KeyCreateParameters' do
      expect(@instance).to be_instance_of(SwaggerClient::KeyCreateParameters)
    end
  end
  describe 'test attribute "kty"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["EC", "EC-HSM", "RSA", "RSA-HSM", "oct"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.kty = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "key_size"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "key_ops"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["encrypt", "decrypt", "sign", "verify", "wrapKey", "unwrapKey"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.key_ops = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "attributes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tags"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "crv"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["P-256", "P-384", "P-521", "P-256K"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.crv = value }.not_to raise_error
      # end
    end
  end

end
