# custom attr validate: For example attr_reader will give us setter methods and
# attr_writer create writer method and also attr_accessor is combination of attr_reader and attr_writer.

################################################################
####################### FIRST WAY ##############################
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


################################################################
###################### SECOND WAY ##############################

class Class
  def my_attr_accessor(*args)
    args.each do |arg|
      ## Getter methods
      define_method(arg) do
        instance_variable_get("@#{arg}")
      end
      ## Setter methods
      define_method("#{arg}=") do |value|
        instance_variable_set("@#{arg}", value)
      end
    end
  end
end

class Person
  my_attr_accessor :name, :address
end