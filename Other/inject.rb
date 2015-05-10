#hash = [[:first_name, 'Shane'], [:last_name, 'Harvie']].inject([]) do |result, element|
#  p "===#{result}=========#{element}"
#  result << [element.first, element.last]
#  p "===#{result}=========#{element}"
#
#  result
#end
#p hash


#[1, 2, 3, 4].inject(5) do |result, element|
#  p "=======#{result}=======#{element}"
#  result + element
#end

#
#def incomplete_inject(enumerable, result)
#  p "======#{enumerable}==========#{result}"
#  enumerable.each do |item|
#    result = yield(result, item)
#  end
#  result
#end
#
#incomplete_inject([1,2,3,4], 0) {|result, item| result + item}


#def test_block(name, &block)
#  if block.call(name)
#    'validation pass'
#  else
#    'validation failed'
#  end
#end
#
#
#a =  test_block 'Vinay' do |a|
#  a.length > 7
#end
#p a
#
#
#def test_send_method(str)
#  p 'Hii'
#end
#send(:test_send_method, 'Vinay')



#class Injekt
#
#  def test
#    p 'hiiii'
#  end
#
#end
#
#Injekt.instance_eval do
#  def instances_methods
#    p 'instances_methods'
#  end
#end
#
#Injekt.new.test
#Injekt.instances_methods


#class Article
#
#  def initialize(name, age, address)
#    @name = name
#    @age = age
#    @address = address
#  end
#
#  def draft
#    @state = :draft
#  end
#
#  def publish
#    @state = :publish
#  end
#
#  def go_live
#    @state = :go_live
#  end
#
#end
#
#
#%w(draft publish go_live).each do |method|
#    define_method(method) do
#      @state = "#{method}"
#    end
#end
#
#class Array
#  def iterate
#    self.each_with_index do |n, i|
#      self[i] = yield(n)
#      p "======#{self}"
#    end
#  end
#end
#
#p array = [1, 2, 3, 4]
#
#it = array.iterate do |n|
#  n + 2
#end
#p it
#



#def relay(array, data_type)
#  result  = []
#
#  if data_type
#   array.each do |a|
#     p result
#     result << a.to_s
#     end
#  end
#  result
#end
#array = [1,2,34,5,5]
#res = relay(array, '')
#p "=====#{res}"

#class Array
#
#  def custom_collect!(&block)
#    self.each_with_index do |item, index|
#      self[index] = block.call(item)
#    end
#  end
#
#end
#
#arr = [1,2,3,4,5,6,7,]
#result = arr.custom_collect! { |a| a*7  }
#p result
#class MyTest
#
#  def test(str=nil)
#     "===Hello!!#{str}"
#  end
#
#end
#
#my_test  = MyTest.new
#a = my_test.method(:test)
#p a.call('Vinay')