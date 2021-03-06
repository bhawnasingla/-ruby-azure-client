=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module SwaggerClient
  # The key create parameters.
  class KeyCreateParameters
    # The type of key to create. For valid values, see JsonWebKeyType.
    attr_accessor :kty

    # The key size in bits. For example: 2048, 3072, or 4096 for RSA.
    attr_accessor :key_size

    attr_accessor :key_ops

    attr_accessor :attributes

    # Application specific metadata in the form of key-value pairs.
    attr_accessor :tags

    # Elliptic curve name. For valid values, see JsonWebKeyCurveName.
    attr_accessor :crv

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'kty' => :'kty',
        :'key_size' => :'key_size',
        :'key_ops' => :'key_ops',
        :'attributes' => :'attributes',
        :'tags' => :'tags',
        :'crv' => :'crv'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'kty' => :'String',
        :'key_size' => :'Integer',
        :'key_ops' => :'Array<String>',
        :'attributes' => :'KeyAttributes',
        :'tags' => :'Hash<String, String>',
        :'crv' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'kty')
        self.kty = attributes[:'kty']
      end

      if attributes.has_key?(:'key_size')
        self.key_size = attributes[:'key_size']
      end

      if attributes.has_key?(:'key_ops')
        if (value = attributes[:'key_ops']).is_a?(Array)
          self.key_ops = value
        end
      end

      if attributes.has_key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Hash)
          self.tags = value
        end
      end

      if attributes.has_key?(:'crv')
        self.crv = attributes[:'crv']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @kty.nil?
        invalid_properties.push('invalid value for "kty", kty cannot be nil.')
      end

      if @kty.to_s.length < 1
        invalid_properties.push('invalid value for "kty", the character length must be great than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @kty.nil?
      kty_validator = EnumAttributeValidator.new('String', ['EC', 'EC-HSM', 'RSA', 'RSA-HSM', 'oct'])
      return false unless kty_validator.valid?(@kty)
      return false if @kty.to_s.length < 1
      crv_validator = EnumAttributeValidator.new('String', ['P-256', 'P-384', 'P-521', 'P-256K'])
      return false unless crv_validator.valid?(@crv)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] kty Object to be assigned
    def kty=(kty)
      validator = EnumAttributeValidator.new('String', ['EC', 'EC-HSM', 'RSA', 'RSA-HSM', 'oct'])
      unless validator.valid?(kty)
        fail ArgumentError, 'invalid value for "kty", must be one of #{validator.allowable_values}.'
      end
      @kty = kty
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] crv Object to be assigned
    def crv=(crv)
      validator = EnumAttributeValidator.new('String', ['P-256', 'P-384', 'P-521', 'P-256K'])
      unless validator.valid?(crv)
        fail ArgumentError, 'invalid value for "crv", must be one of #{validator.allowable_values}.'
      end
      @crv = crv
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          kty == o.kty &&
          key_size == o.key_size &&
          key_ops == o.key_ops &&
          attributes == o.attributes &&
          tags == o.tags &&
          crv == o.crv
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [kty, key_size, key_ops, attributes, tags, crv].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
