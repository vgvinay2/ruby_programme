#class Array
#  def array_to_hash(&block)
#    self.inject({})do |result, hash|
#      result[block.call(hash)] = hash
#      #result[hash*2] = hash
#      result
#    end
#  end
#end
#arr = [1,2,3,4,5]
#result = arr.array_to_hash {|a| a*2 }
#p result
#p result['1'].eql?(1)
#p result['3'].eql?(3)
#p result['5'].eql?(5)


#$hash = []
#class CalculateFactorial
#
#  def factorial(n)
#    if (n < 0)
#      'Negative integers are not allowed'
#    else
#      if  $hash.inject({}) {|h, e| h.merge(e) }["#{n}"].nil?
#        f = get_factorial(n)
#        $hash << Hash["#{n}","#{f}"]
#        p "Factorial of #{n} := #{f}"
#      else
#        p "This is from Cache : #{$hash.inject({}) {|h, e| h.merge(e) }["#{n}"]}"
#      end
#    end
#  end
#
#  def get_factorial(n)
#    if (n == 0)
#      1
#    else
#      (n * get_factorial(n-1))
#    end
#  end
#end
#
#fact = CalculateFactorial.new
#fact.factorial(5)
#fact.factorial(6)
#fact.factorial(4)
#fact.factorial(100)
#fact.factorial(100)
#fact.factorial(7)
#fact.factorial(27)
#fact.factorial(27)
#p "Your Final hash is :#{$hash}"


# module is a way of grouping togather methods classes and constant
#1: module remove name space collision
#2: implement mixin

#
#class Class
#
#
#  def attr_validated(method_name)
#    self.class_eval("def #{method_name};@#{method_name};end")
#    self.class_eval("def #{method_name}=(val);@#{method_name}=val;end")
#  end
#
#end
#
#class Dog
#  attr_validated :num_legs
#
#end
#
#dog = Dog.new
#p dog.num_legs
#p dog.num_legs = 'vinay'


#module RubyMonk
#  module Parser
#    class CodeParser
#    end
#    class TextParser
#      def self.array_with_upcase
#        'Vinay'.upcase.split(' ')
#      end
#      array_with_upcase
#    end
#  end
#end

#class Class
#
#  def my_attr_accessor(*args)
#    args.each do |arg|
#      # getter
#      self.class_eval("def #{arg};@#{arg};end")
#      # setter
#      self.class_eval("def #{arg}=(val);@#{arg}=val;end")
#    end
#  end
#end
################################
################################
#class Array
#
#  def sum(*args)
#    args.reduce(:+)
#  end
#
#end
#
#a=Array.new
#a.sum(1,2,3,4,5,6)
#
#
#class CodebrahmaArray < Array
#  def sum(*args)
#    result = 0
#    args.each{ |a| result +=a  }
#    result
#  end
#
#end
#
#code  = CodebrahmaArray.new
#p code.sum(1,2,3,4)
#
#require 'benchmark'
#
#
#time_1 = Benchmark.measure do
#  CodebrahmaArray.new.sum(1,2,3,4)
#end
#p time_1.real
#
#time_2 = Benchmark.measure do
#  Array.new.sum(1,2,3,4,5,6)
#end
#p time_2.real