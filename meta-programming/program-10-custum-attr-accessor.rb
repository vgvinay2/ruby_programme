module Accessor
def my_attr_accessor(name)
ivar_name = "@#{name}"
define_method(name) do
instance_variable_get(ivar_name)
end
define_method("#{name}=") do |value|
p "#{ivar_name} #{value}"
instance_variable_set(ivar_name,value)
end
end
end
class Test
extend Accessor
my_attr_accessor :val
end
test = Test.new
test.val = 66
test.val = 64
test.val = 61
test.val = 60
