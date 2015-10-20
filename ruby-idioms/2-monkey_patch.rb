# Monkey-patching is a somewhat negative term that refers to the ability to re-open a class and
# re-define its existing functionality. While some frown on this practice, it can be a powerful
# tool in your meta programming tool belt. Be sure to use caution when monkey-patching.

# define original class
class Example
  def say_hello
    puts "hello"
  end
end

# re-open the class and monkey-patch some of its existing functionality
class Example
  # re-define existing functionality
  def say_hello
    puts "hello from monkey-patch"
  end
end

# usage
Example.new.say_hello # => hello from monkey-patch
