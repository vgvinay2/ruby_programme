# Nested module definitions
# When we define nested modules like this:

module A
 X = 1
 module B
   X = 2
   module C
     def self.print_const
       p X
     end
   end
 end
end

A::B::C.print_const  # => 2

# and when we do like this:

module A
  X = 1
  module B
    X = 2
  end
end

module A
  module B::C
    def self.print_const
      p X
    end
  end
end

A::B::C.print_const # => 1

# Even though both method calls to print_const looks same, and should return same result.
# But it returns different values of the constant.

# Reason: When you do this in first case:

module A
  X = 1
  module B
    X = 2
    module C
      p Module.nesting # => [A::B::C, A::B, A]
    end
  end
end

# and this gives:
[A::B::C, A::B, A]

# So ruby looks for the constant X in the order as A::B::C, A::B, A.
# And it loads wherever it finds first,
# and as in our scenario, under module B.

# And in second scenario:

 module A
   X = 1
   module B
     X = 2
   end
 end

module A
  module B::C
    p Module.nesting # => [A::B::C, A]
  end
end

# and this gives:   # =>1
[A::B::C, A]
# Here since the nesting of the module is different,
# it only search in A::B::C and A, skipping A::B. So it finds constant X under module A.

################# Happy Hacking #################

