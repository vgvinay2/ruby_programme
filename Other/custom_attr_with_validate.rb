class Class

  def attr_validated(method_name, &block)
    p method_name
    p block
    self.class_eval("def #{method_name}; @#{method_name};end")
    self.class_eval("def #{method_name}=(val);
       #{raise ArgumentError, "'#{method_name}' is not a valid name!" if block.call(method_name)};
       @#{method_name}=val;
       end")
  end

end

class Person

  attr_validated :name
  attr_accessor :rejector

  def initialize(&rejector)
    p &rejector
    p self.rejector = rejector
  end

end

artist = Person.new do |name|
  name.length > 6
end

artist.name = 'The Artist Formerly Known As Prince'
artist.name = 'ruby'