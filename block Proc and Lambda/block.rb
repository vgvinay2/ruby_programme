#######################################################
#######################################################
#Example One: A Basic Code Block
#def simple
#  puts 'Here comes the code block!'
#  yield
#  puts 'There was the code block!'
#end
#simple { puts 'Hooray! The code block is here!' }
# => Here comes the code block!
# => Hooray! The code block is here!
# => There was the code block!


#######################################################
#######################################################
#Example Two: An Optional Code Block
#def optional
#  puts 'A code block isn\'t required, but it\'s nice.'
#  yield if block_given? #Kernel#block_given?
#  puts 'I\'m happy either way, really.'
#end

#######################################################
#######################################################
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

#######################################################
#######################################################
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

######################### Very Very Important ##############
############################################################
#x = 10
#defined? x
# => "local-variable"



