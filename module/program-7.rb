module A

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
  extend A::KlassMethods
end


B.new.instance_methods_1
B.new.instance_methods_2
B.klass_methods_1
B.klass_methods_2

