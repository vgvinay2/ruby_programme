# First Way 

module AddAdditionalProperty

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def add_additional_property
      p 'ClassMethods::add_additional_property'
    end
  end

end

module ActiveRecord

  class Base
    def test
      p 'Base test Method'
    end
  end
end

ActiveRecord::Base.send(:include, AddAdditionalProperty)

ActiveRecord::Base.add_additional_property


# First Way 

module AddAdditionalProperty

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def add_additional_property
      p 'ClassMethods::add_additional_property'
    end
  end

end

module ActiveRecord

  class Base
    include AddAdditionalProperty
    def test
      p 'Base test Method'
    end
  end
end

ActiveRecord::Base.add_additional_property
