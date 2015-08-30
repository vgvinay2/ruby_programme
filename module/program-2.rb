module MyFirstModule

  def say_hello
    p "Hello"
  end

end

class KlassMixModule

  include MyFirstModule

end

klass_mix_module = KlassMixModule.new
klass_mix_module.say_hello