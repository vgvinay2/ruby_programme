class Person
  @name = 'Ruby'

  def initialize
    p '1111111111111111111111'
    p @name
  end


  def self.initialize
    p '22222222222222222222222'
    p @name
  end

  def instance_method_1
    p @name
  end

  def self.klass_method_1
    p @name
  end

end


person = Person.new
person.instance_method_1
Person.klass_method_1


