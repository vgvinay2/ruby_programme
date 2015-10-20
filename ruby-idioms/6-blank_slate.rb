# Ruby allows you to remove functionality from a class. This technique can be useful to ensure
# that your class doesn’t expose unwanted or unexpected features.

# demonstrate how to remove functionality
String.class_eval do
  undef_method :length
end
"test".length # => NoMethodError: undefined method `length' for "test":String

# create a blank slate class
class BlankSlate
  public_instance_methods.each do |method_name|
    undef_method(method_name) unless method_name =~ /^__|^(public_methods|method_missing|respond_to\?)$/
  end
end

# see what methods are now available
BlankSlate.new.public_methods # => ["public_methods", "__send__", "respond_to?", "__id__"]

