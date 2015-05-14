###################################################
###################################################




#class Class
#  def attr_validated(*args, &validator)
#    args.each do |name|
#      byebug
#      define_method("#{name}=") do |value|
#        byebug
#        if block_given?
#          raise ArgumentError, "Value '#{value}' is invalid" unless validator.call(value)
#        end
#
#        instance_variable_set("@#{name}", value)
#      end
#
#      define_method(name) do
#        instance_variable_get("@#{name}")
#      end
#    end
#  end
#end
#
#class Person
#  attr_validated(:name, :occupation) { |name| name.length > 6 }
#end
#
#p1 = Person.new
#p1.name = 'John The Tester'
#p1.occupation = 'Software developer'
#p "#{p1.name} - #{p1.occupation}"
#
#p2 = Person.new
#p2.name = 'test'
#p2.occupation = 'Tester'
#p "#{p2.name} - #{p2.occupation}"


###################################################
###################################################



































