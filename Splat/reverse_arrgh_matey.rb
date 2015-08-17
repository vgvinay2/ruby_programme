#Turn an array back into a list:

def ahoy(from, to)
  puts "#{to.capitalize}, #{from.capitalize} says ahoy!"
end

even_stephens = %w(steven stephen)
ahoy even_stephens # Array is interpreted as the first argument, and to_matey won’t be set. An ArgumentError is raised.

ahoy *even_stephens # Array is reversed to a list and all the arguments are filled out.
# => Stephen, Steven says ahoy!
