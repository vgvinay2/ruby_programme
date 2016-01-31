# The method_added and singleton_method_added methods
# If you define method_added as a class method in any class or module, it will be called
# when any instance method is defined. Here’s a basic example:
class C
  def self.method_added(m)
    Defines callback
    puts "Method #{m} was just defined."
  end
  def a_new_method
  end
end

# Triggers it by defining instance method The output from this program is Method a_new_method was just defined.
# The singleton_method_added callback does much the same thing, but for singleton methods. Perhaps surprisingly,
# it even triggers itself. If you run this snippet
class C
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
end
# => Method singleton_method_added was just defined.

#######################################################
#######################################################

# The callback will also be triggered by the definition of another singleton (class)
# method. Let’s expand the previous example to include such a definition:
class C
  def self.singleton_method_added(m)
    puts "Method #{m} was just defined."
  end
  def self.new_class_method
  end
end
The new output is
# => Method singleton_method_added was just defined.
# => Method new_class_method was just defined.