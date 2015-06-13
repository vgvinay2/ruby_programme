###########################################################
######################## NICE NAa BUT!!!  #################

module A
  def a
    puts "hello"
  end
end

class B
  include A
  extend A
end

B.a # => a
B.new.a # => a


############################################################
########## KEEP YOUR CODE ORGANISE WITH METHOD HOOK ########

module A
  # this is special method one of the methods hook in ruby.
  def self.included(base)
    base.extend(KlassMethods)
  end

  def instance_methods_1
    p 'hello instance_methods_1'
  end

  def instance_methods_2
    p 'hello instance_methods_2'
  end

  module KlassMethods
    def klass_methods_1
      p 'Hello!! klass_methods_1'
    end

    def klass_methods_2
      p 'Hello!! klass_methods_2'
    end
  end
end

class B
  include A
end

# B.instance_methods_1  # throw an error because it will treat as a class level methods
B.new.instance_methods_1
#  B.instance_methods_2  # throw an error because it will treat as a class level methods
B.new.instance_methods_2
B.klass_methods_1
B.klass_methods_2


################# Happy Hacking #################