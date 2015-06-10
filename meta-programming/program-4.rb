class Foo

  attr_accessor(:first_name, :last_name)

  # att family methods
  # 1: attr_accessor
  # 2: attr_reader
  # 3: attr_writer

end

foo = Foo.new

p foo.first_name

foo.first_name = 'Vinay'

p foo.first_name
