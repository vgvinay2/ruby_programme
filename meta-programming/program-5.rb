p require 'active_support'

class Class


  def my_attr_accessor(*args)
    args.each do |arg|

      define_method(arg) do
        instance_variable_get("@#{arg}")
      end

      define_method("#{arg}=") do |val|
        instance_variable_set("@#{arg}", val)
      end
    end

  end
end



class User

  my_attr_accessor :first_name , :last_name, :age, :address

end

p User.instance_methods(false)

user = User.new
p user.first_name
user.first_name = "Vinay"
p user.first_name