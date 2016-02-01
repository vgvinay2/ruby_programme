# When you’re inside the singleton class definition body, you can define methods—and these methods
# will be singleton methods of the object whose singleton class you’re in.

# If Ruby only supports instances methods where do all those class methods you’ve been creating
# end up? Why, the singleton class of course.

class Foo
  def self.one () 1 end

  class << self
    def two () 2 end
  end

  def three () 3 end

  self.singleton_methods # => ["two", "one"]
  self.class             # => Class
  self                   # => Foo
end