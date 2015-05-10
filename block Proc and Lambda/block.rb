#Example One: A Basic Code Block
#
#def simple
#  puts 'Here comes the code block!'
#  yield
#  puts 'There was the code block!'
#end
#simple { puts 'Hooray! The code block is here!' }
# => Here comes the code block!
# => Hooray! The code block is here!
# => There was the code block!


#Example Two: An Optional Code Block

#def optional
#  puts 'A code block isn\'t required, but it\'s nice.'
#  yield if block_given? #Kernel#block_given?
#  puts 'I\'m happy either way, really.'
#end

#Example Three: A Code Block With Parameters


#def parameters
#  puts 'Here, have two random numbers.'
#  yield rand(10), rand(50) if block_given?
#  puts 'Now say thank you!'
#end
#parameters { |x,y| puts "#{x}, #{y}" }
# =>Here, have two random numbers.
# =>                      8, 21
# =>Now say thank you!

#def relay(array, data_type)
#  if data_type
#    array.each_with_index do |item, index|
#       array[index] = item.to_s
#    end
#    array
#  end
#end
#
#p relay([1,2,3,4,5,6,7,], 's')


#class Spy
#  def method_missing(sym, *args, &block)
#    p "#{sym} was called with #{args} and #{block}"
#  end
#end
#
#Spy.new.camera { |a| a.length > 3}
#

#class Monk
#  ['life', 'the_universe', 'the_everything'].each do |action|
#    define_method("meditate_on_#{action}") do |argument|
#      "I know the meaning of #{argument.gsub('_', ' ')}"
#    end
#  end
#end
#
#m = Monk.new
#p m.meditate_on_life('life')
#p m.meditate_on_the_universe('the_universe')
#p m.meditate_on_the_everything('everything')




#def sum_of_cubes(a, b)
#  arr = []
#  a...b.times do |a|
#    arr << (a ** 3)
#  end
#  p arr
#  arr.reduce(:+).next
#
#end
#p sum_of_cubes(2,5)



#def find_frequency(sentence, word)
#   sentence.downcase.split.count(word.downcase)
#end
#
#a = find_frequency('Ruby is The best language in the World', 'the')
#p a



#def sort_string(string)
#   p string.split.sort { |w1,w2| w1.length <=> w2.length }.join(' ')
#end
#sort_string('Sort words in a sentence')




#def random_select(array, n)
#  result  = []
#  n.times do
#     result << array[rand(1..array.length-1)]
#  end
#  p result
#end
#
#random_select([1,2,3,4,5,6,7,8,86,6,6,6], 4)



#
#class MyArray
#  attr_reader :array
#
#  def initialize(array)
#    @array = array
#  end
#
#  def sum(initial_value = 0)
#    total = initial_value
#    @array.each do |n|
#      if block_given?
#        p total
#        total += yield(n)
#      else
#        total += n
#      end
#    end
#    total
#  end
#
#end

#my_array = MyArray.new([1, 2, 3])
#my_array.sum # gives 6
#my_array.sum(10) # gives 16
#my_array.sum(0) {|n| n ** 2 } # gives 14

#class MyArray
#
#  def initialize(arg)
#    @array = arg
#  end
#
#  def sum(initial_value = 0)
#    result = initial_value
#
#    @array.each do |a|
#      if block_given?
#        result  = result + yield(a)
#      else
#        result  = result + a
#      end
#    end
#    result
#  end
#
#end
#
#my_array = MyArray.new([1, 2, 3])
#p my_array.sum # gives 6
#p my_array.sum(10) # gives 16
#p my_array.sum(0) {|n| n ** 2 } # gives 14

def location_in_hierarchy(object, method)
  p klass = object.class
  ancestors = [klass]
  while not (superclass = klass.superclass).nil?
    p ancestors << superclass
    p klass = superclass
  end
  klass
  ancestors
  ancestors.reverse.find do |ancestor|
     ancestor.instance_methods.include?(method)
  end
end

p location_in_hierarchy('', :length)

######################### Very Very Important ###################
#################################################################
#x = 10
#defined? x
# => "local-variable"





















