# More Ways to Skin a Singleton

##################################### First Way
# It shouldn’t be surprising that Ruby has several ways to create a singleton class for an object.
# Below you’ll find no less than three additional techniques.
#
# Methods From Modules
# When you use the extend method on an object to add methods to it from a module,
# those methods are placed into a singleton class.

module Foo
  def foo
    "Hello World!"
  end
end

foobar = []
foobar.extend(Foo)
foobar.singleton_methods # => ["foo"]


##################################### Second way
# Opening the Singleton Class Directly
# Here comes the funny syntax that everyone has been waiting for.
# The code below tends to confuse people when they see it for the first time but it’s pretty useful
# and fairly straightforward.

foobar = []
class << foobar
  def foo
    "Hello World!"
  end
end

foobar.singleton_methods # => ["foo"]
# Anytime you see a strange looking class definition where the class keyword is followed by two
# less than symbols, you can be sure that a singleton class is being opened for the object to the
# right of those symbols. In this example, the singleton class for the foobar object is being opened.
# As you probably already know, Ruby allows you to reopen a class at any point adding methods and
# doing anything you could have done in the original class definition. As with the rest of the
# examples in this section a foo method is being added to the foobar singleton class.

##################################### Using instance_eval
# Evaluating Code in the Context of an Object using instance_eval

# If you’ve made it this far it shouldn't be shocking to see a singleton class created when you define
# a method inside an instance_eval call.
foobar = []
foobar.instance_eval <<EOT
  def foo
    "Hello World!"
  end
EOT

foobar.singleton_methods # => ["foo"]