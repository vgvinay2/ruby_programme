# Defining methods in the Kernel module will make those methods available to all objects.

# add a kernel method to make it available to all objects
# this example also serves to illustrate that everything in Ruby is an object
module Kernel
  def say_hello
    puts "hello from #{self.class.name}"
  end
end

# usage
Class.say_hello # => hello from Class
Object.say_hello # => hello from Class
Object.new.say_hello # => hello from Object
1.say_hello # => hello from Fixnum
"".say_hello # => hello from String