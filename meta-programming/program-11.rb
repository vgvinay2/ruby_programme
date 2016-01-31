# Like method_missing there is one more method which belong to same family but for Constant
# Module#const_missing is another commonly used callback. As the name implies, this
# method is called whenever an unidentifiable constant is referred to inside a given
# module or class:
    class C
      def self.const_missing(const)
        puts "#{const} is undefined—setting it to 1."
        const_set(const,1)
      end
    end
puts C::A
puts C::A
# The output of this code is as follows:
# A is undefined—setting it to 1.
1
1
# Thanks to the callback, C::A is defined automatically when you use it without defining it.
# This is taken care of in such a way that puts can print the value of the constant; puts
# never has to know that the constant wasn’t defined in the first place. Then, on the second
# call to puts, the constant is already defined, and const_missing isn’t called.