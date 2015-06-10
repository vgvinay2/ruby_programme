class Class
  def attr_validated(*args, &validator)
    args.each do |name|
      define_method("#{name}=") do |value|
        if block_given?
          raise ArgumentError, "Value '#{value}' is invalid" unless validator.call(value)
        end

        instance_variable_set("@#{name}", value)
      end

      define_method(name) do
        instance_variable_get("@#{name}")
      end
    end
  end
end

class Dog
  attr_validated :num_legs do  |name|
    name <= 3
  end
end

dog = Dog.new
dog.num_legs = 3 # Works fine
p dog.num_legs
dog.num_legs = 27 # Raises ArgumentError
p dog.num_legs
