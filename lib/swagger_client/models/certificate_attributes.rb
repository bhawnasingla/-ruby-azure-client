=begin
#KeyVaultClient

#The key vault client performs cryptographic key operations and vault operations against the Key Vault service.

OpenAPI spec version: 7.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module SwaggerClient
  # The certificate management attributes.
  class CertificateAttributes
    # Determines whether the object is enabled.
    attr_accessor :enabled

    # Not before date in UTC.
    attr_accessor :nbf

    # Expiry date in UTC.
    attr_accessor :exp

    # Creation time in UTC.
    attr_accessor :created

    # Last updated time in UTC.
    attr_accessor :updated

    # Reflects the deletion recovery level currently in effect for certificates in the current vault. If it contains 'Purgeable', the certificate can be permanently deleted by a privileged user; otherwise, only the system can purge the certificate, at the end of the retention interval.
    attr_accessor :recovery_level

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
        :'enabled' => :'enabled',
        :'nbf' => :'nbf',
        :'exp' => :'exp',
        :'created' => :'created',
        :'updated' => :'updated',
        :'recovery_level' => :'recoveryLevel'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'enabled' => :'BOOLEAN',
        :'nbf' => :'Integer',
        :'exp' => :'Integer',
        :'created' => :'Integer',
        :'updated' => :'Integer',
        :'recovery_level' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'nbf')
        self.nbf = attributes[:'nbf']
      end

      if attributes.has_key?(:'exp')
        self.exp = attributes[:'exp']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'recoveryLevel')
        self.recovery_level = attributes[:'recoveryLevel']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      recovery_level_validator = EnumAttributeValidator.new('String', ['Purgeable', 'Recoverable+Purgeable', 'Recoverable', 'Recoverable+ProtectedSubscription', 'CustomizedRecoverable+Purgeable', 'CustomizedRecoverable', 'CustomizedRecoverable+ProtectedSubscription'])
      return false unless recovery_level_validator.valid?(@recovery_level)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recovery_level Object to be assigned
    def recovery_level=(recovery_level)
      validator = EnumAttributeValidator.new('String', ['Purgeable', 'Recoverable+Purgeable', 'Recoverable', 'Recoverable+ProtectedSubscription', 'CustomizedRecoverable+Purgeable', 'CustomizedRecoverable', 'CustomizedRecoverable+ProtectedSubscription'])
      unless validator.valid?(recovery_level)
        fail ArgumentError, 'invalid value for "recovery_level", must be one of #{validator.allowable_values}.'
      end
      @recovery_level = recovery_level
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enabled == o.enabled &&
          nbf == o.nbf &&
          exp == o.exp &&
          created == o.created &&
          updated == o.updated &&
          recovery_level == o.recovery_level
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [enabled, nbf, exp, created, updated, recovery_level].hash
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