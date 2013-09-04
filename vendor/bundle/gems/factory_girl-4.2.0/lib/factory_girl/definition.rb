module FactoryGirl
  # @api private
  class Definition
    attr_reader :defined_traits, :declarations

    def initialize(name = nil, base_traits = [])
      @declarations      = DeclarationList.new(name)
      @callbacks         = []
      @defined_traits    = []
      @to_create         = nil
      @base_traits       = base_traits
      @additional_traits = []
      @constructor       = nil
      @attributes        = nil
      @compiled          = false
    end

    delegate :declare_attribute, to: :declarations

    def attributes
      @attributes ||= AttributeList.new.tap do |attribute_list|
        attribute_lists = aggregate_from_traits_and_self(:attributes) { declarations.attributes }
        attribute_lists.each do |attributes|
          attribute_list.apply_attributes attributes
        end
      end
    end

    def to_create(&block)
      if block_given?
        @to_create = block
      else
        aggregate_from_traits_and_self(:to_create) { @to_create }.last
      end
    end

    def constructor
      aggregate_from_traits_and_self(:constructor) { @constructor }.last
    end

    def callbacks
      aggregate_from_traits_and_self(:callbacks) { @callbacks }
    end

    def compile
      unless @compiled
        declarations.attributes

        defined_traits.each do |defined_trait|
          base_traits.each       {|bt| bt.define_trait defined_trait }
          additional_traits.each {|bt| bt.define_trait defined_trait }
        end

        @compiled = true
      end
    end

    def overridable
      declarations.overridable
      self
    end

    def inherit_traits(new_traits)
      @base_traits += new_traits
    end

    def append_traits(new_traits)
      @additional_traits += new_traits
    end

    def add_callback(callback)
      @callbacks << callback
    end

    def skip_create
      @to_create = ->(instance) { }
    end

    def define_trait(trait)
      @defined_traits << trait
    end

    def define_constructor(&block)
      @constructor = block
    end

    private

    def base_traits
      @base_traits.map { |name| trait_by_name(name) }
    end

    def additional_traits
      @additional_traits.map { |name| trait_by_name(name) }
    end

    def trait_by_name(name)
      trait_for(name) || FactoryGirl.trait_by_name(name)
    end

    def trait_for(name)
      defined_traits.detect {|trait| trait.name == name }
    end

    def initialize_copy(source)
      super
      @attributes = nil
      @compiled   = false
    end

    def aggregate_from_traits_and_self(method_name, &block)
      compile
      [].tap do |list|
        base_traits.each do |trait|
          list << trait.send(method_name)
        end

        list << instance_exec(&block)

        additional_traits.each do |trait|
          list << trait.send(method_name)
        end
      end.flatten.compact
    end
  end
end
