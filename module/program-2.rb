module MyFirstModule

  def say_hello
    puts "Hello"
  end

end

class KlassMixModule

  include MyFirstModule

end

klass_mix_module = KlassMixModule.new
klass_mix_module.say_hello