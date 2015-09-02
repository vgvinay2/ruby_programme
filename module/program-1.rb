# modules encourage modular design
# Modules give you a way to collect and encapsulate behaviors
# program design that breaks large components into smaller ones and lets you mix and match object behaviors
# http://stackoverflow.com/questions/151505/difference-between-a-class-and-a-module

module MyFirstModule

end

p MyFirstModule.class

module MyFirstModule
  Const = 12

  def self.say_hii
    p "Hello"
  end

  def say_hello
    p "Hello"
  end

end

p MyFirstModule::Const
MyFirstModule.say_hii
