=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.2.9
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  class Organisation
    # Unique Xero identifier
    attr_accessor :organisation_id
    
    # Display a unique key used for Xero-to-Xero transactions
    attr_accessor :api_key
    
    # Display name of organisation shown in Xero
    attr_accessor :name
    
    # Organisation name shown on Reports
    attr_accessor :legal_name
    
    # Boolean to describe if organisation is registered with a local tax authority i.e. true, false
    attr_accessor :pays_tax
    
    # See Version Types
    attr_accessor :version
    AU = "AU".freeze
    NZ = "NZ".freeze
    GLOBAL = "GLOBAL".freeze
    UK = "UK".freeze
    US = "US".freeze
    AUONRAMP = "AUONRAMP".freeze
    NZONRAMP = "NZONRAMP".freeze
    GLOBALONRAMP = "GLOBALONRAMP".freeze
    UKONRAMP = "UKONRAMP".freeze
    USONRAMP = "USONRAMP".freeze
    
    # Organisation Type
    attr_accessor :organisation_type
    ACCOUNTING_PRACTICE = "ACCOUNTING_PRACTICE".freeze
    COMPANY = "COMPANY".freeze
    CHARITY = "CHARITY".freeze
    CLUB_OR_SOCIETY = "CLUB_OR_SOCIETY".freeze
    LOOK_THROUGH_COMPANY = "LOOK_THROUGH_COMPANY".freeze
    NOT_FOR_PROFIT = "NOT_FOR_PROFIT".freeze
    PARTNERSHIP = "PARTNERSHIP".freeze
    S_CORPORATION = "S_CORPORATION".freeze
    SELF_MANAGED_SUPERANNUATION_FUND = "SELF_MANAGED_SUPERANNUATION_FUND".freeze
    SOLE_TRADER = "SOLE_TRADER".freeze
    SUPERANNUATION_FUND = "SUPERANNUATION_FUND".freeze
    TRUST = "TRUST".freeze
    

    attr_accessor :base_currency
    

    attr_accessor :country_code
    
    # Boolean to describe if organisation is a demo company.
    attr_accessor :is_demo_company
    
    # Will be set to ACTIVE if you can connect to organisation via the Xero API
    attr_accessor :organisation_status
    
    # Shows for New Zealand, Australian and UK organisations
    attr_accessor :registration_number
    
    # Shown if set. US Only.
    attr_accessor :employer_identification_number
    
    # Shown if set. Displays in the Xero UI as Tax File Number (AU), GST Number (NZ), VAT Number (UK) and Tax ID Number (US & Global).
    attr_accessor :tax_number
    
    # Calendar day e.g. 0-31
    attr_accessor :financial_year_end_day
    
    # Calendar Month e.g. 1-12
    attr_accessor :financial_year_end_month
    
    # The accounting basis used for tax returns. See Sales Tax Basis
    attr_accessor :sales_tax_basis
    PAYMENTS = "PAYMENTS".freeze
    INVOICE = "INVOICE".freeze
    NONE = "NONE".freeze
    CASH = "CASH".freeze
    ACCRUAL = "ACCRUAL".freeze
    FLATRATECASH = "FLATRATECASH".freeze
    FLATRATEACCRUAL = "FLATRATEACCRUAL".freeze
    ACCRUALS = "ACCRUALS".freeze
    
    # The frequency with which tax returns are processed. See Sales Tax Period
    attr_accessor :sales_tax_period
    MONTHLY = "MONTHLY".freeze
    QUARTERLY1 = "QUARTERLY1".freeze
    QUARTERLY2 = "QUARTERLY2".freeze
    QUARTERLY3 = "QUARTERLY3".freeze
    ANNUALLY = "ANNUALLY".freeze
    ONEMONTHS = "ONEMONTHS".freeze
    TWOMONTHS = "TWOMONTHS".freeze
    SIXMONTHS = "SIXMONTHS".freeze
    N1_MONTHLY = "1MONTHLY".freeze
    N2_MONTHLY = "2MONTHLY".freeze
    N3_MONTHLY = "3MONTHLY".freeze
    N6_MONTHLY = "6MONTHLY".freeze
    QUARTERLY = "QUARTERLY".freeze
    YEARLY = "YEARLY".freeze
    # NONE = "NONE".freeze # duplicate definition in XeroAPI/Xero-OpenAPI
    
    # The default for LineAmountTypes on sales transactions
    attr_accessor :default_sales_tax
    
    # The default for LineAmountTypes on purchase transactions
    attr_accessor :default_purchases_tax
    
    # Shown if set. See lock dates
    attr_accessor :period_lock_date
    
    # Shown if set. See lock dates
    attr_accessor :end_of_year_lock_date
    
    # Timestamp when the organisation was created in Xero
    attr_accessor :created_date_utc
    

    attr_accessor :timezone
    
    # Organisation Entity Type
    attr_accessor :organisation_entity_type
    # ACCOUNTING_PRACTICE = "ACCOUNTING_PRACTICE".freeze # duplicate definition in XeroAPI/Xero-OpenAPI
    # COMPANY = "COMPANY".freeze # duplicate definition in XeroAPI/Xero-OpenAPI
    # CHARITY = "CHARITY".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # CLUB_OR_SOCIETY = "CLUB_OR_SOCIETY".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # LOOK_THROUGH_COMPANY = "LOOK_THROUGH_COMPANY".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # NOT_FOR_PROFIT = "NOT_FOR_PROFIT".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # PARTNERSHIP = "PARTNERSHIP".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # S_CORPORATION = "S_CORPORATION".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # SELF_MANAGED_SUPERANNUATION_FUND = "SELF_MANAGED_SUPERANNUATION_FUND".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # SOLE_TRADER = "SOLE_TRADER".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # SUPERANNUATION_FUND = "SUPERANNUATION_FUND".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    # TRUST = "TRUST".freeze  # duplicate definition in XeroAPI/Xero-OpenAPI
    
    # A unique identifier for the organisation. Potential uses.
    attr_accessor :short_code
    
    # Organisation Classes describe which plan the Xero organisation is on (e.g. DEMO, TRIAL, PREMIUM)
    attr_accessor :_class
    DEMO = "DEMO".freeze
    TRIAL = "TRIAL".freeze
    STARTER = "STARTER".freeze
    STANDARD = "STANDARD".freeze
    PREMIUM = "PREMIUM".freeze
    PREMIUM_20 = "PREMIUM_20".freeze
    PREMIUM_50 = "PREMIUM_50".freeze
    PREMIUM_100 = "PREMIUM_100".freeze
    LEDGER = "LEDGER".freeze
    GST_CASHBOOK = "GST_CASHBOOK".freeze
    NON_GST_CASHBOOK = "NON_GST_CASHBOOK".freeze
    
    # BUSINESS or PARTNER. Partner edition organisations are sold exclusively through accounting partners and have restricted functionality (e.g. no access to invoicing)
    attr_accessor :edition
    BUSINESS = "BUSINESS".freeze
    PARTNER = "PARTNER".freeze
    
    # Description of business type as defined in Organisation settings
    attr_accessor :line_of_business
    
    # Address details for organisation – see Addresses
    attr_accessor :addresses
    
    # Phones details for organisation – see Phones
    attr_accessor :phones
    
    # Organisation profile links for popular services such as Facebook,Twitter, GooglePlus and LinkedIn. You can also add link to your website here. Shown if Organisation settings  is updated in Xero. See ExternalLinks below
    attr_accessor :external_links
    

    attr_accessor :payment_terms
    
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
        :'organisation_id' => :'OrganisationID',
        :'api_key' => :'APIKey',
        :'name' => :'Name',
        :'legal_name' => :'LegalName',
        :'pays_tax' => :'PaysTax',
        :'version' => :'Version',
        :'organisation_type' => :'OrganisationType',
        :'base_currency' => :'BaseCurrency',
        :'country_code' => :'CountryCode',
        :'is_demo_company' => :'IsDemoCompany',
        :'organisation_status' => :'OrganisationStatus',
        :'registration_number' => :'RegistrationNumber',
        :'employer_identification_number' => :'EmployerIdentificationNumber',
        :'tax_number' => :'TaxNumber',
        :'financial_year_end_day' => :'FinancialYearEndDay',
        :'financial_year_end_month' => :'FinancialYearEndMonth',
        :'sales_tax_basis' => :'SalesTaxBasis',
        :'sales_tax_period' => :'SalesTaxPeriod',
        :'default_sales_tax' => :'DefaultSalesTax',
        :'default_purchases_tax' => :'DefaultPurchasesTax',
        :'period_lock_date' => :'PeriodLockDate',
        :'end_of_year_lock_date' => :'EndOfYearLockDate',
        :'created_date_utc' => :'CreatedDateUTC',
        :'timezone' => :'Timezone',
        :'organisation_entity_type' => :'OrganisationEntityType',
        :'short_code' => :'ShortCode',
        :'_class' => :'Class',
        :'edition' => :'Edition',
        :'line_of_business' => :'LineOfBusiness',
        :'addresses' => :'Addresses',
        :'phones' => :'Phones',
        :'external_links' => :'ExternalLinks',
        :'payment_terms' => :'PaymentTerms'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'organisation_id' => :'String',
        :'api_key' => :'String',
        :'name' => :'String',
        :'legal_name' => :'String',
        :'pays_tax' => :'Boolean',
        :'version' => :'String',
        :'organisation_type' => :'String',
        :'base_currency' => :'CurrencyCode',
        :'country_code' => :'CountryCode',
        :'is_demo_company' => :'Boolean',
        :'organisation_status' => :'String',
        :'registration_number' => :'String',
        :'employer_identification_number' => :'String',
        :'tax_number' => :'String',
        :'financial_year_end_day' => :'Integer',
        :'financial_year_end_month' => :'Integer',
        :'sales_tax_basis' => :'String',
        :'sales_tax_period' => :'String',
        :'default_sales_tax' => :'String',
        :'default_purchases_tax' => :'String',
        :'period_lock_date' => :'Date',
        :'end_of_year_lock_date' => :'Date',
        :'created_date_utc' => :'DateTime',
        :'timezone' => :'TimeZone',
        :'organisation_entity_type' => :'String',
        :'short_code' => :'String',
        :'_class' => :'String',
        :'edition' => :'String',
        :'line_of_business' => :'String',
        :'addresses' => :'Array<Address>',
        :'phones' => :'Array<Phone>',
        :'external_links' => :'Array<ExternalLink>',
        :'payment_terms' => :'PaymentTerm'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::Organisation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::Organisation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'organisation_id')
        self.organisation_id = attributes[:'organisation_id']
      end

      if attributes.key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'legal_name')
        self.legal_name = attributes[:'legal_name']
      end

      if attributes.key?(:'pays_tax')
        self.pays_tax = attributes[:'pays_tax']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'organisation_type')
        self.organisation_type = attributes[:'organisation_type']
      end

      if attributes.key?(:'base_currency')
        self.base_currency = attributes[:'base_currency']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'is_demo_company')
        self.is_demo_company = attributes[:'is_demo_company']
      end

      if attributes.key?(:'organisation_status')
        self.organisation_status = attributes[:'organisation_status']
      end

      if attributes.key?(:'registration_number')
        self.registration_number = attributes[:'registration_number']
      end

      if attributes.key?(:'employer_identification_number')
        self.employer_identification_number = attributes[:'employer_identification_number']
      end

      if attributes.key?(:'tax_number')
        self.tax_number = attributes[:'tax_number']
      end

      if attributes.key?(:'financial_year_end_day')
        self.financial_year_end_day = attributes[:'financial_year_end_day']
      end

      if attributes.key?(:'financial_year_end_month')
        self.financial_year_end_month = attributes[:'financial_year_end_month']
      end

      if attributes.key?(:'sales_tax_basis')
        self.sales_tax_basis = attributes[:'sales_tax_basis']
      end

      if attributes.key?(:'sales_tax_period')
        self.sales_tax_period = attributes[:'sales_tax_period']
      end

      if attributes.key?(:'default_sales_tax')
        self.default_sales_tax = attributes[:'default_sales_tax']
      end

      if attributes.key?(:'default_purchases_tax')
        self.default_purchases_tax = attributes[:'default_purchases_tax']
      end

      if attributes.key?(:'period_lock_date')
        self.period_lock_date = attributes[:'period_lock_date']
      end

      if attributes.key?(:'end_of_year_lock_date')
        self.end_of_year_lock_date = attributes[:'end_of_year_lock_date']
      end

      if attributes.key?(:'created_date_utc')
        self.created_date_utc = attributes[:'created_date_utc']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'organisation_entity_type')
        self.organisation_entity_type = attributes[:'organisation_entity_type']
      end

      if attributes.key?(:'short_code')
        self.short_code = attributes[:'short_code']
      end

      if attributes.key?(:'_class')
        self._class = attributes[:'_class']
      end

      if attributes.key?(:'edition')
        self.edition = attributes[:'edition']
      end

      if attributes.key?(:'line_of_business')
        self.line_of_business = attributes[:'line_of_business']
      end

      if attributes.key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.key?(:'phones')
        if (value = attributes[:'phones']).is_a?(Array)
          self.phones = value
        end
      end

      if attributes.key?(:'external_links')
        if (value = attributes[:'external_links']).is_a?(Array)
          self.external_links = value
        end
      end

      if attributes.key?(:'payment_terms')
        self.payment_terms = attributes[:'payment_terms']
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
      version_validator = EnumAttributeValidator.new('String', ["AU", "NZ", "GLOBAL", "UK", "US", "AUONRAMP", "NZONRAMP", "GLOBALONRAMP", "UKONRAMP", "USONRAMP"])
      return false unless version_validator.valid?(@version)
      organisation_type_validator = EnumAttributeValidator.new('String', ["ACCOUNTING_PRACTICE", "COMPANY", "CHARITY", "CLUB_OR_SOCIETY", "LOOK_THROUGH_COMPANY", "NOT_FOR_PROFIT", "PARTNERSHIP", "S_CORPORATION", "SELF_MANAGED_SUPERANNUATION_FUND", "SOLE_TRADER", "SUPERANNUATION_FUND", "TRUST"])
      return false unless organisation_type_validator.valid?(@organisation_type)
      sales_tax_basis_validator = EnumAttributeValidator.new('String', ["PAYMENTS", "INVOICE", "NONE", "CASH", "ACCRUAL", "FLATRATECASH", "FLATRATEACCRUAL", "ACCRUALS"])
      return false unless sales_tax_basis_validator.valid?(@sales_tax_basis)
      sales_tax_period_validator = EnumAttributeValidator.new('String', ["MONTHLY", "QUARTERLY1", "QUARTERLY2", "QUARTERLY3", "ANNUALLY", "ONEMONTHS", "TWOMONTHS", "SIXMONTHS", "1MONTHLY", "2MONTHLY", "3MONTHLY", "6MONTHLY", "QUARTERLY", "YEARLY", "NONE"])
      return false unless sales_tax_period_validator.valid?(@sales_tax_period)
      organisation_entity_type_validator = EnumAttributeValidator.new('String', ["ACCOUNTING_PRACTICE", "COMPANY", "CHARITY", "CLUB_OR_SOCIETY", "LOOK_THROUGH_COMPANY", "NOT_FOR_PROFIT", "PARTNERSHIP", "S_CORPORATION", "SELF_MANAGED_SUPERANNUATION_FUND", "SOLE_TRADER", "SUPERANNUATION_FUND", "TRUST"])
      return false unless organisation_entity_type_validator.valid?(@organisation_entity_type)
      _class_validator = EnumAttributeValidator.new('String', ["DEMO", "TRIAL", "STARTER", "STANDARD", "PREMIUM", "PREMIUM_20", "PREMIUM_50", "PREMIUM_100", "LEDGER", "GST_CASHBOOK", "NON_GST_CASHBOOK"])
      return false unless _class_validator.valid?(@_class)
      edition_validator = EnumAttributeValidator.new('String', ["BUSINESS", "PARTNER"])
      return false unless edition_validator.valid?(@edition)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] version Object to be assigned
    def version=(version)
      validator = EnumAttributeValidator.new('String', ["AU", "NZ", "GLOBAL", "UK", "US", "AUONRAMP", "NZONRAMP", "GLOBALONRAMP", "UKONRAMP", "USONRAMP"])
      unless validator.valid?(version)
        fail ArgumentError, "invalid value for \"version\", must be one of #{validator.allowable_values}."
      end
      @version = version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] organisation_type Object to be assigned
    def organisation_type=(organisation_type)
      validator = EnumAttributeValidator.new('String', ["ACCOUNTING_PRACTICE", "COMPANY", "CHARITY", "CLUB_OR_SOCIETY", "LOOK_THROUGH_COMPANY", "NOT_FOR_PROFIT", "PARTNERSHIP", "S_CORPORATION", "SELF_MANAGED_SUPERANNUATION_FUND", "SOLE_TRADER", "SUPERANNUATION_FUND", "TRUST"])
      unless validator.valid?(organisation_type)
        fail ArgumentError, "invalid value for \"organisation_type\", must be one of #{validator.allowable_values}."
      end
      @organisation_type = organisation_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sales_tax_basis Object to be assigned
    def sales_tax_basis=(sales_tax_basis)
      validator = EnumAttributeValidator.new('String', ["PAYMENTS", "INVOICE", "NONE", "CASH", "ACCRUAL", "FLATRATECASH", "FLATRATEACCRUAL", "ACCRUALS"])
      unless validator.valid?(sales_tax_basis)
        fail ArgumentError, "invalid value for \"sales_tax_basis\", must be one of #{validator.allowable_values}."
      end
      @sales_tax_basis = sales_tax_basis
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sales_tax_period Object to be assigned
    def sales_tax_period=(sales_tax_period)
      validator = EnumAttributeValidator.new('String', ["MONTHLY", "QUARTERLY1", "QUARTERLY2", "QUARTERLY3", "ANNUALLY", "ONEMONTHS", "TWOMONTHS", "SIXMONTHS", "1MONTHLY", "2MONTHLY", "3MONTHLY", "6MONTHLY", "QUARTERLY", "YEARLY", "NONE"])
      unless validator.valid?(sales_tax_period)
        fail ArgumentError, "invalid value for \"sales_tax_period\", must be one of #{validator.allowable_values}."
      end
      @sales_tax_period = sales_tax_period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] organisation_entity_type Object to be assigned
    def organisation_entity_type=(organisation_entity_type)
      validator = EnumAttributeValidator.new('String', ["ACCOUNTING_PRACTICE", "COMPANY", "CHARITY", "CLUB_OR_SOCIETY", "LOOK_THROUGH_COMPANY", "NOT_FOR_PROFIT", "PARTNERSHIP", "S_CORPORATION", "SELF_MANAGED_SUPERANNUATION_FUND", "SOLE_TRADER", "SUPERANNUATION_FUND", "TRUST"])
      unless validator.valid?(organisation_entity_type)
        fail ArgumentError, "invalid value for \"organisation_entity_type\", must be one of #{validator.allowable_values}."
      end
      @organisation_entity_type = organisation_entity_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _class Object to be assigned
    def _class=(_class)
      validator = EnumAttributeValidator.new('String', ["DEMO", "TRIAL", "STARTER", "STANDARD", "PREMIUM", "PREMIUM_20", "PREMIUM_50", "PREMIUM_100", "LEDGER", "GST_CASHBOOK", "NON_GST_CASHBOOK"])
      unless validator.valid?(_class)
        fail ArgumentError, "invalid value for \"_class\", must be one of #{validator.allowable_values}."
      end
      @_class = _class
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] edition Object to be assigned
    def edition=(edition)
      validator = EnumAttributeValidator.new('String', ["BUSINESS", "PARTNER"])
      unless validator.valid?(edition)
        fail ArgumentError, "invalid value for \"edition\", must be one of #{validator.allowable_values}."
      end
      @edition = edition
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          organisation_id == o.organisation_id &&
          api_key == o.api_key &&
          name == o.name &&
          legal_name == o.legal_name &&
          pays_tax == o.pays_tax &&
          version == o.version &&
          organisation_type == o.organisation_type &&
          base_currency == o.base_currency &&
          country_code == o.country_code &&
          is_demo_company == o.is_demo_company &&
          organisation_status == o.organisation_status &&
          registration_number == o.registration_number &&
          employer_identification_number == o.employer_identification_number &&
          tax_number == o.tax_number &&
          financial_year_end_day == o.financial_year_end_day &&
          financial_year_end_month == o.financial_year_end_month &&
          sales_tax_basis == o.sales_tax_basis &&
          sales_tax_period == o.sales_tax_period &&
          default_sales_tax == o.default_sales_tax &&
          default_purchases_tax == o.default_purchases_tax &&
          period_lock_date == o.period_lock_date &&
          end_of_year_lock_date == o.end_of_year_lock_date &&
          created_date_utc == o.created_date_utc &&
          timezone == o.timezone &&
          organisation_entity_type == o.organisation_entity_type &&
          short_code == o.short_code &&
          _class == o._class &&
          edition == o.edition &&
          line_of_business == o.line_of_business &&
          addresses == o.addresses &&
          phones == o.phones &&
          external_links == o.external_links &&
          payment_terms == o.payment_terms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [organisation_id, api_key, name, legal_name, pays_tax, version, organisation_type, base_currency, country_code, is_demo_company, organisation_status, registration_number, employer_identification_number, tax_number, financial_year_end_day, financial_year_end_month, sales_tax_basis, sales_tax_period, default_sales_tax, default_purchases_tax, period_lock_date, end_of_year_lock_date, created_date_utc, timezone, organisation_entity_type, short_code, _class, edition, line_of_business, addresses, phones, external_links, payment_terms].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
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
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
