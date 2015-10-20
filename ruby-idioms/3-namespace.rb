# Use Ruby modules to create namespaces to avoid naming collisions.
# create a namespace to avoid naming collisions

module Example
  class String
    def length
      100
    end
  end
end

# usage
String.new.length # => 0
Example::String.new.length # => 100